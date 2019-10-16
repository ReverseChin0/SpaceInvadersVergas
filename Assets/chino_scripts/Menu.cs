﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Menu : MonoBehaviour
{
    Animator myyanim;

    [SerializeField]
    private Transform CameraTrans;

   
    public List<GameObject> positions = new List<GameObject>(); //Posiciones de mierda

    int indice = 0; //indice de la posicion de mierda
    bool reachedpos = false; //ya llegue a la pos de mierda?

    [Range(0.1f, 5.0f)]
    public float tiempMovim; //En cuanto time quiero que la camara de mierda se mueva de A a B amiguito
    float factMovim;
    float valorT = 0.0f;

    void Start()
    {
        factMovim = 1.0f / tiempMovim;//fraccionamos el camino
    }
    
    void Update()
    {
        if (!reachedpos)
        {
            MoveCamToPos();
        }
    }

    void MoveCamToPos()
    {
        if (valorT < 1.0f) //si no es el 100%
        {
            valorT += factMovim * Time.deltaTime;//Avanzamos valor en T
            if (valorT >= 1.0f)//Seguridad de no ir mas haya del B
            {
                valorT = 1.0f;
            }
            //Actualizamos posicion
            CameraTrans.position = Vector3.Lerp(CameraTrans.position, positions[indice].transform.position, valorT);
            CameraTrans.rotation = Quaternion.Lerp(CameraTrans.rotation, positions[indice].transform.rotation, valorT);
        }
        else
        {
            reachedpos = true;
        }
       
    }

    public void ChangePosition(int _index)//cambiar posicion a la que ira la camara de mierda
    {
        reachedpos = false;
        valorT = 0.0f;
        indice = _index;
    }

    public void QuitGame()//Para salir del puto juego de mierda
    {
        Application.Quit();
    }

    public void ToggleGameObject(GameObject mierda)//Le permite al boton activar/desactivar cualquier mierda
    {
        mierda.SetActive(!mierda.activeSelf);
    }
}