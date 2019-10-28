using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ManagerEnemigos : MonoBehaviour
{
    public int type1, type2;
    public static ManagerEnemigos instancia;
    [HideInInspector]
    public int currentEnemies;
    public GameObject finalBoss;
    ObjectPooler Pooler;
    SceneLoader MyLoader;
    public Vector3 SpawnPos;
    bool finalfight = false;

    public float TiempoDechecado = 5.0f;
    void Start()
    {
        instancia = this;
        MyLoader = SceneLoader.instancia;
        Pooler = FindObjectOfType<ObjectPooler>();

        StartCoroutine(CheckAndInstance());
    }


    public void Fin()
    {
        MyLoader = SceneLoader.instancia;
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        MyLoader.FadeOut("MenuPrincipal");
    }

    IEnumerator CheckAndInstance()
    {
        if(type1 > 0 || type2 > 0)
        {
            yield return new WaitForSeconds(TiempoDechecado);
            int chance = Random.Range(0, 100);

            if (chance > 40 && type1 > 0)
            {
                Pooler.SpawnFromPool("Enemigo1", SpawnPos + new Vector3(0, Random.Range(0, 3.0f)), Quaternion.identity);
                type1--;
               // Debug.Log("Quedan " + type1 + " simples");
            }
            else if(type2>0)
            {
                Pooler.SpawnFromPool("Enemigo2", SpawnPos - new Vector3(0,Random.Range(-2.0f,2.0f)), Quaternion.identity);
                type2--;
                //Debug.Log("Quedan " + type2 + " complejos");
            }
            else if (type1 > 0)
            {
                Pooler.SpawnFromPool("Enemigo1", SpawnPos + new Vector3(0, Random.Range(0, 3.0f)), Quaternion.identity);
                type1--;
                //Debug.Log("Quedan " + type1 + " simples");
            }
           
            StartCoroutine(CheckAndInstance());
        }
        else if (!finalfight)
        {
            finalfight = true;
            finalBoss.SetActive(true);
        }
       
    }
}
