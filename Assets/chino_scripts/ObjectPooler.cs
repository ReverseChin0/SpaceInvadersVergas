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
        if (tag == "Particulas")
        {
            ObjetoaSpawnear.GetComponent<ParticleSystem>().Play();
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
        //Pa que no existan errores por pasar tag invalido
        /* if (!poolDiccionario.ContainsKey(tagbullet))
         {
             Debug.LogWarning("El Pool con tag " + tagbullet + " no existe");
             return null;
         }*/
        GameObject ObjetoaSpawnear;
        if (TipoBala)
        {
             ObjetoaSpawnear = poolDiccionario["BalasMalas"].Dequeue();
        }
        else
        {
             ObjetoaSpawnear = poolDiccionario["BalasMalas"].Dequeue();
        }
        

        ObjetoaSpawnear.SetActive(true);
        ObjetoaSpawnear.transform.position = posicion;
        ObjetoaSpawnear.transform.rotation = rotacion;

        Bullet mibull = ObjetoaSpawnear.GetComponent<Bullet>();
        mibull.initializeBullet();
      /*  mibull.DireccDisparo = direccion;
        mibull.activated = true;*/


        poolDiccionario["BalasMalas"].Enqueue(ObjetoaSpawnear);
       
        return ObjetoaSpawnear;
    }
}

