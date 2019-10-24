using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public Vector2 Direccion;
    public float Fuerza;
    Rigidbody myRig;
    safespots mysafespotsjaja;
    public bool Enemiga;

    private void Awake()
    {
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
            gameObject.SetActive(false);
    }
}
