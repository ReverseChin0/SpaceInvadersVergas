using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseMenu : MonoBehaviour
{
    public SceneLoader miLoader;
    public GameObject pauseMenuM;
    public bool canPause = true;
    
    public void backToMain(string _scName)
    {
        SearchLoader();
        MyPause();
        miLoader.FadeOut(_scName);
        canPause = false;
        Cursor.visible = true;
    }

    public void SearchLoader()
    {
        miLoader = SceneLoader.instancia;
    }

    public void MyPause()
    {
        TimetogglePause();
        Cursor.visible = !pauseMenuM.activeSelf;
        Cursor.lockState = CursorLockMode.None;
        pauseMenuM.SetActive(!pauseMenuM.activeSelf);

    }

    public void TimetogglePause()
    {
        if(Time.timeScale == 0)
        {
            Time.timeScale = 1;
        }
        else
        {
            Time.timeScale = 0;
        }
    }

    private void Update()
    {
        if(canPause && Input.GetKeyDown(KeyCode.P))
        {
               MyPause();
        }
    }
}
