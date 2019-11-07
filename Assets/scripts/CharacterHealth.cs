using System.Collections;
using UnityEngine;

public class CharacterHealth : MonoBehaviour {

    public GameObject[] healthbar;
    public GameObject shieldIcon;

    private int health;
    private int maxHealth;
    private int index = 0;

    public GameOver gameOver;

    public bool tempShield = false;
    public int counter = 0;

    void Start() {

        health = healthbar.Length;
        maxHealth = health;
        
    }

    private void OnCollisionEnter(Collision collision) {

        if (collision.transform.GetComponent<Bullet>()) {

            if (tempShield) {

                counter++;

                if (counter % 2 == 0) {

                    Modify(-1);

                }

            } else {

                Modify(-1);

            }
        }
    }

    public IEnumerator ActivateTempShield(int time) {

        tempShield = true;
        shieldIcon.SetActive(true);
        yield return new WaitForSeconds(time);

        tempShield = false;
        shieldIcon.SetActive(false);

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
                if(i < healthbar.Length) {

                        healthbar[i].SetActive(false);
                        health--;

                }

            }

            index += Mathf.Abs(amount);
            if (index > healthbar.Length) index = healthbar.Length;


            
        }

        if (health <= 0) {

            
            gameOver.True();

        }

    }

}
