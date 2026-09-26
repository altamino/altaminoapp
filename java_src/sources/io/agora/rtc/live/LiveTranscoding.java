package io.agora.rtc.live;

import androidx.core.view.ViewCompat;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.video.AgoraImage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LiveTranscoding {
    public static final String LBHQ = "lbhq";
    public static final String VEO = "veo";

    @Deprecated
    public int userCount;
    public int width = 360;
    public int height = 640;
    public int videoBitrate = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
    public VideoCodecProfileType videoCodecProfile = VideoCodecProfileType.HIGH;
    public VideoCodecType videoCodecType = VideoCodecType.H264;
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
    private Map<String, Boolean> advancedFeatures = new HashMap();

    @Deprecated
    public int backgroundColor = ViewCompat.MEASURED_STATE_MASK;
    public String userConfigExtraInfo = null;

    @Deprecated
    public String metadata = null;

    public enum AudioCodecProfileType {
        LC_AAC(0),
        HE_AAC(1);

        private int value;

        public static int getValue(AudioCodecProfileType type) {
            return type.value;
        }

        AudioCodecProfileType(int v5) {
            this.value = v5;
        }
    }

    public enum AudioSampleRateType {
        TYPE_32000(32000),
        TYPE_44100(RtcChatManager.SAMPLE_RATE),
        TYPE_48000(48000);

        private int value;

        public static int getValue(AudioSampleRateType type) {
            return type.value;
        }

        AudioSampleRateType(int v5) {
            this.value = v5;
        }
    }

    public static class TranscodingUser {
        public float alpha = 1.0f;
        public int audioChannel;
        public int height;
        public int uid;
        public int width;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f3242x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f3243y;
        public int zOrder;
    }

    public enum VideoCodecProfileType {
        BASELINE(66),
        MAIN(77),
        HIGH(100);

        private int value;

        public static int getValue(VideoCodecProfileType type) {
            return type.value;
        }

        VideoCodecProfileType(int v5) {
            this.value = v5;
        }
    }

    public enum VideoCodecType {
        H264(1),
        H265(2);

        private int value;

        public static int getValue(VideoCodecType type) {
            return type.value;
        }

        VideoCodecType(int v5) {
            this.value = v5;
        }
    }

    public Map<String, Boolean> getAdvancedFeatures() {
        return this.advancedFeatures;
    }

    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    @Deprecated
    public int getBlue() {
        return this.backgroundColor & 255;
    }

    @Deprecated
    public int getGreen() {
        return (this.backgroundColor >> 8) & 255;
    }

    @Deprecated
    public int getRed() {
        return (this.backgroundColor >> 16) & 255;
    }

    public void setBackgroundColor(int color) {
        this.backgroundColor = color;
    }

    public void setUsers(ArrayList<TranscodingUser> users) {
        this.transcodingUsers.clear();
        if (users != null) {
            for (TranscodingUser transcodingUser : users) {
                this.transcodingUsers.put(Integer.valueOf(transcodingUser.uid), transcodingUser);
            }
        }
        this.userCount = this.transcodingUsers.size();
    }

    public int addUser(TranscodingUser user) {
        int i10;
        if (user == null || (i10 = user.uid) == 0) {
            return -2;
        }
        this.transcodingUsers.put(Integer.valueOf(i10), user);
        this.userCount = this.transcodingUsers.size();
        return 0;
    }

    public int getUserCount() {
        return this.transcodingUsers.size();
    }

    public final ArrayList<TranscodingUser> getUsers() {
        return new ArrayList<>(this.transcodingUsers.values());
    }

    public int removeUser(int uid) {
        if (!this.transcodingUsers.containsKey(Integer.valueOf(uid))) {
            return -2;
        }
        this.transcodingUsers.remove(Integer.valueOf(uid));
        this.userCount = this.transcodingUsers.size();
        return 0;
    }

    public void setAdvancedFeatures(String featureName, Boolean opened) {
        this.advancedFeatures.put(featureName, opened);
    }

    public void setBackgroundColor(int red, int green, int blue) {
        this.backgroundColor = (red << 16) | (green << 8) | blue;
    }

    @Deprecated
    public void setBlue(int blue) {
        this.backgroundColor = blue | (getRed() << 16) | (getGreen() << 8);
    }

    @Deprecated
    public void setGreen(int green) {
        int i10 = green << 8;
        this.backgroundColor = i10 | (getRed() << 16) | getBlue();
    }

    @Deprecated
    public void setRed(int red) {
        this.backgroundColor = (red << 16) | (getGreen() << 8) | getBlue();
    }

    public void setUsers(Map<Integer, TranscodingUser> users) {
        this.transcodingUsers.clear();
        if (users != null) {
            this.transcodingUsers.putAll(users);
        }
        this.userCount = this.transcodingUsers.size();
    }
}
