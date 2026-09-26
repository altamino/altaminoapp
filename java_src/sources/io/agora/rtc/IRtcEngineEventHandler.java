package io.agora.rtc;

import android.graphics.Rect;
import io.agora.rtc.models.UserInfo;

/* JADX INFO: loaded from: classes2.dex */
public abstract class IRtcEngineEventHandler {

    public static class AgoraFacePositionInfo {
        public int distance;
        public int height;
        public int width;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f3234x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f3235y;
    }

    public static class AudioVolumeInfo {
        public String channelId;
        public int uid;
        public int vad;
        public int volume;
    }

    public static class ClientRole {
        public static final int CLIENT_ROLE_AUDIENCE = 2;
        public static final int CLIENT_ROLE_BROADCASTER = 1;
    }

    public static class ErrorCode {
        public static final int ERR_ADM_GENERAL_ERROR = 1005;
        public static final int ERR_ADM_INIT_LOOPBACK = 1022;
        public static final int ERR_ADM_INIT_PLAYOUT = 1008;
        public static final int ERR_ADM_INIT_RECORDING = 1011;
        public static final int ERR_ADM_JAVA_RESOURCE = 1006;
        public static final int ERR_ADM_NO_RECORDING_DEVICE = 1359;
        public static final int ERR_ADM_RECORD_AUDIO_FAILED = 1018;
        public static final int ERR_ADM_RUNTIME_PLAYOUT_ERROR = 1015;
        public static final int ERR_ADM_RUNTIME_RECORDING_ERROR = 1017;
        public static final int ERR_ADM_SAMPLE_RATE = 1007;
        public static final int ERR_ADM_START_LOOPBACK = 1023;
        public static final int ERR_ADM_START_PLAYOUT = 1009;
        public static final int ERR_ADM_START_RECORDING = 1012;
        public static final int ERR_ADM_STOP_PLAYOUT = 1010;
        public static final int ERR_ADM_STOP_RECORDING = 1013;
        public static final int ERR_ALREADY_IN_USE = 19;
        public static final int ERR_AUDIO_BT_SCO_FAILED = 1030;
        public static final int ERR_BIND_SOCKET = 13;
        public static final int ERR_BITRATE_LIMIT = 115;
        public static final int ERR_BUFFER_TOO_SMALL = 6;
        public static final int ERR_CANCELED = 11;
        public static final int ERR_CLIENT_IS_BANNED_BY_SERVER = 123;
        public static final int ERR_CONNECTION_INTERRUPTED = 111;
        public static final int ERR_CONNECTION_LOST = 112;
        public static final int ERR_DECRYPTION_FAILED = 120;
        public static final int ERR_FAILED = 1;
        public static final int ERR_INVALID_APP_ID = 101;
        public static final int ERR_INVALID_ARGUMENT = 2;
        public static final int ERR_INVALID_CHANNEL_NAME = 102;

        @Deprecated
        public static final int ERR_INVALID_TOKEN = 110;
        public static final int ERR_INVALID_USER_ACCOUNT = 134;
        public static final int ERR_JOIN_CHANNEL_REJECTED = 17;
        public static final int ERR_LEAVE_CHANNEL_REJECTED = 18;
        public static final int ERR_LOAD_MEDIA_ENGINE = 1001;
        public static final int ERR_NET_DOWN = 14;
        public static final int ERR_NET_NOBUFS = 15;
        public static final int ERR_NOT_INITIALIZED = 7;
        public static final int ERR_NOT_IN_CHANNEL = 113;
        public static final int ERR_NOT_READY = 3;
        public static final int ERR_NOT_SUPPORTED = 4;
        public static final int ERR_NO_PERMISSION = 9;
        public static final int ERR_NO_SERVER_RESOURCES = 103;
        public static final int ERR_OK = 0;
        public static final int ERR_REFUSED = 5;
        public static final int ERR_SIZE_TOO_LARGE = 114;
        public static final int ERR_START_CALL = 1002;

        @Deprecated
        public static final int ERR_START_CAMERA = 1003;
        public static final int ERR_START_VIDEO_RENDER = 1004;
        public static final int ERR_TIMEDOUT = 10;

        @Deprecated
        public static final int ERR_TOKEN_EXPIRED = 109;
        public static final int ERR_TOO_MANY_DATA_STREAMS = 116;
        public static final int ERR_TOO_OFTEN = 12;
        public static final int ERR_VCM_ENCODER_ENCODE_ERROR = 1602;
        public static final int ERR_VCM_ENCODER_INIT_ERROR = 1601;

        @Deprecated
        public static final int ERR_VCM_ENCODER_SET_ERROR = 1603;
        public static final int ERR_VCM_UNKNOWN_ERROR = 1600;
        public static final int ERR_VDM_CAMERA_NOT_AUTHORIZED = 1501;
        public static final int ERR_WATERMARK_PATH = 125;
    }

    public static class ExperiencePoorReason {
        public static final int EXPERIENCE_REASON_NONE = 0;
        public static final int LOCAL_NETWORK_QUALITY_POOR = 2;
        public static final int REMOTE_NETWORK_QUALITY_POOR = 1;
        public static final int WIFI_BLUETOOTH_COEXIST = 8;
        public static final int WIRELESS_SIGNAL_POOR = 4;
    }

    public static class ExperienceQuality {
        public static final int EXPERIENCE_BAD = 1;
        public static final int EXPERIENCE_GOOD = 0;
    }

    public static class LastmileProbeResult {
        public int rtt;
        public short state;
        public LastmileProbeOneWayResult uplinkReport = new LastmileProbeOneWayResult();
        public LastmileProbeOneWayResult downlinkReport = new LastmileProbeOneWayResult();

        public static class LastmileProbeOneWayResult {
            public int availableBandwidth;
            public int jitter;
            public int packetLossRate;
        }
    }

    public static class LocalAudioStats {
        public int numChannels;
        public int sentBitrate;
        public int sentSampleRate;
        public int txPacketLossRate;
    }

    public static class LocalVideoStats {
        public int captureBrightnessLevel;
        public int captureFrameRate;
        public int codecType;
        public int encodedBitrate;
        public int encodedFrameCount;
        public int encodedFrameHeight;
        public int encodedFrameWidth;
        public int encoderOutputFrameRate;
        public int qualityAdaptIndication;
        public int rendererOutputFrameRate;
        public int sentBitrate;
        public int sentFrameRate;
        public int targetBitrate;
        public int targetFrameRate;
        public int txPacketLossRate;
    }

    public static class Quality {
        public static final int BAD = 4;
        public static final int DOWN = 6;
        public static final int EXCELLENT = 1;
        public static final int GOOD = 2;
        public static final int POOR = 3;
        public static final int UNKNOWN = 0;
        public static final int VBAD = 5;
    }

    public static class RemoteAudioStats {
        public int audioLossRate;
        public int frozenRate;
        public int jitterBufferDelay;
        public int networkTransportDelay;
        public int numChannels;
        public int publishDuration;
        public int qoeQuality;
        public int quality;
        public int qualityChangedReason;
        public int receivedBitrate;
        public int receivedSampleRate;
        public int totalActiveTime;
        public int totalFrozenTime;
        public int uid;
    }

    public static class RemoteVideoStats {
        public int decoderOutputFrameRate;

        @Deprecated
        public int delay;
        public int frozenRate;
        public int height;
        public int packetLossRate;
        public int publishDuration;
        public int receivedBitrate;
        public int rendererOutputFrameRate;
        public int rxStreamType;
        public int totalActiveTime;
        public int totalFrozenTime;
        public int uid;
        public int width;
    }

    public static class RtcStats {
        public double cpuAppUsage;
        public double cpuTotalUsage;
        public int gatewayRtt;
        public int lastmileDelay;
        public int memoryAppUsageInKbytes;
        public double memoryAppUsageRatio;
        public double memoryTotalUsageRatio;
        public int rxAudioBytes;
        public int rxAudioKBitRate;
        public int rxBytes;
        public int rxKBitRate;
        public int rxPacketLossRate;
        public int rxVideoBytes;
        public int rxVideoKBitRate;
        public int totalDuration;
        public int txAudioBytes;
        public int txAudioKBitRate;
        public int txBytes;
        public int txKBitRate;
        public int txPacketLossRate;
        public int txVideoBytes;
        public int txVideoKBitRate;
        public int users;
    }

    public static class UploadErrorReason {
        public static final int UPLOAD_NET_ERROR = 1;
        public static final int UPLOAD_SERVER_ERROR = 2;
        public static final int UPLOAD_SUCCESS = 0;
    }

    public static class UserOfflineReason {
        public static final int USER_OFFLINE_DROPPED = 1;
        public static final int USER_OFFLINE_QUIT = 0;
    }

    @Deprecated
    public static class VideoProfile {
        public static final int VIDEO_PROFILE_120P = 0;
        public static final int VIDEO_PROFILE_120P_3 = 2;
        public static final int VIDEO_PROFILE_180P = 10;
        public static final int VIDEO_PROFILE_180P_3 = 12;
        public static final int VIDEO_PROFILE_180P_4 = 13;
        public static final int VIDEO_PROFILE_240P = 20;
        public static final int VIDEO_PROFILE_240P_3 = 22;
        public static final int VIDEO_PROFILE_240P_4 = 23;
        public static final int VIDEO_PROFILE_360P = 30;
        public static final int VIDEO_PROFILE_360P_3 = 32;
        public static final int VIDEO_PROFILE_360P_4 = 33;
        public static final int VIDEO_PROFILE_360P_6 = 35;
        public static final int VIDEO_PROFILE_360P_7 = 36;
        public static final int VIDEO_PROFILE_360P_8 = 37;
        public static final int VIDEO_PROFILE_480P = 40;
        public static final int VIDEO_PROFILE_480P_3 = 42;
        public static final int VIDEO_PROFILE_480P_4 = 43;
        public static final int VIDEO_PROFILE_480P_6 = 45;
        public static final int VIDEO_PROFILE_480P_8 = 47;
        public static final int VIDEO_PROFILE_480P_9 = 48;
        public static final int VIDEO_PROFILE_720P = 50;
        public static final int VIDEO_PROFILE_720P_3 = 52;
        public static final int VIDEO_PROFILE_720P_5 = 54;
        public static final int VIDEO_PROFILE_720P_6 = 55;
        public static final int VIDEO_PROFILE_DEFAULT = 30;
    }

    public static class WarnCode {
        public static final int WARN_ADM_CALL_INTERRUPTION = 1025;
        public static final int WARN_ADM_RECORD_AUDIO_SILENCE = 1019;
        public static final int WARN_ADM_RECORD_IS_OCCUPIED = 1033;
        public static final int WARN_ADM_RUNTIME_PLAYOUT_WARNING = 1014;
        public static final int WARN_ADM_RUNTIME_RECORDING_WARNING = 1016;
        public static final int WARN_APM_HOWLING = 1051;
        public static final int WARN_AUDIO_MIXING_OPEN_ERROR = 701;
        public static final int WARN_INIT_VIDEO = 16;
        public static final int WARN_INVALID_VIEW = 8;

        @Deprecated
        public static final int WARN_LOOKUP_CHANNEL_REJECTED = 105;
        public static final int WARN_LOOKUP_CHANNEL_TIMEOUT = 104;
        public static final int WARN_NO_AVAILABLE_CHANNEL = 103;
        public static final int WARN_OPEN_CHANNEL_INVALID_TICKET = 121;
        public static final int WARN_OPEN_CHANNEL_REJECTED = 107;
        public static final int WARN_OPEN_CHANNEL_TIMEOUT = 106;
        public static final int WARN_OPEN_CHANNEL_TRY_NEXT_VOS = 122;
        public static final int WARN_PENDING = 20;
    }

    public void onActiveSpeaker(int uid) {
    }

    public void onApiCallExecuted(int error, String api, String result) {
    }

    public void onAudioEffectFinished(int soundId) {
    }

    @Deprecated
    public void onAudioMixingFinished() {
    }

    public void onAudioMixingStateChanged(int state, int errorCode) {
    }

    public void onAudioPublishStateChanged(String channel, int oldState, int newState, int elapseSinceLastState) {
    }

    @Deprecated
    public void onAudioQuality(int uid, int quality, short delay, short lost) {
    }

    public void onAudioRouteChanged(int routing) {
    }

    public void onAudioSubscribeStateChanged(String channel, int uid, int oldState, int newState, int elapseSinceLastState) {
    }

    public void onAudioVolumeIndication(AudioVolumeInfo[] speakers, int totalVolume) {
    }

    public void onCameraExposureAreaChanged(Rect rect) {
    }

    public void onCameraFocusAreaChanged(Rect rect) {
    }

    @Deprecated
    public void onCameraReady() {
    }

    public void onChannelMediaRelayEvent(int code) {
    }

    public void onChannelMediaRelayStateChanged(int state, int code) {
    }

    public void onClientRoleChanged(int oldRole, int newRole) {
    }

    @Deprecated
    public void onConnectionBanned() {
    }

    @Deprecated
    public void onConnectionInterrupted() {
    }

    public void onConnectionLost() {
    }

    public void onConnectionStateChanged(int state, int reason) {
    }

    public void onError(int err) {
    }

    public void onFacePositionChanged(int imageWidth, int imageHeight, AgoraFacePositionInfo[] faces) {
    }

    @Deprecated
    public void onFirstLocalAudioFrame(int elapsed) {
    }

    public void onFirstLocalAudioFramePublished(int elapsed) {
    }

    public void onFirstLocalVideoFrame(int width, int height, int elapsed) {
    }

    public void onFirstLocalVideoFramePublished(int elapsed) {
    }

    @Deprecated
    public void onFirstRemoteAudioDecoded(int uid, int elapsed) {
    }

    @Deprecated
    public void onFirstRemoteAudioFrame(int uid, int elapsed) {
    }

    @Deprecated
    public void onFirstRemoteVideoDecoded(int uid, int width, int height, int elapsed) {
    }

    public void onFirstRemoteVideoFrame(int uid, int width, int height, int elapsed) {
    }

    public void onJoinChannelSuccess(String channel, int uid, int elapsed) {
    }

    public void onLastmileProbeResult(LastmileProbeResult result) {
    }

    public void onLastmileQuality(int quality) {
    }

    public void onLeaveChannel(RtcStats stats) {
    }

    public void onLocalAudioStateChanged(int state, int error) {
    }

    public void onLocalAudioStats(LocalAudioStats stats) {
    }

    public void onLocalPublishFallbackToAudioOnly(boolean isFallbackOrRecover) {
    }

    public void onLocalUserRegistered(int uid, String userAccount) {
    }

    @Deprecated
    public void onLocalVideoStat(int sentBitrate, int sentFrameRate) {
    }

    public void onLocalVideoStateChanged(int localVideoState, int error) {
    }

    public void onLocalVideoStats(LocalVideoStats stats) {
    }

    public void onMediaEngineLoadSuccess() {
    }

    public void onMediaEngineStartCallSuccess() {
    }

    @Deprecated
    public void onMicrophoneEnabled(boolean enabled) {
    }

    public void onNetworkQuality(int uid, int txQuality, int rxQuality) {
    }

    public void onNetworkTypeChanged(int type) {
    }

    public void onRejoinChannelSuccess(String channel, int uid, int elapsed) {
    }

    public void onRemoteAudioStateChanged(int uid, int state, int reason, int elapsed) {
    }

    public void onRemoteAudioStats(RemoteAudioStats stats) {
    }

    @Deprecated
    public void onRemoteAudioTransportStats(int uid, int delay, int lost, int rxKBitRate) {
    }

    public void onRemoteSubscribeFallbackToAudioOnly(int uid, boolean isFallbackOrRecover) {
    }

    @Deprecated
    public void onRemoteVideoStat(int uid, int delay, int receivedBitrate, int receivedFrameRate) {
    }

    public void onRemoteVideoStateChanged(int uid, int state, int reason, int elapsed) {
    }

    public void onRemoteVideoStats(RemoteVideoStats stats) {
    }

    @Deprecated
    public void onRemoteVideoTransportStats(int uid, int delay, int lost, int rxKBitRate) {
    }

    public void onRequestToken() {
    }

    public void onRtcStats(RtcStats stats) {
    }

    public void onRtmpStreamingEvent(String url, int error) {
    }

    public void onRtmpStreamingStateChanged(String url, int state, int errCode) {
    }

    public void onStreamInjectedStatus(String url, int uid, int status) {
    }

    public void onStreamMessage(int uid, int streamId, byte[] data) {
    }

    public void onStreamMessageError(int uid, int streamId, int error, int missed, int cached) {
    }

    @Deprecated
    public void onStreamPublished(String url, int error) {
    }

    @Deprecated
    public void onStreamUnpublished(String url) {
    }

    public void onTokenPrivilegeWillExpire(String token) {
    }

    public void onTranscodingUpdated() {
    }

    public void onUploadLogResult(String requestId, boolean success, int reason) {
    }

    @Deprecated
    public void onUserEnableLocalVideo(int uid, boolean enabled) {
    }

    @Deprecated
    public void onUserEnableVideo(int uid, boolean enabled) {
    }

    public void onUserInfoUpdated(int uid, UserInfo userInfo) {
    }

    public void onUserJoined(int uid, int elapsed) {
    }

    @Deprecated
    public void onUserMuteAudio(int uid, boolean muted) {
    }

    @Deprecated
    public void onUserMuteVideo(int uid, boolean muted) {
    }

    public void onUserOffline(int uid, int reason) {
    }

    public void onUserSuperResolutionEnabled(int uid, boolean enabled, int reason) {
    }

    public void onVideoPublishStateChanged(String channel, int oldState, int newState, int elapseSinceLastState) {
    }

    public void onVideoSizeChanged(int uid, int width, int height, int rotation) {
    }

    @Deprecated
    public void onVideoStopped() {
    }

    public void onVideoSubscribeStateChanged(String channel, int uid, int oldState, int newState, int elapseSinceLastState) {
    }

    public void onWarning(int warn) {
    }
}
