﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class safespot_health : MonoBehaviour {

    public int max_health = 10;
    public int health;

    void Start() {

        renew();
        
    }

    public void renew()
    {
        health = max_health;
    }

    public void TakeDmg(int dmg)
    {
        health -= dmg;
        if(health <= 0)
        {
            gameObject.SetActive(false);
        }
    }

}
