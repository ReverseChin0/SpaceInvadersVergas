using UnityEngine;

public class CharacterHealth : MonoBehaviour {

    public GameObject[] healthbar;

    private int health;
    private int maxHealth;
    private int index = 0;

    public GameOver gameOver;

    void Start() {

        health = healthbar.Length;
        maxHealth = health;
        
    }

    private void Update() {

        //testing

        if (Input.GetKeyDown(KeyCode.D)) { //daño

            Modify(-1);

        }

        if (Input.GetKeyDown(KeyCode.U)) { //life up (as powerup)

            Modify(2);

        }

    }

    public void Modify(int amount) {

        if (amount > 0 && health < maxHealth) { //life up

            index -= amount;
            if (index < 0) index = 0;


            for (int i = index; i < Mathf.Abs(amount) + index; i++)
            {
                if (i < healthbar.Length)
                {
                    healthbar[i].SetActive(true);

                    if(health < maxHealth)
                    health++;

                }

            }

        }

        if (amount < 0 && health > 0) { //damage

            for (int i = index; i < Mathf.Abs(amount) + index; i++)
            {
                if(i < healthbar.Length)
                {
                    healthbar[i].SetActive(false);
                    health--;

                }

            }

            index += Mathf.Abs(amount);
            if (index > healthbar.Length) index = healthbar.Length;


            
        }

        Debug.Log("Remaining health: " + health);

        if (health <= 0) {

            
            gameOver.True();

        }

    }

}
