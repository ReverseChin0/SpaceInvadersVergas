using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class safespots : MonoBehaviour {

    public GameObject[] _safespots;

    void Start() {

        InvokeRepeating("PlaceSafespot", 5.0f, Random.Range(5.0f, 15.0f));
        
    }

    private void PlaceSafespot() {

        int index = Random.Range(0, _safespots.Length);

        if (_safespots[index].activeSelf) {

            return;
        }

        _safespots[index].GetComponent<safespot_health>().renew();
        _safespots[index].SetActive(true);

    }
}
