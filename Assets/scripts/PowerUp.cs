using System.Collections;
using UnityEngine;

public class PowerUp : MonoBehaviour {

    public int typeOfPowerUp;

    private CharacterHealth characterHealth;

    private void Start() {

        characterHealth = GameObject.FindGameObjectWithTag("Player").GetComponent<CharacterHealth>();
            
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
                    break;

                default:
                    break;
            }

            gameObject.SetActive(false);


        }

    }

    private void AttemptToPlace() {

        int value = Random.Range(0, 10);

        if(value < 3) {

            gameObject.transform.position = new Vector3(Random.Range(-9, 9), 11, 0);
            gameObject.GetComponent<Rigidbody>().velocity = Vector3.zero;

            gameObject.SetActive(true);

            StartCoroutine(Deactivate());


        }

    }

    

    private IEnumerator Deactivate() {

        yield return new WaitForSeconds(6);
        gameObject.SetActive(false);


    }

}
