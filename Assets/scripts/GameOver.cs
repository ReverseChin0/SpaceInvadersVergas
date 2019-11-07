using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameOver : MonoBehaviour {


    public Text finalScore;
    public GameObject saveButton;

    private Score score;
    
    public void True() {

        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;


        GameObject.Find("CanvasPause").GetComponent<PauseMenu>().canPause = false;

        Time.timeScale = 0.0f;

        score = GameObject.Find("HUD Canvas").GetComponent<Score>();

        finalScore.text = "SCORE \n" + score.score.ToString() + "\n IN " + score.time.ToString("F0") + " SECONDS";

        if(score.score < score.hiscore)
        {
            saveButton.SetActive(false);
        }

        gameObject.SetActive(true);

    }

    public void Retry() {

        GameObject.Find("CanvasPause").gameObject.SetActive(false);
        Time.timeScale = 1.0f;
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);

    }

    public void UpdateHiscores() {

        PlayerPrefs.SetInt("MyScore", score.score);

        SceneManager.LoadScene("MenuPrincipal");

    }

}
