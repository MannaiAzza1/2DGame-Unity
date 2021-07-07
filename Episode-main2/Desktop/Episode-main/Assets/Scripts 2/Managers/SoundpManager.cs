using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundpManager : MonoBehaviour
{
    public AudioClip[] audioClips;
    private AudioSource audioSource;
    public static SoundpManager instance;
    private void Awake()
    {
        audioSource = GetComponent<AudioSource>();

        if (instance == null)
        {
            instance = this;
        }
        else
        {
            Debug.LogWarning("There is more than one SoundManager");
        }
    }
    public void PlaySound(int index)
    {
        if (index > audioClips.Length - 1 || index < 0) return;
        audioSource.PlayOneShot(audioClips[index]);
    }
}
