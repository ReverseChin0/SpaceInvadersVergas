using UnityEngine;

public class character_movement : MonoBehaviour {

    ObjectPooler Pool;
    public Transform shootingPoint;

    private Rigidbody rb;

    void Start() {

        Pool = FindObjectOfType<ObjectPooler>();
        rb = GetComponent<Rigidbody>();
    }

    void Update() {

        if (Input.GetKeyDown(KeyCode.Space)) {

            Pool.SpawnBulletFromPool(false, shootingPoint.position, Quaternion.identity);
            AudioFXManager.AudioFXMan.ShootFx();

        }

    }

    private void FixedUpdate() {

        float x_axis_movement = Input.GetAxis("Horizontal") * 8;
        x_axis_movement *= Time.deltaTime;

        rb.velocity = new Vector3(x_axis_movement, 0, 0) * 100;

        transform.position = new Vector3(Mathf.Clamp(transform.position.x, -9.0f, 9.0f), transform.position.y, 0);

    }

}
