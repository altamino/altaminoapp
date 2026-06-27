package com.narvii.video.ui;

import android.view.SurfaceView;

/* loaded from: classes3.dex */
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

    private boolean isGoodNetwork(int i) {
        return i == 1 || i == 2;
    }

    private boolean isSlowNetwork(int i) {
        return i == 6 || i == 5 || i == 4;
    }

    public UserStatusData(int i, SurfaceView surfaceView, int i2) {
        this(i, surfaceView, false, false, i2, null);
    }

    public UserStatusData(int i, SurfaceView surfaceView, boolean z, boolean z2, int i2, VideoInfoData videoInfoData) {
        this.streamType = -1;
        this.trackingStatus = -1;
        this.proItemStaus = 0;
        this.mUid = i;
        this.mView = surfaceView;
        this.isVideoMuted = z2;
        this.isVoiceMuted = z;
        this.mVolume = i2;
        this.mVideoInfo = videoInfoData;
    }

    public int getTrackingStatus() {
        return this.trackingStatus;
    }

    public void setTrackingStatus(int i) {
        this.trackingStatus = i;
    }

    public boolean shouldShowFaceDetectHint() {
        return this.trackingStatus == 0;
    }

    public void setAudioQuality(int i) {
        this.audioQuality = i;
    }

    public int getAudioQuality() {
        return this.audioQuality;
    }

    public void setVoiceMuted(boolean z) {
        this.isVoiceMuted = z;
    }

    public void setVideoMuted(boolean z) {
        this.isVideoMuted = z;
    }

    public void setVideoInfo(VideoInfoData videoInfoData) {
        this.mVideoInfo = videoInfoData;
    }

    public VideoInfoData getVideoInfoData() {
        return this.mVideoInfo;
    }

    public void setVideoFrameStatus(int i) {
        this.videoFrameStatus = i;
    }

    public int getVideoFrameStatus() {
        return this.videoFrameStatus;
    }

    public boolean isSpeaking() {
        return this.mVolume > 0;
    }

    public boolean isVoiceMuted() {
        return this.isVoiceMuted;
    }

    public boolean isBadNetwork() {
        return this.netWorkStatus != 0;
    }

    public boolean isVideoMuted() {
        return this.isVideoMuted;
    }

    public int getCurVolumeLevel() {
        return getVolumeLevel(this.mVolume);
    }

    public static int getVolumeLevel(int i) {
        return (i / 64) + (i > 0 ? 1 : 0);
    }

    public boolean needUpdateNetWorkSummary(int i) {
        int i2 = (isGoodNetwork(i) && isSlowNetwork(this.audioQuality) && !this.isVoiceMuted) ? 2 : 0;
        if (i2 == this.netWorkSummary) {
            return false;
        }
        this.netWorkSummary = i2;
        return true;
    }

    public boolean isNetworkSummaryBad() {
        return this.netWorkSummary == 2;
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

    public boolean isSpeakerMode() {
        return this.audioRoute == 3;
    }

    public String toString() {
        return "UserStatusData{mUid=" + (this.mUid & 4294967295L) + ", mView=" + this.mView + ", voiceMuted=" + this.isVoiceMuted + ", videoMuted=" + this.isVideoMuted + ", mVolume=" + this.mVolume + '}';
    }
}
