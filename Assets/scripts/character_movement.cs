using UnityEngine;

public class character_movement : MonoBehaviour {

    public float speed;

    public Camera character_view;

    void Start() {

        character_view = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
        
    }


    void Update() {

        //character movement
        float x_axis_movement = Input.GetAxis("Horizontal") * speed;
        x_axis_movement *= Time.deltaTime;
        transform.Translate(x_axis_movement, 0, 0);

        //camera rotation
        float y_axis_view_rotation = Input.GetAxis("Mouse X") * 75;
        y_axis_view_rotation *= Time.deltaTime;
        character_view.transform.Rotate(0, y_axis_view_rotation, 0);
        
    }
}
