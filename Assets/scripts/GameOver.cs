using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameOver : MonoBehaviour {


    public Text finalScore;
    private Score score;
    
    public void True() {

        Time.timeScale = 0.0f;

        score = GameObject.Find("HUD Canvas").GetComponent<Score>();

        finalScore.text = "SCORE \n" + score.score.ToString() + "\n IN " + score.time.ToString("F0") + " SECONDS";

        gameObject.SetActive(true);

    }

}
