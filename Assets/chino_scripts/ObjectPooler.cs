using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectPooler : MonoBehaviour
{
    [System.Serializable]
    public class Pool
    {
        public string etiqueta;
        public GameObject prefab;
        public int tamanio;
    }

    #region Singleton
    //==============Singleton=========

    public static ObjectPooler instancia;

    private void Awake()
    {
        instancia = this;
    }

    //=================================
    #endregion

    public List<Pool> ConjuntoPools;
    public Dictionary<string, Queue<GameObject>> poolDiccionario;

    //Al principio
    void Start()
    {
        //Hace nuevo apartado en el diccionario
        poolDiccionario = new Dictionary<string, Queue<GameObject>>();

        //para cada pool en la lista de pools
        foreach (Pool pool in ConjuntoPools)
        {
            //crea un Queue (fila)
            Queue<GameObject> objectPool = new Queue<GameObject>();

            //itera n veces y spawnea y desactiva los objetos
            for (int i = 0; i < pool.tamanio; i++)
            {
                GameObject objetillo = Instantiate(pool.prefab);
                objetillo.SetActive(false);
                objectPool.Enqueue(objetillo);
            }
            //Añade este pool al diccionario
            poolDiccionario.Add(pool.etiqueta, objectPool);
        }
    }

    public GameObject SpawnFromPool(string tag, Vector3 posicion, Quaternion rotacion)
    {
        //Pa que no existan errores por pasar tag invalido
        if (!poolDiccionario.ContainsKey(tag))
        {
            Debug.LogWarning("El Pool con tag " + tag + " no existe");
            return null;
        }
        //=========================================================\\

        GameObject ObjetoaSpawnear = poolDiccionario[tag].Dequeue();

        ObjetoaSpawnear.SetActive(true);
        ObjetoaSpawnear.transform.position = posicion;
        ObjetoaSpawnear.transform.rotation = rotacion;
        if (tag == "Enemigo1")
        {
            ObjetoaSpawnear.GetComponent<Enemigos>().InitializeNoDasher();
        }
        if (tag == "Explosiones")
        {
            ObjetoaSpawnear.GetComponent<ParticleSystem>().Play();
        }
        poolDiccionario[tag].Enqueue(ObjetoaSpawnear);

        return ObjetoaSpawnear;
    }

    public GameObject SpawnBulletFromPool(bool TipoBala, Vector3 posicion, Quaternion rotacion)
    {

        GameObject ObjetoaSpawnear;
        string bala;
        if (TipoBala)
        {
            bala = "BalasMalas";
             ObjetoaSpawnear = poolDiccionario[bala].Dequeue();
        }
        else
        {
            bala = "BalasBuenas";
             ObjetoaSpawnear = poolDiccionario[bala].Dequeue();
        }
        

        ObjetoaSpawnear.SetActive(true);
        ObjetoaSpawnear.transform.position = posicion;
        ObjetoaSpawnear.transform.rotation = rotacion;

        Bullet mibull = ObjetoaSpawnear.GetComponent<Bullet>();
        mibull.initializeBullet();

        poolDiccionario[bala].Enqueue(ObjetoaSpawnear);
       
        return ObjetoaSpawnear;
    }

    public GameObject SpawnBulletFromPool(bool TipoBala, Vector3 posicion, Quaternion rotacion,Vector2 direccion)
    {

        GameObject ObjetoaSpawnear;
        string bala;
        if (TipoBala)
        {
            bala = "BalasMalas";
            ObjetoaSpawnear = poolDiccionario[bala].Dequeue();
        }
        else
        {
            bala = "BalasBuenas";
            ObjetoaSpawnear = poolDiccionario[bala].Dequeue();
        }


        ObjetoaSpawnear.SetActive(true);
        ObjetoaSpawnear.transform.position = posicion;
        ObjetoaSpawnear.transform.rotation = rotacion;

        Bullet mibull = ObjetoaSpawnear.GetComponent<Bullet>();
        mibull.Direccion = direccion;
        mibull.initializeBullet();

        poolDiccionario[bala].Enqueue(ObjetoaSpawnear);

        return ObjetoaSpawnear;
    }

    public GameObject SpawnParticle(bool enemiga, Vector3 posicion, Quaternion rotacion)
    {
      
        GameObject ObjetoaSpawnear;
        string particula;
        if (enemiga)
        {
            particula = "PartiBads";
            ObjetoaSpawnear = poolDiccionario[particula].Dequeue();
        }
        else
        {
            particula = "PartiCools";
            ObjetoaSpawnear = poolDiccionario[particula].Dequeue();
        }


        ObjetoaSpawnear.SetActive(true);
        ObjetoaSpawnear.transform.position = posicion;
        ObjetoaSpawnear.transform.rotation = rotacion;

        ObjetoaSpawnear.GetComponent<ParticleSystem>().Play();
  
        poolDiccionario[particula].Enqueue(ObjetoaSpawnear);

        return ObjetoaSpawnear;
    }

    public GameObject SpawnBoom(Vector3 posicion)
    {

        GameObject ObjetoaSpawnear;
        
        ObjetoaSpawnear = poolDiccionario["PartiBoom"].Dequeue();
        

        ObjetoaSpawnear.SetActive(true);
        ObjetoaSpawnear.transform.position = posicion;
        ObjetoaSpawnear.transform.rotation = Quaternion.identity;

        ParticleSystem[] booms =  ObjetoaSpawnear.GetComponentsInChildren<ParticleSystem>();
        booms[0].Play(); booms[1].Play();

        poolDiccionario["PartiBoom"].Enqueue(ObjetoaSpawnear);

        return ObjetoaSpawnear;
    }
}

