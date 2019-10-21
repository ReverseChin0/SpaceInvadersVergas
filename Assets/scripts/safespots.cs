using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class safespots : MonoBehaviour
{

    public GameObject[] _safespots;

    void Start()
    {



    }

    private void Update()
    {

        if (Input.GetKeyDown(KeyCode.Space))
        {

            PlaceSafespot();

        }
    }

    private void PlaceSafespot()
    {

        int index = Random.Range(0, _safespots.Length);
        int counter = 0;

        if (_safespots[index].activeSelf) return; //si ya se encuentra activo

        _safespots[index].transform.position = new Vector3(Random.Range(-40.0f, 40.0f), 0, 5);

        for (int i = 0; i < _safespots.Length; i++)
        {

            if (index != i)
            {

                //si se encuentra muy cerca de  un safespot activo
                if (_safespots[i].activeSelf)
                {

                    if (Vector3.Distance(_safespots[index].GetComponent<Collider>().bounds.center, _safespots[i].transform.GetComponent<Collider>().bounds.center) < 10.0f)
                    {

                        counter++;

                    }
                }

            }

        }

        if (counter < 1)
        { //si no se encuentra muy cerca de un safespot activo

            _safespots[index].GetComponent<safespot_health>().renew();
            _safespots[index].SetActive(true);

        }

    }

}
