using UnityEngine;
using UnityEngine.UI;

public class Score : MonoBehaviour
{
    public Text timeText;
    public Text scoreText;

    public float time;
    public int hiscore = 10;
    public int score = 0;

    public GameObject trophy;

    void Start() {

        hiscore = PlayerPrefs.GetInt("MyScore", 0);

        scoreText.text = score.ToString() + " / " + hiscore;

    }

    void Update() {

        time += Time.deltaTime;
        
        timeText.text = time.ToString("F0");

        if (Input.GetKeyDown(KeyCode.Space)) { //test add score

            Add(1);

        }

    }

    public void Add(int amount) {

        score += amount;
        scoreText.text = score.ToString() + " / " + hiscore;

        if (score > hiscore && !trophy.activeInHierarchy)
        {

            trophy.SetActive(true);
            Debug.Log("Trophy!!!");

        }

    }
}
