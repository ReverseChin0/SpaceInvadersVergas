using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemigos : MonoBehaviour
{
    public Transform Player;

    public bool DasherGuy = false;
    public float bottomLimit = -5f;

    public float velocidaddemovimiento = 3f, rango = 10.0f, velocidadhaciabajo = 0.0f, tiempodedisparo = 1.0f;

    bool right = true;

    Rigidbody rbody;
    Vector2 direccion, posactual;

    void Start()
    {
        rbody = GetComponent<Rigidbody>();
        posactual = new Vector2(transform.position.x, transform.position.y);

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
    }

    public void MovimientoDasher()
    {
        if(right)
    }

    IEnumerator WaitToMove(float time)
    {
        yield return new WaitForSeconds(time);

    }
}
