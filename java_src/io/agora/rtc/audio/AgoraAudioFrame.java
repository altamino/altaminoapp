package io.agora.rtc.audio;

import com.narvii.chat.video.RtcChatManager;

/* loaded from: classes4.dex */
public class AgoraAudioFrame {
    public byte[] pcm;
    public int type = 0;
    public int channels = 2;
    public int frequency = RtcChatManager.SAMPLE_RATE;
}
