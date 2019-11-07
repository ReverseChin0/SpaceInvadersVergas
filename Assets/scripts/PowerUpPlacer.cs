using UnityEngine;

public class PowerUpPlacer : MonoBehaviour {

    public PowerUp[] powerUp;

    void Start() {

        foreach (PowerUp item in powerUp) {

            item.InvokeRepeating("AttemptToPlace", 7, 7);

        }
        
    }

}
