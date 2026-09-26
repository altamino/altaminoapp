package com.narvii.video.model;

import io.agora.rtc.IRtcEngineEventHandler;

/* JADX INFO: loaded from: classes6.dex */
public interface RtcEventHandler {
    public static final int EVENT_TYPE_ON_AGORA_MEDIA_ERROR = 9;
    public static final int EVENT_TYPE_ON_APP_ERROR = 13;
    public static final int EVENT_TYPE_ON_AUDIO_QUALITY = 20;
    public static final int EVENT_TYPE_ON_DATA_CHANNEL_MSG = 3;
    public static final int EVENT_TYPE_ON_JOIN_ERROR = 1;
    public static final int EVENT_TYPE_ON_LEAVE_ERROR = 1002;
    public static final int EVENT_TYPE_ON_USER_VIDEO_STATS = 10;
    public static final int NETWORK_STATUS_BAD = 1;
    public static final int NETWORK_STATUS_BROKEN = 2;
    public static final int NETWORK_STATUS_INTERRUPT = 3;

    void onAudioQuality(int i10, int i11, short s, short s5);

    void onAudioRouteChanged(int i10);

    void onAudioVolumeIndication(IRtcEngineEventHandler.AudioVolumeInfo[] audioVolumeInfoArr, int i10);

    void onError(int i10, String str);

    void onExtraCallback(int i10, Object... objArr);

    void onFirstRemoteVideoDecoded(int i10, int i11, int i12, int i13);

    void onJoinChannelSuccess(String str, int i10, int i11);

    void onLeaveChannel();

    void onLocalUserSteamDecoded(int i10);

    void onNetworkQuality(int i10, int i11, int i12);

    void onNetworkStatusChanged(int i10);

    void onRejoinChannelSuccess(String str, int i10, int i11);

    void onRemoteUserJoined(int i10);

    void onRequestToken();

    void onUserMuteAudio(int i10, boolean z6);

    void onUserMuteVideo(int i10, boolean z6);

    void onUserOffline(int i10, int i11);
}
