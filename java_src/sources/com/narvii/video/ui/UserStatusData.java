package com.narvii.video.ui;

import android.view.SurfaceView;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes10.dex */
public class UserStatusData {
    public static final int AUDIO_MUTED = 2;
    public static final int AUDIO_ROUTE_SPEAKER = 3;
    public static final int DEFAULT_STATUS = 0;
    public static final int DEFAULT_VOLUME = 0;
    public static final int NETWORK_STATUS_BAD = 2;
    public static final int NETWORK_STATUS_FINE = 0;
    public static final int NETWORK_STATUS_LOST = 1;
    public static final int PROP_STATUS_LOADING = 1;
    public static final int PROP_STATUS_NONE = 0;
    public static final int PROP_STATUS_UPDATED = 2;
    public static final int QUALITY_BAD = 4;
    public static final int QUALITY_DOWN = 6;
    public static final int QUALITY_EXCELLENT = 1;
    public static final int QUALITY_GOOD = 2;
    public static final int QUALITY_POOR = 3;
    public static final int QUALITY_UNKNOWN = 0;
    public static final int QUALITY_VBAD = 5;
    public static final int VIDEO_FRAME_READY = 2;
    public static final int VIDEO_FRAME_UNREADY = 1;
    public static final int VIDEO_MUTED = 1;
    public static final int VOLUME_LEVEL_STEP = 64;
    public static final int VOLUME_MAX = 256;
    private int audioQuality;
    public int audioRoute;
    private boolean isVideoMuted;
    private boolean isVoiceMuted;
    public int mUid;
    private VideoInfoData mVideoInfo;
    public SurfaceView mView;
    public int mVolume;
    public int netWorkQuality;
    public int netWorkStatus;
    private int netWorkSummary;
    public int proItemStaus;
    public int streamType;
    private int trackingStatus;
    public int videoFrameStatus;

    public UserStatusData(int i10, SurfaceView surfaceView, int i11) {
        this(i10, surfaceView, false, false, i11, null);
    }

    private boolean isGoodNetwork(int i10) {
        return i10 == 1 || i10 == 2;
    }

    private boolean isSlowNetwork(int i10) {
        return i10 == 6 || i10 == 5 || i10 == 4;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UserStatusData)) {
            return false;
        }
        UserStatusData userStatusData = (UserStatusData) obj;
        return userStatusData.isVideoMuted == this.isVideoMuted && userStatusData.isVoiceMuted == this.isVoiceMuted && userStatusData.mUid == this.mUid && userStatusData.mVolume == this.mVolume && userStatusData.audioRoute == this.audioRoute && userStatusData.mView == this.mView && userStatusData.netWorkStatus == this.netWorkStatus && userStatusData.videoFrameStatus == this.videoFrameStatus;
    }

    public int getAudioQuality() {
        return this.audioQuality;
    }

    public int getTrackingStatus() {
        return this.trackingStatus;
    }

    public int getVideoFrameStatus() {
        return this.videoFrameStatus;
    }

    public VideoInfoData getVideoInfoData() {
        return this.mVideoInfo;
    }

    public boolean isBadNetwork() {
        return this.netWorkStatus != 0;
    }

    public boolean isNetworkSummaryBad() {
        return this.netWorkSummary == 2;
    }

    public boolean isSpeakerMode() {
        return this.audioRoute == 3;
    }

    public boolean isSpeaking() {
        return this.mVolume > 0;
    }

    public boolean isVideoMuted() {
        return this.isVideoMuted;
    }

    public boolean isVoiceMuted() {
        return this.isVoiceMuted;
    }

    public void setAudioQuality(int i10) {
        this.audioQuality = i10;
    }

    public void setTrackingStatus(int i10) {
        this.trackingStatus = i10;
    }

    public void setVideoFrameStatus(int i10) {
        this.videoFrameStatus = i10;
    }

    public void setVideoInfo(VideoInfoData videoInfoData) {
        this.mVideoInfo = videoInfoData;
    }

    public void setVideoMuted(boolean z6) {
        this.isVideoMuted = z6;
    }

    public void setVoiceMuted(boolean z6) {
        this.isVoiceMuted = z6;
    }

    public boolean shouldShowFaceDetectHint() {
        return this.trackingStatus == 0;
    }

    public UserStatusData(int i10, SurfaceView surfaceView, boolean z6, boolean z10, int i11, VideoInfoData videoInfoData) {
        this.streamType = -1;
        this.trackingStatus = -1;
        this.proItemStaus = 0;
        this.mUid = i10;
        this.mView = surfaceView;
        this.isVideoMuted = z10;
        this.isVoiceMuted = z6;
        this.mVolume = i11;
        this.mVideoInfo = videoInfoData;
    }

    public static int getVolumeLevel(int i10) {
        return (i10 / 64) + (i10 > 0 ? 1 : 0);
    }

    public int getCurVolumeLevel() {
        return getVolumeLevel(this.mVolume);
    }

    public String toString() {
        return "UserStatusData{mUid=" + (((long) this.mUid) & 4294967295L) + ", mView=" + this.mView + ", voiceMuted=" + this.isVoiceMuted + ", videoMuted=" + this.isVideoMuted + ", mVolume=" + this.mVolume + b.END_OBJ;
    }

    public boolean needUpdateNetWorkSummary(int i10) {
        int i11;
        if (isGoodNetwork(i10) && isSlowNetwork(this.audioQuality) && !this.isVoiceMuted) {
            i11 = 2;
        } else {
            i11 = 0;
        }
        if (i11 == this.netWorkSummary) {
            return false;
        }
        this.netWorkSummary = i11;
        return true;
    }
}
