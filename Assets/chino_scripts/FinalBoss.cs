using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FinalBoss : MonoBehaviour
{
    public int Vida = 3500;
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
        Vector2 posactual = new Vector2(transform.position.x, transform.position.y);
        if (!resetPos)
        {
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
                disparar = Random.Range(1.5f, 2.5f);
            }
            else if (fase2 && fase3)
            {
                disparar = Random.Range(0.5f, 1.0f);
            }
            else
            {
                disparar = Random.Range(3.0f, 3.5f);
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
            Morir();
        }
        else if (!fase2 && Vida < 2800)
        {
            Debug.Log("Entrando a Fase 2");
            fase2 = true;
            speed *= 1.5f;
            resetPos = true;
        }
        else if (!fase3 && Vida < 1100)
        {
            Debug.Log("Entrando a Fase 3");
            fase3 = true;
            speed *= 1.3f;
            resetPos = true;
        }
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
        gameObject.SetActive(false);
    }
}
