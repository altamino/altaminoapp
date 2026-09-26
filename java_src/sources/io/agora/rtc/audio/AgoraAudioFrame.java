package io.agora.rtc.audio;

import com.narvii.chat.video.RtcChatManager;

/* JADX INFO: loaded from: classes10.dex */
public class AgoraAudioFrame {
    public byte[] pcm;
    public int type = 0;
    public int channels = 2;
    public int frequency = RtcChatManager.SAMPLE_RATE;
}
