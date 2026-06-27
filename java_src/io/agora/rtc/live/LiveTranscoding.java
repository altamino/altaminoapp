package io.agora.rtc.live;

import android.support.v4.view.ViewCompat;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.video.AgoraImage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes4.dex */
public class LiveTranscoding {

    @Deprecated
    public int userCount;
    public int width = 360;
    public int height = 640;
    public int videoBitrate = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
    public VideoCodecProfileType videoCodecProfile = VideoCodecProfileType.HIGH;
    public int videoGop = 30;
    public int videoFramerate = 15;
    public AgoraImage watermark = new AgoraImage();
    public AgoraImage backgroundImage = new AgoraImage();

    @Deprecated
    public boolean lowLatency = false;
    public AudioSampleRateType audioSampleRate = AudioSampleRateType.TYPE_44100;
    public int audioBitrate = 48;
    public int audioChannels = 1;
    public AudioCodecProfileType audioCodecProfile = AudioCodecProfileType.LC_AAC;
    private Map<Integer, TranscodingUser> transcodingUsers = new HashMap();

    @Deprecated
    public int backgroundColor = ViewCompat.MEASURED_STATE_MASK;
    public String userConfigExtraInfo = null;

    @Deprecated
    public String metadata = null;

    public static class TranscodingUser {
        public float alpha = 1.0f;
        public int audioChannel;
        public int height;
        public int uid;
        public int width;
        public int x;
        public int y;
        public int zOrder;
    }

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

    public enum VideoCodecProfileType {
        BASELINE(66),
        MAIN(77),
        HIGH(100);

        private int value;

        VideoCodecProfileType(int i) {
            this.value = i;
        }

        public static int getValue(VideoCodecProfileType videoCodecProfileType) {
            return videoCodecProfileType.value;
        }
    }

    public enum AudioCodecProfileType {
        LC_AAC(0),
        HE_AAC(1);

        private int value;

        AudioCodecProfileType(int i) {
            this.value = i;
        }

        public static int getValue(AudioCodecProfileType audioCodecProfileType) {
            return audioCodecProfileType.value;
        }
    }

    public int addUser(TranscodingUser transcodingUser) {
        int i;
        if (transcodingUser == null || (i = transcodingUser.uid) == 0) {
            return -2;
        }
        this.transcodingUsers.put(Integer.valueOf(i), transcodingUser);
        this.userCount = this.transcodingUsers.size();
        return 0;
    }

    public final ArrayList<TranscodingUser> getUsers() {
        return new ArrayList<>(this.transcodingUsers.values());
    }

    public void setUsers(ArrayList<TranscodingUser> arrayList) {
        this.transcodingUsers.clear();
        if (arrayList != null) {
            Iterator<TranscodingUser> it = arrayList.iterator();
            while (it.hasNext()) {
                TranscodingUser next = it.next();
                this.transcodingUsers.put(Integer.valueOf(next.uid), next);
            }
        }
        this.userCount = this.transcodingUsers.size();
    }

    public void setUsers(Map<Integer, TranscodingUser> map) {
        this.transcodingUsers.clear();
        if (map != null) {
            this.transcodingUsers.putAll(map);
        }
        this.userCount = this.transcodingUsers.size();
    }

    public int removeUser(int i) {
        if (!this.transcodingUsers.containsKey(Integer.valueOf(i))) {
            return -2;
        }
        this.transcodingUsers.remove(Integer.valueOf(i));
        this.userCount = this.transcodingUsers.size();
        return 0;
    }

    public int getUserCount() {
        return this.transcodingUsers.size();
    }

    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
    }

    public void setBackgroundColor(int i, int i2, int i3) {
        this.backgroundColor = (i << 16) | (i2 << 8) | (i3 << 0);
    }

    @Deprecated
    public int getRed() {
        return (this.backgroundColor >> 16) & 255;
    }

    @Deprecated
    public int getGreen() {
        return (this.backgroundColor >> 8) & 255;
    }

    @Deprecated
    public int getBlue() {
        return this.backgroundColor & 255;
    }

    @Deprecated
    public void setRed(int i) {
        this.backgroundColor = (i << 16) | (getGreen() << 8) | (getBlue() << 0);
    }

    @Deprecated
    public void setGreen(int i) {
        int i2 = i << 8;
        this.backgroundColor = i2 | (getRed() << 16) | (getBlue() << 0);
    }

    @Deprecated
    public void setBlue(int i) {
        int i2 = i << 0;
        this.backgroundColor = i2 | (getRed() << 16) | (getGreen() << 8);
    }
}
