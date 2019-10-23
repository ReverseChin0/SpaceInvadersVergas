using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemigos : MonoBehaviour
{
    public Transform Player, EndCannon;
    ObjectPooler Pool;

    public bool DasherGuy = false;

    public float velocidaddemovimiento = 3f, rango = 10.0f, velocidadhaciabajo = 0.0f, tiempodedisparo = 1.0f, bottomLimit = -5f, limitesLaterales = 8.0f;
    

    bool right = true, esperar = false;

    Rigidbody rbody;
    Vector2 direccion, posactual;

    void Start()
    {
        rbody = GetComponent<Rigidbody>();
        posactual = new Vector2(transform.position.x, transform.position.y);

        Pool = FindObjectOfType<ObjectPooler>();

        if (DasherGuy)
        {
            if(Player.position.x >= transform.position.x)
            {
                right = false;
            }
            else
            {
                right = true;
            }
        }

    }

    void Update()
    {
        
    }

    private void FixedUpdate()
    {
        posactual = new Vector2(transform.position.x, transform.position.y);

        if (DasherGuy)
        {
            MovimientoDasher();
        }
        else
        {
            MovimientoNormal();
        }
    }

    public void MovimientoNormal()
    {
        if (posactual.y > bottomLimit)
        {
            direccion = new Vector2(Mathf.Sin(Time.time * rango) * velocidaddemovimiento, -velocidadhaciabajo);
        }
        else
        {
            gameObject.SetActive(false);
        }
             
        rbody.MovePosition(posactual + direccion * Time.deltaTime);

        if (!esperar)
        {
            esperar = true;
            StartCoroutine(WaitToMove(Random.Range(1.5f, 5f)));
        }
    }

    public void MovimientoDasher()
    {
        if (!esperar)
        {
            if (right)
            {
                direccion = new Vector2(velocidaddemovimiento, 0);
                if(posactual.x > limitesLaterales)
                {
                    right = false;
                }
            }
            else
            {
                direccion = new Vector2(-velocidaddemovimiento, 0);
                if (posactual.x < -limitesLaterales)
                {
                    right = true;
                }
            }

            rbody.MovePosition(posactual + direccion * Time.deltaTime);

            float distancia = posactual.x - Player.position.x;
            distancia = Mathf.Abs(distancia);
            if (distancia < 1)
            {
                esperar = true;
                StartCoroutine(WaitToMove(1.5f));
            };
        }
    }

    IEnumerator WaitToMove(float time)
    {
        yield return new WaitForSeconds(0.01f);
        Pool.SpawnBulletFromPool(true, EndCannon.position, Quaternion.identity);
        yield return new WaitForSeconds(time);
        //right = !right;
        esperar = false;
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.CompareTag("Player"))
        {
            gameObject.SetActive(false);
        }
    }
}
