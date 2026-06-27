package com.narvii.video.model;

import io.agora.rtc.IRtcEngineEventHandler;

/* loaded from: classes.dex */
public interface RtcEventHandler {
    public static final int EVENT_TYPE_ON_AGORA_MEDIA_ERROR = 9;
    public static final int EVENT_TYPE_ON_APP_ERROR = 13;
    public static final int EVENT_TYPE_ON_AUDIO_QUALITY = 20;
    public static final int EVENT_TYPE_ON_DATA_CHANNEL_MSG = 3;
    public static final int EVENT_TYPE_ON_JOIN_ERROR = 1;
    public static final int EVENT_TYPE_ON_USER_VIDEO_STATS = 10;
    public static final int NETWORK_STATUS_BAD = 1;
    public static final int NETWORK_STATUS_BROKEN = 2;
    public static final int NETWORK_STATUS_INTERRUPT = 3;

    void onAudioQuality(int i, int i2, short s, short s2);

    void onAudioRouteChanged(int i);

    void onAudioVolumeIndication(IRtcEngineEventHandler.AudioVolumeInfo[] audioVolumeInfoArr, int i);

    void onError(int i, String str);

    void onExtraCallback(int i, Object... objArr);

    void onFirstRemoteVideoDecoded(int i, int i2, int i3, int i4);

    void onJoinChannelSuccess(String str, int i, int i2);

    void onLeaveChannel();

    void onLocalUserSteamDecoded(int i);

    void onNetworkQuality(int i, int i2, int i3);

    void onNetworkStatusChanged(int i);

    void onRejoinChannelSuccess(String str, int i, int i2);

    void onRemoteUserJoined(int i);

    void onRequestToken();

    void onUserMuteAudio(int i, boolean z);

    void onUserMuteVideo(int i, boolean z);

    void onUserOffline(int i, int i2);
}
