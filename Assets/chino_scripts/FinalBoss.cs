using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FinalBoss : MonoBehaviour
{
    public int Vida = 3000;
    int Vidainicial;
    public float speed = 1.1f;
    public Transform Player, EndCannon;
    Rigidbody rbody;
    ObjectPooler Pool;
    public Vector2 inicialPose;

    bool resetPos = false, fase2 = false, fase3 = false, esperarBalazos;
    void Start()
    {
        Pool = FindObjectOfType<ObjectPooler>();
        rbody = GetComponent<Rigidbody>();
        Vidainicial = Vida;
    }

    void Update()
    {
        Shoot();
    }

    private void FixedUpdate()
    {
        Mover();
    }

    void Mover()
    {
        Vector2 posactual = new Vector2(0, transform.position.y);
        if (!resetPos)
        {
            //Debug.Log(posactual + Vector2.down * Time.deltaTime * speed);
            rbody.MovePosition(posactual + Vector2.down * Time.deltaTime * speed);
        }
        else
        {
            rbody.MovePosition(posactual + Vector2.up * Time.deltaTime * speed * 4);
            if(transform.position.y > inicialPose.y)
            {
                resetPos = false;
            }
        }
    }

    void Shoot()
    {
        if (!esperarBalazos)
        {
            float disparar=0.0f;
            if (fase2 && !fase3)
            {
                disparar = Random.Range(1.0f, 2.0f);
            }
            else if (fase2 && fase3)
            {
                disparar = Random.Range(0.2f, 0.8f);
            }
            else
            {
                disparar = Random.Range(2.0f, 3.5f);
            }
            esperarBalazos = true;
            StartCoroutine(WaitToShoot(disparar));
        }
    }

    public void TakeDmg(int dmg)
    {
        Vida -= dmg;
        if (Vida <= 0)
        {
            CamShake.UniCam.Shake();
            Morir();
            Pool.SpawnBoom(transform.position);
        }
        else if (!fase2 && Vida < Vidainicial * 0.75f)
        {
            Debug.Log("Entrando a Fase 2");
            CamShake.UniCam.Shake();
            Pool.SpawnBoom(transform.position);
            fase2 = true;
            speed *= 1.5f;
            resetPos = true;
        }
        else if (!fase3 && Vida < Vidainicial * 0.3f)
        {
            Debug.Log("Entrando a Fase 3");
            CamShake.UniCam.Shake();
            Pool.SpawnBoom(transform.position);
            fase3 = true;
            speed *= 1.3f;
            resetPos = true;
        }

        rbody.velocity = Vector3.zero;
    }

    IEnumerator WaitToShoot(float time)
    {
        yield return new WaitForSeconds(0.01f);
        Pool.SpawnBulletFromPool(true, new Vector3(Player.position.x,EndCannon.position.y,EndCannon.position.z), Quaternion.identity);
        yield return new WaitForSeconds(time);
        esperarBalazos = false;
    }


    void Morir()
    {
        ManagerEnemigos.instancia.Fin();
        Debug.Log("MeMori");
        gameObject.SetActive(false);
    }
}
