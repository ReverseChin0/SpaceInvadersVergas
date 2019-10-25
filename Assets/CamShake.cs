using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamShake : MonoBehaviour
{
   Animator cam;

   public static CamShake UniCam;

    private void Awake()
    {
        UniCam = this;
        cam=GetComponent<Animator>();
    }

    public void Shake()
    {
        int rand = Random.Range(0, 3);
       
        switch (rand)
        {
            case 0:  cam.SetTrigger("shake1"); break;
            case 1:  cam.SetTrigger("shake2"); break;
            case 2:  cam.SetTrigger("shake3"); break;
            default: cam.SetTrigger("shake1"); break;
        }
        
    }
}
