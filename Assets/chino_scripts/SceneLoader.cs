using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class SceneLoader : MonoBehaviour
{
    public Animator myyanim;

    public static SceneLoader instancia;
    string namescene = "";
    void Start()
    {
        if(instancia != null)
        {
            Destroy(gameObject);
        }
        else
        {
           instancia = this;
        }
        DontDestroyOnLoad(gameObject);

    }

    void Update()
    {
        
    }

    public void FadeOut(string scene)
    {
        myyanim.SetBool("FadeOut", true);
        namescene = scene;
    }

    public void FadeIn()
    {
        myyanim.SetBool("FadeOut", false);
    }

    public void ScLoLoadScene()
    {
        Debug.Log(namescene);
        SceneManager.LoadScene(namescene);
        FadeIn();
    }
}
