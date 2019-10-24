using UnityEngine;

public class character_movement : MonoBehaviour
{

    public float horizontal_view_limit = 30;
    public float vertical_view_limit = 30;

    private Camera character_view;
    private float x, y;

    void Start()
    {

        Cursor.lockState = CursorLockMode.Locked;
        character_view = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();

    }

    void Update() {

        MovementAndRotation();

    }

    private void MovementAndRotation()
    {

        //character movement

        float x_axis_movement = Input.GetAxis("Horizontal") * 10;
        x_axis_movement *= Time.deltaTime;
        transform.Translate(x_axis_movement, 0, 0, Space.World);

        /*

        //camera y rotation

        float y_axis_view_rotation = Input.GetAxis("Mouse X") * Time.deltaTime;

        y += y_axis_view_rotation * 75;
        y = Mathf.Clamp(y, -horizontal_view_limit, horizontal_view_limit);

        if (y < horizontal_view_limit && y > -horizontal_view_limit)
        {

            character_view.transform.localEulerAngles = new Vector3(character_view.transform.localEulerAngles.x, y, character_view.transform.localEulerAngles.z);

        }

        //camera x rotation

        float x_axis_view_rotation = Input.GetAxis("Mouse Y") * Time.deltaTime;

        x -= x_axis_view_rotation * 75;
        x = Mathf.Clamp(x, -vertical_view_limit, vertical_view_limit);

        if (x < vertical_view_limit && x > -vertical_view_limit)
        {

            character_view.transform.localEulerAngles = new Vector3(x, character_view.transform.localEulerAngles.y, character_view.transform.localEulerAngles.z);

        }

        */
    }

}
