﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public Vector2 Direccion;
    public float Fuerza;
    Rigidbody myRig;

    public bool Enemiga;

    private void Awake()
    {
        myRig = GetComponent<Rigidbody>();
    }

    public void initializeBullet()
    {
        //Debug.Log(myRig + " , " + Direccion + " , " + Fuerza);
        myRig.velocity = Vector3.zero;
        myRig.AddForce(Direccion * Fuerza * 10);
    }

    private void OnCollisionEnter(Collision collision)
    {
        print(collision.gameObject.tag);
        gameObject.SetActive(false);
    }
}
