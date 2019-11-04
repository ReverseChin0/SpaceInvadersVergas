using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public Vector2 Direccion;
    public float Fuerza;
    Rigidbody myRig;
    safespots mysafespotsjaja;
    ObjectPooler pool;
    public bool Enemiga;

    private void Awake()
    {
        pool = FindObjectOfType<ObjectPooler>();

        myRig = GetComponent<Rigidbody>();
        mysafespotsjaja = FindObjectOfType<safespots>();
    }

    public void initializeBullet()
    {
        //Debug.Log(myRig + " , " + Direccion + " , " + Fuerza);
        myRig.velocity = Vector3.zero;
        myRig.AddForce(Direccion * Fuerza * 10);
    }

    private void OnCollisionEnter(Collision collision)
    {
        Debug.Log(collision.gameObject.name);

        Collider coli = collision.collider;
        if (coli.CompareTag("Enemie") && !Enemiga)
        {
            coli.GetComponent<Enemigos>().TakeDMG(35);
            int probabilidad = Random.Range(0, 100);

            if(probabilidad < 30)
            {
                mysafespotsjaja.PlaceSafespot();
            }
        }
        else if (coli.CompareTag("FinalBoss") && !Enemiga)
        {
            coli.GetComponent<FinalBoss>().TakeDmg(50);
        }
        else if(Enemiga && coli.GetComponent<safespot_health>())
        {
            coli.GetComponent<safespot_health>().TakeDmg(3);
        }
        else if(coli.CompareTag("Player") && Enemiga)
        {
            coli.GetComponent<CharacterHealth>().Modify(-1);
        }

        int numero = 1;
        if (!Enemiga)
            numero *= -1;

         pool.SpawnParticle(Enemiga, transform.position, Quaternion.Euler(90 * numero, 0, 0));

         gameObject.SetActive(false);
    }
}
