using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Video;
public class VideoManager : MonoBehaviour
{
    public static VideoManager instance;
    public VideoPlayer seq;
    private void Awake()
    {

        if (instance == null)
        {
            instance = this;
        }
        else
        {
            Debug.LogWarning("There is more than one BackgroundManager");
        }

    }
        public void PlayVideo()
        {
        seq = Instantiate(seq);

        //seq.Play();
        }
   
}
