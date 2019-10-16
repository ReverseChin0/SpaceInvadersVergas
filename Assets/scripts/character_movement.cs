using UnityEngine;

public class character_movement : MonoBehaviour {

    private Camera character_view;

    void Start() {

        Cursor.lockState = CursorLockMode.Locked;
        character_view = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>(); 
        
    }

    void Update() {

        MovementAndRotation();
        
    }

    private void MovementAndRotation() {    
        
        //character movement
        float x_axis_movement = Input.GetAxis("Horizontal") * 10;
        x_axis_movement *= Time.deltaTime;
        transform.Translate(x_axis_movement, 0, 0, Space.World);

        //character and camera rotation
        float y_axis_view_rotation = Input.GetAxis("Mouse X") * 75;
        y_axis_view_rotation *= Time.deltaTime;
        character_view.transform.Rotate(0, y_axis_view_rotation, 0, Space.World);
        transform.Rotate(0, y_axis_view_rotation, 0 /*, Space.World*/); //quitar si se quiere hacer como el juego og.

    }

}
