package io.agora.rtc.live;

import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import com.narvii.util.ws.WsMessage;

/* loaded from: classes4.dex */
public class LiveInjectStreamConfig {
    public int width = 0;
    public int height = 0;
    public int videoGop = 30;
    public int videoFramerate = 15;
    public int videoBitrate = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
    public AudioSampleRateType audioSampleRate = AudioSampleRateType.TYPE_44100;
    public int audioBitrate = 48;
    public int audioChannels = 1;

    public enum AudioSampleRateType {
        TYPE_32000(32000),
        TYPE_44100(RtcChatManager.SAMPLE_RATE),
        TYPE_48000(MediaRecordManager.ENCODE_BIT_RATE);

        private int value;

        AudioSampleRateType(int i) {
            this.value = i;
        }

        public static int getValue(AudioSampleRateType audioSampleRateType) {
            return audioSampleRateType.value;
        }
    }
}
