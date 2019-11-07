using System.Collections;
using UnityEngine;

public class PowerUp : MonoBehaviour {

    public int typeOfPowerUp;

    private CharacterHealth characterHealth;
    public GameObject tip0, tip1;
    private void Start() {

        characterHealth = GameObject.FindGameObjectWithTag("Player").GetComponent<CharacterHealth>();
        tip0.SetActive(false);
        tip1.SetActive(false);
    }

    private void OnTriggerEnter(Collider other) {

        if(other.tag == "Player") {

            switch (typeOfPowerUp) {

                case 0:
                    //mitad de daño por 30 segundos
                    characterHealth.StartCoroutine(characterHealth.ActivateTempShield(30));
                   
                    break;

                case 1:

                    //disparo doble por 15 segundos
                    break;

                case 2:
                    characterHealth.Modify(1);
                    tip1.SetActive(true);
                    break;

                default:
                    break;
            }

            gameObject.SetActive(false);
            tip0.SetActive(false);
            tip1.SetActive(false);

        }

    }

    private void AttemptToPlace() {

        int value = Random.Range(0, 10);

        if(value < 3) {

            gameObject.transform.position = new Vector3(Random.Range(-9, 9), 11, 0);
            gameObject.GetComponent<Rigidbody>().velocity = Vector3.zero;

            gameObject.SetActive(true);
            if (typeOfPowerUp == 0)
            {
                tip0.SetActive(true);
            }
            else
            {
                tip1.SetActive(true);
            }
            
            StartCoroutine(Deactivate());


        }

    }

    

    private IEnumerator Deactivate() {

        yield return new WaitForSeconds(6);
        gameObject.SetActive(false);


    }

}
