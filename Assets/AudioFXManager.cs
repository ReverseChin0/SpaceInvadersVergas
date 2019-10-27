using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioFXManager : MonoBehaviour
{
    public AudioSource miaudi, Fx;
    public AudioClip Shoot, dmg, explode;

    public static AudioFXManager AudioFXMan;

    private void Start()
    {
        if (AudioFXMan == null)
        {
            AudioFXMan = this;
        }
        else
        {
            Destroy(gameObject);
        }
    }
    public void ShootFx()
    {
        Fx.PlayOneShot(Shoot);
    }

    public void DMGFX()
    {
        Fx.PlayOneShot(dmg);
    }

    public void ExplotarFx()
    {
        Fx.PlayOneShot(explode);
    }
}
