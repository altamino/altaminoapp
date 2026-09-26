package io.agora.rtc.internal;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.hardware.Camera;
import android.media.AudioManager;
import android.net.wifi.WifiManager;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import io.agora.rtc.Constants;
import io.agora.rtc.IAudioEffectManager;
import io.agora.rtc.IAudioFrameObserver;
import io.agora.rtc.IMetadataObserver;
import io.agora.rtc.IRtcChannelEventHandler;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.IRtcEngineEventHandlerEx;
import io.agora.rtc.RtcChannel;
import io.agora.rtc.RtcEngineConfig;
import io.agora.rtc.RtcEngineEx;
import io.agora.rtc.audio.HardwareEarbackController;
import io.agora.rtc.live.LiveInjectStreamConfig;
import io.agora.rtc.live.LiveTranscoding;
import io.agora.rtc.mediaio.AgoraDefaultRender;
import io.agora.rtc.mediaio.AgoraDefaultSource;
import io.agora.rtc.mediaio.IVideoSink;
import io.agora.rtc.mediaio.IVideoSource;
import io.agora.rtc.models.ChannelMediaOptions;
import io.agora.rtc.models.ClientRoleOptions;
import io.agora.rtc.models.DataStreamConfig;
import io.agora.rtc.models.UserInfo;
import io.agora.rtc.video.AgoraImage;
import io.agora.rtc.video.AgoraVideoFrame;
import io.agora.rtc.video.BeautyOptions;
import io.agora.rtc.video.CameraCapturerConfiguration;
import io.agora.rtc.video.ChannelMediaInfo;
import io.agora.rtc.video.ChannelMediaRelayConfiguration;
import io.agora.rtc.video.VideoCanvas;
import io.agora.rtc.video.VideoEncoderConfiguration;
import io.agora.rtc.video.WatermarkOptions;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.microedition.khronos.egl.EGLContext;

/* JADX INFO: loaded from: classes4.dex */
public class RtcEngineImpl extends RtcEngineEx implements IAudioEffectManager {
    private static final String TAG = "RtcEngine";
    public static final int VIDEO_SOURCE_TYPE_CUSTOMIZED = 2;
    public static final int VIDEO_SOURCE_TYPE_DEFAULT = 1;
    private static final int VIDEO_SOURCE_TYPE_EXTERNAL_DEPRECATED = 3;
    public static final int VIDEO_SOURCE_TYPE_NULL = 0;
    private static boolean sLibLoaded;
    static float[] sMatrix = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    IRtcEngineEventHandler.AgoraFacePositionInfo[] faceRectArr;
    private WeakReference<Context> mContext;
    private long mNativeHandle;
    private int mVideoSourceType = 1;
    private boolean mLocalVideoEnabled = false;
    private boolean mUseLocalView = false;
    private int mExAudioSourceSampleRate = 0;
    private int mExAudioSourceChannels = 0;
    private int mExAudioSinkChannels = -1;
    private int mExAudioSinkSampleRate = -1;
    private long lastOrientationTs = 0;
    private int mTotalRotation = 1000;
    private final ConcurrentHashMap<IRtcEngineEventHandler, Integer> mRtcHandlers = new ConcurrentHashMap<>();
    private RtcChannelImpl mDefaultRtcChannel = null;
    private final LinkedList<RtcChannelImpl> mRtcChannels = new LinkedList<>();
    private IRtcEngineEventHandler.RtcStats mRtcStats = null;
    private WifiManager.WifiLock mWifiLock = null;
    private int mChannelProfile = 1;
    private int mClientRole = 2;
    private IntentFilter filter = new IntentFilter();
    private BroadcastReceiver mUsbStateChangeReceiver = new BroadcastReceiver() { // from class: io.agora.rtc.internal.RtcEngineImpl.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action) || "android.hardware.usb.action.USB_ACCESSORY_ATTACHED".equals(action)) {
                Logging.i(RtcEngineImpl.TAG, "device attached");
                RtcEngineImpl.this.refresh_device_list();
            }
            if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(action) || "android.hardware.usb.action.USB_ACCESSORY_DETACHED".equals(action)) {
                Logging.i(RtcEngineImpl.TAG, "device detached");
                RtcEngineImpl.this.refresh_device_list();
            }
        }
    };

    public RtcEngineImpl(Context context, String appId, IRtcEngineEventHandler handler) throws Exception {
        this.mNativeHandle = 0L;
        this.mContext = new WeakReference<>(context);
        addHandler(handler);
        HardwareEarbackController.getInstance(context).isHardwareEarbackSupported();
        this.mNativeHandle = nativeObjectInit(context, appId, "", "", "", "", "", "");
        initDeviceNotify(context);
    }

    private synchronized boolean checkStatus() {
        if (this.mNativeHandle == 0) {
            throw new IllegalStateException("RtcEngine does not initialize or it may be destroyed");
        }
        return true;
    }

    private void checkVoipPermissions(Context context, String perm) throws SecurityException {
        if (context == null || context.checkPermission(perm, Process.myPid(), Process.myUid()) != 0) {
            throw new SecurityException(perm + " is not granted");
        }
    }

    private native int deliverFrame(long nativeHandle, byte[] buf, int stride, int height, int cropLeft, int cropTop, int cropRight, int cropBottom, int rotation, long ts, int format);

    private boolean joinChannelFirstTimeOrAllChannelLeft() {
        synchronized (this) {
            try {
                boolean z6 = false;
                if (this.mDefaultRtcChannel != null) {
                    return false;
                }
                Iterator<RtcChannelImpl> it = this.mRtcChannels.iterator();
                while (it.hasNext()) {
                    if (it.next().hasJoined()) {
                        return z6;
                    }
                }
                z6 = true;
                return z6;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private native int nativeAddInjectStreamUrl(long nativeHandle, String url, byte[] config);

    private native int nativeAddLocalVideoRender(long nativeHandle, IVideoSink render, int type);

    private native int nativeAddPublishStreamUrl(long nativeHandle, String url, boolean transcodingEnabled);

    private native int nativeAddRemoteVideoRender(long nativeHandle, int uid, IVideoSink render, int type);

    private native int nativeAddVideoCapturer(long nativeHandle, IVideoSource capturer, int type);

    private native int nativeAddVideoWatermark(long nativeHandle, String url, boolean visibleInPreivew, int lx, int ly, int lwidth, int lheight, int px, int py, int pwidth, int pheight);

    private static native int nativeClassInit();

    private native int nativeClearVideoWatermarks(long nativeHandle);

    private native int nativeComplain(long nativeHandle, String callId, String description);

    private native int nativeCreateDataStream(long nativeHandle, boolean reliable, boolean ordered);

    private native int nativeCreateDataStream2(long nativeHandle, boolean ordered, boolean sync);

    private native long nativeCreateRtcChannel(long nativeHandle, String channel);

    private native int nativeDestroy(long nativeHandle);

    private static native int nativeDeviceChanged(long nativeHandle);

    private native int nativeDisableVideo(long nativeHandle);

    private native int nativeEnableDeepLearningDenoise(long nativeHandle, boolean enabled);

    private native int nativeEnableEncryption(long nativeHandle, boolean enabled, int encryptionMode, String encryptionKey);

    private native int nativeEnableLocalAudio(long nativeHandle, boolean enabled);

    private native int nativeEnableRemoteSuperResolution(long nativeHandle, int uid, boolean enable);

    private native int nativeEnableVideo(long nativeHandle);

    private native String nativeGetCallId(long nativeHandle);

    public static native String nativeGetChatEngineVersion();

    private native int nativeGetConncetionState(long nativeHandle);

    private native long nativeGetDefaultRtcChannel(long nativeHandle);

    public static native String nativeGetErrorDescription(int err);

    private native long nativeGetHandle(long nativeHandle);

    private native int nativeGetIntParameter(long nativeHandle, String parameter, String args);

    private static native byte[] nativeGetOptionsByVideoProfile(long nativeHandle, int profile);

    private native String nativeGetParameter(long nativeHandle, String parameter, String args);

    private native String nativeGetParameters(long nativeHandle, String parameters);

    private native String nativeGetProfile(long nativeHandle);

    public static native String nativeGetSdkVersion();

    private native int nativeGetUserInfoByUid(long nativeHandle, int userAccount, Object userInfo);

    private native int nativeGetUserInfoByUserAccount(long nativeHandle, String userAccount, Object userInfo);

    private native boolean nativeIsSpeakerphoneEnabled(long nativeHandle);

    private native int nativeJoinChannel(long nativeHandle, byte[] appContext, String token, String channelName, String info, int uid, Object options);

    private native int nativeJoinChannelWithUserAccount(long nativeHandle, String token, String channelName, String userAccount, Object options);

    private native int nativeLeaveChannel(long nativeHandle);

    static native int nativeLog(int level, String msg);

    private native String nativeMakeQualityReportUrl(long nativeHandle, String channel, int listenerUid, int speakerUid, int format);

    private native int nativeMuteAllRemoteVideoStreams(long nativeHandle, boolean muted);

    private native int nativeMuteLocalVideoStream(long nativeHandle, boolean muted);

    private native long nativeObjectInit(Object context, String appId, String deviceId, String deviceInfo, String systemInfo, String appStorageDir, String cacheDir, String pluginDir);

    private native long nativeObjectInitWithConfig(Object config);

    private native int nativePullAudioFrame(long nativeHandle, byte[] data, int length, int channels);

    private native int nativePushExternalAudioFrameRawData(long nativeHandle, byte[] data, long timestamp, int frequency, int channels);

    private native int nativeRate(long nativeHandle, String callId, int rating, String description);

    private native int nativeRegisterAudioFrameObserver(long nativeHandle, Object observer);

    private native int nativeRegisterLocalUserAccount(long nativeHandle, String appId, String userAccount);

    private native int nativeRegisterMediaMetadataObserver(long nativeHandle, Object observer, int type);

    private native int nativeRemoveInjectStreamUrl(long nativeHandle, String url);

    private native int nativeRemovePublishStreamUrl(long nativeHandle, String url);

    private native int nativeRemoveVideoReceiveTrack(long nativeHandle, int uid);

    private native int nativeRenewChannelKey(long nativeHandle, String channelKey);

    private native int nativeRenewToken(long nativeHandle, String token);

    private native int nativeRtcChannelRelease(long nativeHandle);

    private native int nativeSendCustomReportMessage(long nativeHandle, String id, String category, String event, String label, int value);

    private native int nativeSendStreamMessage(long nativeHandle, int streamId, byte[] data);

    private native int nativeSetApiCallMode(long nativeHandle, int syncCallTimeout);

    private native int nativeSetAppType(long nativeHandle, int appType);

    private native int nativeSetAudioProfile(long nativeHandle, int profile, int scenario);

    private native int nativeSetBeautyEffectOptions(long nativeHandle, boolean enabled, int contrastLevel, float lighteningLevel, float smoothnessLevel, float rednessLevel);

    private native int nativeSetChannelProfile(long nativeHandle, int profile);

    private native int nativeSetClientRole(long nativeHandle, int role);

    private native int nativeSetClientRoleOptions(long nativeHandle, int role, Object options);

    private native int nativeSetCloudProxy(long nativeHandle, int proxyType);

    private native int nativeSetDefaultAudioRoutetoSpeakerphone(long nativeHandle, boolean defaultToSpeaker);

    private native int nativeSetEGL10Context(long nativeHandle, EGLContext sharedContext);

    private native int nativeSetEGL10TextureId(long nativeHandle, int id, EGLContext sharedContext, int format, int width, int height, long ts, float[] matrix);

    private native int nativeSetEGL14Context(long nativeHandle, android.opengl.EGLContext sharedContext);

    private native int nativeSetEGL14TextureId(long nativeHandle, int id, android.opengl.EGLContext sharedContext, int format, int width, int height, long ts, float[] matrix);

    private native int nativeSetEnableSpeakerphone(long nativeHandle, boolean speakerOn);

    private native int nativeSetEncryptionSecret(long nativeHandle, String secret);

    private native int nativeSetLiveTranscoding(long nativeHandle, byte[] transcoding);

    private native int nativeSetLocalVideoMirrorMode(long nativeHandle, int mirrorMode);

    private native int nativeSetParameters(long nativeHandle, String parameters);

    private native int nativeSetProfile(long nativeHandle, String profile, boolean merge);

    private native int nativeSetRemoteRenderMode(long nativeHandle, int uid, int renderMode);

    private native int nativeSetRemoteRenderModeWithMirrorMode(long nativeHandle, int uid, int renderMode, int mirrorMode);

    private native int nativeSetRemoteUserPriority(long nativeHandle, int uid, int userPriority);

    private native int nativeSetScreenCaptureContentHint(long nativeHandle, int hint);

    private native int nativeSetVideoEncoderConfiguration(long nativeHandle, int width, int height, int frameRate, int minFrameRate, int bitrate, int minBitrate, int orientationMode, int degradationPrefer, int mirrorMode);

    private native int nativeSetVideoProfileEx(long nativeHandle, int width, int height, int frameRate, int bitrate);

    private native int nativeSetupVideoLocal(long nativeHandle, View view, int renderMode, int mirrorMode);

    private native int nativeSetupVideoRemote(long nativeHandle, View view, int renderMode, String channel, int uid, int mirrorMode);

    private native int nativeStartChannelMediaRelay(long nativeHandle, byte[] channelMediaRelayInfos);

    private native int nativeStartDumpVideoReceiveTrack(long nativeHandle, int uid, String dumpFile);

    private native int nativeStartEchoTest(long nativeHandle, byte[] appContext);

    private native int nativeStartEchoTestWithInterval(long nativeHandle, byte[] appContext, int intervalInSeconds);

    private native int nativeStartLastmileProbeTest(long nativeHandle, byte[] appContext, boolean probeUplink, boolean probeDownlink, int expectedUplinkBitrate, int expectedDownlinkBitrate);

    private native int nativeStartPreview(long nativeHandle);

    private native int nativeStopChannelMediaRelay(long nativeHandle);

    private native int nativeStopDumpVideoReceiveTrack(long nativeHandle);

    private native int nativeStopEchoTest(long nativeHandle);

    private native int nativeStopLastmileProbeTest(long nativeHandle);

    private native int nativeSwitchCamera(long nativeHandle);

    private native int nativeSwitchCameraByDirection(long nativeHandle, int position);

    private native int nativeSwitchChannel(long nativeHandle, String token, String channelName, Object options);

    private native int nativeUpdateChannelMediaRelay(long nativeHandle, byte[] channelMediaRelayInfos);

    private native String nativeUploadLogFile(long nativeHandle);

    private void onLogEvent(int level, String message) {
    }

    private native int setExtVideoSource(long nativeHandle, int enable, int pushMode);

    private int setParameter(String key, boolean value) {
        return setParameters(formatString("{\"%s\":%b}", key, Boolean.valueOf(value)));
    }

    private int setParameterObject(String key, String value) {
        return setParameters(formatString("{\"%s\":%s}", key, value));
    }

    private int setVideoRotateCapturedFrames(int degree, int rotation) {
        return setParameterObject("che.video.local.rotate_video", formatString("{\"degree\":%d,\"rotation\":%d}", Integer.valueOf(degree), Integer.valueOf(rotation)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int addVideoWatermark(AgoraImage watermark) {
        String str;
        WatermarkOptions watermarkOptions;
        if (watermark != null) {
            str = watermark.url;
            watermarkOptions = new WatermarkOptions();
            watermarkOptions.visibleInPreview = false;
            WatermarkOptions.Rectangle rectangle = new WatermarkOptions.Rectangle(watermark.f3244x, watermark.f3245y, watermark.width, watermark.height);
            watermarkOptions.positionInLandscapeMode = rectangle;
            watermarkOptions.positionInPortraitMode = rectangle;
        } else {
            str = null;
            watermarkOptions = null;
        }
        return addVideoWatermark(str, watermarkOptions);
    }

    @Override // io.agora.rtc.RtcEngine
    public int adjustUserPlaybackSignalVolume(int uid, int volume) {
        return setParameters(formatString("{\"che.audio.playout.uid.volume\":{\"uid\":%d,\"volume\":%d}}", Long.valueOf(((long) uid) & 4294967295L), Integer.valueOf(volume)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int createDataStream(boolean reliable, boolean ordered) {
        return nativeCreateDataStream(this.mNativeHandle, reliable, ordered);
    }

    @Override // io.agora.rtc.RtcEngine
    public RtcChannel createRtcChannel(String channelId) {
        if (channelId == null || channelId.length() <= 0) {
            return null;
        }
        synchronized (this) {
            try {
                RtcChannelImpl rtcChannelImpl = this.mDefaultRtcChannel;
                if (rtcChannelImpl != null && rtcChannelImpl.channelId().equals(channelId) && this.mDefaultRtcChannel.isInitialized()) {
                    return this.mDefaultRtcChannel;
                }
                for (RtcChannelImpl rtcChannelImpl2 : this.mRtcChannels) {
                    if (rtcChannelImpl2.channelId() != null && rtcChannelImpl2.channelId().equals(channelId) && rtcChannelImpl2.isInitialized()) {
                        return rtcChannelImpl2;
                    }
                }
                long jNativeCreateRtcChannel = nativeCreateRtcChannel(this.mNativeHandle, channelId);
                if (jNativeCreateRtcChannel == 0) {
                    return null;
                }
                RtcChannelImpl rtcChannelImpl3 = new RtcChannelImpl();
                rtcChannelImpl3.initialize(this, jNativeCreateRtcChannel);
                this.mRtcChannels.add(rtcChannelImpl3);
                return rtcChannelImpl3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.agora.rtc.RtcEngine
    public int disableAudio() {
        Boolean bool = Boolean.FALSE;
        return setParameters(formatString("{\"rtc.audio.enabled\":%b, \"che.audio.enable.recording.device\":%b}", bool, bool));
    }

    @Override // io.agora.rtc.RtcEngine
    public int disableVideo() {
        this.mLocalVideoEnabled = false;
        return nativeDisableVideo(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableAudio() {
        Boolean bool = Boolean.TRUE;
        return setParameters(formatString("{\"rtc.audio.enabled\":%b, \"che.audio.enable.recording.device\":%b}", bool, bool));
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableAudioVolumeIndication(int interval, int smooth, boolean report_vad) {
        if (interval < 0) {
            interval = 0;
        }
        return report_vad ? setParameterObject("che.audio.volume_indication", formatString("{\"interval\":%d,\"smooth\":%d,\"vad\":%d}", Integer.valueOf(interval), Integer.valueOf(smooth), 1)) : setParameterObject("che.audio.volume_indication", formatString("{\"interval\":%d,\"smooth\":%d,\"vad\":%d}", Integer.valueOf(interval), Integer.valueOf(smooth), 0));
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableDualStreamMode(boolean z6) {
        return setParameters(String.format("{\"rtc.dual_stream_mode\":%b,\"che.video.enableLowBitRateStream\":%d}", Boolean.valueOf(z6), Integer.valueOf(z6 ? 1 : 0)));
    }

    public int enableRemoteVideo(boolean enabled, int uid) {
        return setParameterObject("che.video.peer.receive", formatString("{\"enable\":%b, \"uid\":%d}", Boolean.valueOf(enabled), Long.valueOf(((long) uid) & 4294967295L)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableVideo() {
        this.mLocalVideoEnabled = true;
        return nativeEnableVideo(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableWebSdkInteroperability(boolean enabled) {
        return setParameters(String.format("{\"rtc.video.web_h264_interop_enable\":%b,\"che.video.web_h264_interop_enable\":%b}", Boolean.valueOf(enabled), Boolean.valueOf(enabled)));
    }

    @Override // io.agora.rtc.RtcEngine
    public IAudioEffectManager getAudioEffectManager() {
        return this;
    }

    protected void handleChannelEvent(int eventId, byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        if (handler == null || rtcChannel == null) {
            return;
        }
        if (eventId == 101) {
            RtcEngineMessage.PError pError = new RtcEngineMessage.PError();
            pError.unmarshall(evt);
            int i10 = pError.err;
            if ((i10 >= 1151 && i10 <= 1164) || (i10 >= 1001 && i10 < 1033 && getParameters("[\"che.audio.adm.active\"]").equals(ExifInterface.GPS_MEASUREMENT_2D))) {
                Logging.e(TAG, "ADM Error code " + pError.err + " restart ADM");
                setParameter("che.audio.opensl", false);
                setParameters("che.audio.restart");
            }
            handler.onChannelError(rtcChannel, pError.err);
        }
        if (eventId == 102) {
            RtcEngineMessage.PError pError2 = new RtcEngineMessage.PError();
            pError2.unmarshall(evt);
            int i11 = pError2.err;
            if ((i11 == 1019 || i11 == 1052) && getParameters("[\"che.audio.adm.active\"]").equals(ExifInterface.GPS_MEASUREMENT_2D)) {
                Logging.e(TAG, "ADM Error code " + pError2.err + " restart ADM");
                setParameter("che.audio.opensl", false);
                setParameters("che.audio.restart");
            }
            handler.onChannelWarning(rtcChannel, pError2.err);
            return;
        }
        if (eventId == 1108) {
            handler.onRequestToken(rtcChannel);
            return;
        }
        if (eventId == 1109) {
            RtcEngineMessage.PClientRoleChanged pClientRoleChanged = new RtcEngineMessage.PClientRoleChanged();
            pClientRoleChanged.unmarshall(evt);
            handler.onClientRoleChanged(rtcChannel, pClientRoleChanged.oldRole, pClientRoleChanged.newRole);
            return;
        }
        if (eventId == 1112) {
            handler.onTranscodingUpdated(rtcChannel);
            return;
        }
        if (eventId == 1119) {
            RtcEngineMessage.PRtmpStreamingState pRtmpStreamingState = new RtcEngineMessage.PRtmpStreamingState();
            pRtmpStreamingState.unmarshall(evt);
            handler.onRtmpStreamingStateChanged(rtcChannel, pRtmpStreamingState.url, pRtmpStreamingState.state, pRtmpStreamingState.error);
            return;
        }
        if (eventId == 13001) {
            RtcEngineMessage.PMediaResJoinMedia pMediaResJoinMedia = new RtcEngineMessage.PMediaResJoinMedia();
            pMediaResJoinMedia.unmarshall(evt);
            if (pMediaResJoinMedia.firstSuccess) {
                handler.onJoinChannelSuccess(rtcChannel, pMediaResJoinMedia.uid, pMediaResJoinMedia.elapsed);
                return;
            } else {
                handler.onRejoinChannelSuccess(rtcChannel, pMediaResJoinMedia.uid, pMediaResJoinMedia.elapsed);
                return;
            }
        }
        if (eventId == 13010) {
            RtcEngineMessage.PMediaResRtcStats pMediaResRtcStats = new RtcEngineMessage.PMediaResRtcStats();
            pMediaResRtcStats.unmarshall(evt);
            updateRtcStats(pMediaResRtcStats);
            handler.onRtcStats(rtcChannel, getRtcStats());
            return;
        }
        if (eventId == 13013) {
            RtcEngineMessage.PMediaResUserJoinedEvent pMediaResUserJoinedEvent = new RtcEngineMessage.PMediaResUserJoinedEvent();
            pMediaResUserJoinedEvent.unmarshall(evt);
            handler.onUserJoined(rtcChannel, pMediaResUserJoinedEvent.uid, pMediaResUserJoinedEvent.elapsed);
            return;
        }
        if (eventId == 14004) {
            onRtcChannelRemoteVideoStat(evt, handler, rtcChannel);
            return;
        }
        if (eventId == 14016) {
            RtcEngineMessage.PActiveSpeaker pActiveSpeaker = new RtcEngineMessage.PActiveSpeaker();
            pActiveSpeaker.unmarshall(evt);
            handler.onActiveSpeaker(rtcChannel, pActiveSpeaker.uid);
            return;
        }
        if (eventId == 14028) {
            RtcEngineMessage.PConnectionState pConnectionState = new RtcEngineMessage.PConnectionState();
            pConnectionState.unmarshall(evt);
            handler.onConnectionStateChanged(rtcChannel, pConnectionState.state, pConnectionState.reason);
            return;
        }
        if (eventId == 14030) {
            onRtcChannelRemoteAudioStat(evt, handler, rtcChannel);
            return;
        }
        if (eventId == 14040) {
            onRtcChannelRemoteAudioStateChanged(evt, handler, rtcChannel);
            return;
        }
        if (eventId == 1116) {
            RtcEngineMessage.PStreamInjectedStatus pStreamInjectedStatus = new RtcEngineMessage.PStreamInjectedStatus();
            pStreamInjectedStatus.unmarshall(evt);
            handler.onStreamInjectedStatus(rtcChannel, pStreamInjectedStatus.url, pStreamInjectedStatus.uid, pStreamInjectedStatus.status);
            return;
        }
        if (eventId == 1117) {
            RtcEngineMessage.PPrivilegeWillExpire pPrivilegeWillExpire = new RtcEngineMessage.PPrivilegeWillExpire();
            pPrivilegeWillExpire.unmarshall(evt);
            handler.onTokenPrivilegeWillExpire(rtcChannel, pPrivilegeWillExpire.token);
            return;
        }
        if (eventId == 14008) {
            handler.onConnectionLost(rtcChannel);
            return;
        }
        if (eventId == 14009) {
            onRtcChannelStreamMessage(evt, handler, rtcChannel);
            return;
        }
        if (eventId == 14012) {
            onRtcChannelStreamMessageError(evt, handler, rtcChannel);
            return;
        }
        if (eventId == 14013) {
            onRtcChannelVideoSizeChanged(evt, handler, rtcChannel);
            return;
        }
        if (eventId == 14022) {
            RtcEngineMessage.PLocalFallbackStatus pLocalFallbackStatus = new RtcEngineMessage.PLocalFallbackStatus();
            pLocalFallbackStatus.unmarshall(evt);
            handler.onLocalPublishFallbackToAudioOnly(rtcChannel, pLocalFallbackStatus.state);
            return;
        }
        if (eventId == 14023) {
            RtcEngineMessage.PMediaResUserState pMediaResUserState = new RtcEngineMessage.PMediaResUserState();
            pMediaResUserState.unmarshall(evt);
            handler.onRemoteSubscribeFallbackToAudioOnly(rtcChannel, pMediaResUserState.uid, pMediaResUserState.state);
            return;
        }
        switch (eventId) {
            case RtcEngineEvent.EvtType.EVT_LEAVE_CHANNEL /* 13006 */:
                Context context = this.mContext.get();
                if (context != null) {
                    getAudioManager(context).setMode(0);
                }
                RtcEngineMessage.PMediaResRtcStats pMediaResRtcStats2 = new RtcEngineMessage.PMediaResRtcStats();
                pMediaResRtcStats2.unmarshall(evt);
                updateRtcStats(pMediaResRtcStats2);
                handler.onLeaveChannel(rtcChannel, getRtcStats());
                break;
            case RtcEngineEvent.EvtType.EVT_NETWORK_QUALITY /* 13007 */:
                RtcEngineMessage.PMediaResNetworkQuality pMediaResNetworkQuality = new RtcEngineMessage.PMediaResNetworkQuality();
                pMediaResNetworkQuality.unmarshall(evt);
                handler.onNetworkQuality(rtcChannel, pMediaResNetworkQuality.uid, pMediaResNetworkQuality.txQuality, pMediaResNetworkQuality.rxQuality);
                break;
            case RtcEngineEvent.EvtType.EVT_USER_OFFLINE /* 13008 */:
                RtcEngineMessage.PMediaResUserOfflineEvent pMediaResUserOfflineEvent = new RtcEngineMessage.PMediaResUserOfflineEvent();
                pMediaResUserOfflineEvent.unmarshall(evt);
                handler.onUserOffline(rtcChannel, pMediaResUserOfflineEvent.uid, pMediaResUserOfflineEvent.reason);
                break;
            default:
                switch (eventId) {
                    case RtcEngineEvent.EvtType.EVT_REMOTE_VIDEO_STATE_CHANGED_EXT /* 14036 */:
                        onRtcChannelRemoteVideoStateChangedExt(evt, handler, rtcChannel);
                        break;
                    case RtcEngineEvent.EvtType.EVT_CROSS_CHANNEL_STATE /* 14037 */:
                        onRtcChannelChannelMediaRelayStateChanged(evt, handler, rtcChannel);
                        break;
                    case RtcEngineEvent.EvtType.EVT_CROSS_CHANNEL_EVENT /* 14038 */:
                        onRtcChannelChannelMediaRelayEvent(evt, handler, rtcChannel);
                        break;
                    default:
                        switch (eventId) {
                            case RtcEngineEvent.EvtType.EVT_PUBLISH_AUDIO_STATE_CHANGED /* 14045 */:
                                onRtcChannelAudioPublishStateChanged(evt, handler, rtcChannel);
                                break;
                            case RtcEngineEvent.EvtType.EVT_PUBLISH_VIDEO_STATE_CHANGED /* 14046 */:
                                onRtcChannelVideoPublishStateChanged(evt, handler, rtcChannel);
                                break;
                            case RtcEngineEvent.EvtType.EVT_SUBSCRIBE_AUDIO_STATE_CHANGED /* 14047 */:
                                onRtcChannelAudioSubscribeStateChanged(evt, handler, rtcChannel);
                                break;
                            case RtcEngineEvent.EvtType.EVT_SUBSCRIBE_VIDEO_STATE_CHANGED /* 14048 */:
                                onRtcChannelVideoSubscribeStateChanged(evt, handler, rtcChannel);
                                break;
                            case RtcEngineEvent.EvtType.EVT_USER_SUPER_RESOLUTION_ENABLED /* 14049 */:
                                onRtcChannelUserSuperResolutionEnabledExt(evt, handler, rtcChannel);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // io.agora.rtc.RtcEngine
    public int joinChannel(String key, String channelName, String optionalInfo, int optionalUid) {
        ChannelMediaOptions channelMediaOptions = new ChannelMediaOptions();
        channelMediaOptions.autoSubscribeAudio = true;
        channelMediaOptions.autoSubscribeVideo = true;
        return joinChannel(key, channelName, optionalInfo, optionalUid, channelMediaOptions);
    }

    @Override // io.agora.rtc.RtcEngine
    public int joinChannelWithUserAccount(String token, String channelId, String userAccount) {
        ChannelMediaOptions channelMediaOptions = new ChannelMediaOptions();
        channelMediaOptions.autoSubscribeAudio = true;
        channelMediaOptions.autoSubscribeVideo = true;
        return joinChannelWithUserAccount(token, channelId, userAccount, channelMediaOptions);
    }

    @Override // io.agora.rtc.RtcEngine
    public int leaveChannel() {
        synchronized (this) {
            try {
                if (this.mDefaultRtcChannel != null) {
                    this.mDefaultRtcChannel = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        doLeaveChannelCheck();
        return nativeLeaveChannel(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public int muteLocalAudioStream(boolean muted) {
        return setParameters(formatString("{\"rtc.audio.mute_me\":%b, \"che.audio.mute_me\":%b}", Boolean.valueOf(muted), Boolean.valueOf(muted)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int muteRemoteAudioStream(int uid, boolean muted) {
        return setParameters(formatString("{\"rtc.audio.mute_peer\":{\"uid\":%d,\"mute\":%b}}", Long.valueOf(((long) uid) & 4294967295L), Boolean.valueOf(muted)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int muteRemoteVideoStream(int uid, boolean muted) {
        return setParameters(formatString("{\"rtc.video.mute_peer\":{\"uid\":%d,\"mute\":%b}}", Long.valueOf(((long) uid) & 4294967295L), Boolean.valueOf(muted)));
    }

    @Override // io.agora.rtc.IAudioEffectManager
    @Deprecated
    public int playEffect(int soundId, String filePath, int loopCount, double pitch, double pan, double gain) {
        return playEffect(soundId, filePath, loopCount, pitch, pan, gain, false);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setAudioEffectPreset(int preset) {
        if (preset == 0) {
            return setParameter("che.audio.morph.voice_changer", 0);
        }
        if (preset == 33620224) {
            return setParameter("che.audio.morph.reverb_preset", 1);
        }
        if (preset == 33620480) {
            return setParameter("che.audio.morph.reverb_preset", 2);
        }
        if (preset == 33620736) {
            return setParameter("che.audio.morph.reverb_preset", 5);
        }
        if (preset == 33620992) {
            return setParameter("che.audio.morph.reverb_preset", 8);
        }
        if (preset == 33621248) {
            return setParameter("che.audio.morph.virtual_stereo", 1);
        }
        if (preset == 33621504) {
            return setParameter("che.audio.morph.voice_changer", 15);
        }
        if (preset == 33621760) {
            return setParameter("che.audio.morph.voice_changer", 5);
        }
        if (preset == 33622016) {
            return setParameter("che.audio.morph.threedim_voice", 10);
        }
        if (preset == 33685760) {
            return setParameter("che.audio.morph.reverb_preset", 3);
        }
        if (preset == 33686016) {
            return setParameter("che.audio.morph.voice_changer", 1);
        }
        if (preset == 33686272) {
            return setParameter("che.audio.morph.voice_changer", 2);
        }
        if (preset == 33686528) {
            return setParameter("che.audio.morph.reverb_preset", 4);
        }
        if (preset == 33686784) {
            return setParameter("che.audio.morph.voice_changer", 3);
        }
        if (preset == 33687040) {
            return setParameter("che.audio.morph.voice_changer", 4);
        }
        if (preset == 33687296) {
            return setParameter("che.audio.morph.voice_changer", 6);
        }
        if (preset == 33751296) {
            return setParameter("che.audio.morph.reverb_preset", 7);
        }
        if (preset == 33751552) {
            return setParameter("che.audio.morph.reverb_preset", 6);
        }
        if (preset == 33816832) {
            return setParameterObject("che.audio.morph.electronic_voice", formatString("{\"key\":%d,\"value\":%d}", 1, 4));
        }
        return -2;
    }

    @Override // io.agora.rtc.RtcEngine
    public int setCameraExposurePosition(float positionXinView, float positionYinView) {
        return setParameterObject("che.video.camera.exposure", formatString("{\"x\":%f,\"y\":%f,\"preview\":%b}", Float.valueOf(positionXinView), Float.valueOf(positionYinView), Boolean.TRUE));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setCameraFocusPositionInPreview(float positionX, float positionY) {
        return setParameterObject("che.video.camera.focus", formatString("{\"x\":%f,\"y\":%f,\"preview\":%b}", Float.valueOf(positionX), Float.valueOf(positionY), Boolean.TRUE));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setClientRole(int role) {
        return nativeSetClientRole(this.mNativeHandle, role);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setDefaultAudioRoutetoSpeakerphone(boolean defaultToSpeaker) {
        Logging.i(String.format("API call to setDefaultAudioRoutetoSpeakerphone :%b", Boolean.valueOf(defaultToSpeaker)));
        return nativeSetDefaultAudioRoutetoSpeakerphone(this.mNativeHandle, defaultToSpeaker);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setEnableSpeakerphone(boolean speakerOn) {
        Logging.i(String.format("API call to setEnableSpeakerphone to %b", Boolean.valueOf(speakerOn)));
        return nativeSetEnableSpeakerphone(this.mNativeHandle, speakerOn);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setExternalAudioSink(boolean enabled, int sampleRate, int channels) {
        if (channels != 1 && channels != 2) {
            return -1;
        }
        if (sampleRate != 8000 && sampleRate != 16000 && sampleRate != 32000 && sampleRate != 44100 && sampleRate != 48000) {
            return -2;
        }
        this.mExAudioSinkChannels = channels;
        this.mExAudioSinkSampleRate = sampleRate;
        return enabled ? setParameters(formatString("{\"che.audio.external_render\":%b,\"che.audio.external_render.pull\":%b,\"che.audio.set_render_raw_audio_format\":{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d}}", Boolean.valueOf(enabled), Boolean.valueOf(enabled), Integer.valueOf(sampleRate), Integer.valueOf(channels), 0)) : setParameters(formatString("{\"che.audio.external_render\":%b,\"che.audio.external_render\":%b,\"che.audio.external_render.pull\":%b}", Boolean.valueOf(enabled), Boolean.valueOf(enabled), Boolean.valueOf(enabled)));
    }

    @Override // io.agora.rtc.RtcEngine
    public void setExternalVideoSource(boolean z6, boolean z10, boolean z11) {
        if (z6) {
            this.mVideoSourceType = 3;
        } else {
            this.mVideoSourceType = 1;
        }
        if (z10) {
            if (z6) {
                setParameter("che.video.enable_external_texture_input", true);
            } else {
                setParameter("che.video.enable_external_texture_input", false);
                Logging.w("setExternalVideoSource: on Android, texture mode cannot be disabled once enabled.");
            }
        }
        setExtVideoSource(this.mNativeHandle, z6 ? 1 : 0, z11 ? 1 : 0);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setHighQualityAudioParameters(boolean fullband, boolean stereo, boolean fullBitrate) {
        return setParameterObject("che.audio.codec.hq", formatString("{\"fullband\":%b,\"stereo\":%b,\"fullBitrate\":%b}", Boolean.valueOf(fullband), Boolean.valueOf(stereo), Boolean.valueOf(fullBitrate)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLocalRenderMode(int renderMode) {
        return setRemoteRenderMode(0, renderMode);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLocalVoiceEqualization(int bandFrequency, int bandGain) {
        return setParameterObject("che.audio.morph.equalization", formatString("{\"index\":%d,\"gain\":%d}", Integer.valueOf(bandFrequency), Integer.valueOf(bandGain)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLocalVoiceReverb(int reverbKey, int value) {
        return setParameterObject("che.audio.morph.reverb", formatString("{\"key\":%d,\"value\":%d}", Integer.valueOf(reverbKey), Integer.valueOf(value)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setMixedAudioFrameParameters(int sampleRate, int samplesPerCall) {
        return setParameterObject("che.audio.set_mixed_raw_audio_format", formatString("{\"sampleRate\":%d,\"samplesPerCall\":%d}", Integer.valueOf(sampleRate), Integer.valueOf(samplesPerCall)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setPlaybackAudioFrameParameters(int sampleRate, int channel, int mode, int samplesPerCall) {
        return setParameterObject("che.audio.set_render_raw_audio_format", formatString("{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d,\"samplesPerCall\":%d}", Integer.valueOf(sampleRate), Integer.valueOf(channel), Integer.valueOf(mode), Integer.valueOf(samplesPerCall)));
    }

    @Override // io.agora.rtc.RtcEngine
    @Deprecated
    public void setPreferHeadset(boolean enabled) {
    }

    @Override // io.agora.rtc.RtcEngine
    public int setRecordingAudioFrameParameters(int sampleRate, int channel, int mode, int samplesPerCall) {
        return setParameterObject("che.audio.set_capture_raw_audio_format", formatString("{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d,\"samplesPerCall\":%d}", Integer.valueOf(sampleRate), Integer.valueOf(channel), Integer.valueOf(mode), Integer.valueOf(samplesPerCall)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setRemoteRenderMode(int uid, int renderMode) {
        return nativeSetRemoteRenderMode(this.mNativeHandle, (int) (((long) uid) & 4294967295L), renderMode);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setRemoteVideoStreamType(int uid, int streamType) {
        long j6 = ((long) uid) & 4294967295L;
        return setParameters(formatString("{\"rtc.video.set_remote_video_stream\":{\"uid\":%d,\"stream\":%d},\"che.video.setstream\":{\"uid\":%d,\"stream\":%d}}", Long.valueOf(j6), Integer.valueOf(streamType), Long.valueOf(j6), Integer.valueOf(streamType)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setRemoteVoicePosition(int uid, double pan, double gain) {
        return setParameterObject("che.audio.game_place_sound_position", formatString("{\"uid\":%d,\"pan\":%f,\"gain\":%f}", Long.valueOf(((long) uid) & 4294967295L), Double.valueOf(pan), Double.valueOf(gain)));
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int setTextureId(int id, EGLContext sharedContext, int width, int height, long ts) {
        return nativeSetEGL10TextureId(this.mNativeHandle, id, sharedContext, 10, width, height, ts, sMatrix);
    }

    public int setTextureIdWithMatrix(int id, EGLContext sharedContext, int format, int width, int height, long ts, float[] matrix) {
        if (matrix == null) {
            return nativeSetEGL10TextureId(this.mNativeHandle, id, sharedContext, format, width, height, ts, sMatrix);
        }
        if (matrix.length < 16) {
            return -2;
        }
        return nativeSetEGL10TextureId(this.mNativeHandle, id, sharedContext, format, width, height, ts, matrix);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setVideoProfile(int profile, boolean swapWidthAndHeight) {
        if (profile < 0) {
            return -2;
        }
        return setParameters(formatString("{\"rtc.video.profile\":[%d,%b]}", Integer.valueOf(profile), Boolean.valueOf(swapWidthAndHeight)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setVideoQualityParameters(boolean preferFrameRateOverImageQuality) {
        return setParameters(String.format("{\"rtc.video.prefer_frame_rate\":%b,\"che.video.prefer_frame_rate\":%b}", Boolean.valueOf(preferFrameRateOverImageQuality), Boolean.valueOf(preferFrameRateOverImageQuality)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setVoiceBeautifierPreset(int preset) {
        if (preset == 0) {
            return setParameter("che.audio.morph.voice_changer", 0);
        }
        if (preset == 16843008) {
            return setParameter("che.audio.morph.beauty_voice", 1);
        }
        if (preset == 16843264) {
            return setParameter("che.audio.morph.beauty_voice", 2);
        }
        if (preset == 16843520) {
            return setParameter("che.audio.morph.beauty_voice", 3);
        }
        if (preset == 16908544) {
            return setParameterObject("che.audio.morph.beauty_sing", formatString("{\"key\":%d,\"value\":%d}", 1, 1));
        }
        if (preset == 16908800) {
            return setParameterObject("che.audio.morph.beauty_sing", formatString("{\"key\":%d,\"value\":%d}", 2, 1));
        }
        if (preset == 16974080) {
            return setParameter("che.audio.morph.voice_changer", 7);
        }
        if (preset == 16974336) {
            return setParameter("che.audio.morph.voice_changer", 8);
        }
        if (preset == 16974592) {
            return setParameter("che.audio.morph.voice_changer", 9);
        }
        if (preset == 16974848) {
            return setParameter("che.audio.morph.voice_changer", 10);
        }
        if (preset == 16975104) {
            return setParameter("che.audio.morph.voice_changer", 11);
        }
        if (preset == 16975360) {
            return setParameter("che.audio.morph.voice_changer", 12);
        }
        if (preset == 16975616) {
            return setParameter("che.audio.morph.voice_changer", 13);
        }
        if (preset == 16975872) {
            return setParameter("che.audio.morph.voice_changer", 14);
        }
        return -2;
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int setVolumeOfEffect(int soundId, double volume) {
        return setParameterObject("che.audio.game_adjust_effect_volume", formatString("{\"soundId\":%d,\"gain\":%f}", Integer.valueOf(soundId), Double.valueOf(volume)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int startAudioMixing(String filePath, boolean loopback, boolean replace, int cycle) {
        return setParameterObject("che.audio.start_file_as_playout", formatString("{\"filePath\":\"%s\", \"loopback\":%b, \"replace\":%b, \"cycle\":%d}", filePath, Boolean.valueOf(loopback), Boolean.valueOf(replace), Integer.valueOf(cycle)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int startAudioRecording(String filePath, int quality) {
        return startAudioRecording(filePath, 32000, quality);
    }

    @Override // io.agora.rtc.RtcEngine
    public int startChannelMediaRelay(ChannelMediaRelayConfiguration channelMediaRelayConfiguration) {
        if (channelMediaRelayConfiguration == null || channelMediaRelayConfiguration.getDestChannelMediaInfos().size() == 0 || channelMediaRelayConfiguration.getSrcChannelMediaInfo() == null) {
            return -2;
        }
        for (Map.Entry<String, ChannelMediaInfo> entry : channelMediaRelayConfiguration.getDestChannelMediaInfos().entrySet()) {
            if (entry.getValue().channelName == null || entry.getValue().channelName.length() == 0) {
                return -2;
            }
        }
        return nativeStartChannelMediaRelay(this.mNativeHandle, new RtcEngineMessage.PChannelMediaRelayConfiguration().marshall(channelMediaRelayConfiguration));
    }

    @Override // io.agora.rtc.RtcEngine
    public int startEchoTest() {
        Context context = this.mContext.get();
        if (context == null) {
            return -7;
        }
        doMonitorSystemEvent(context);
        return nativeStartEchoTest(this.mNativeHandle, null);
    }

    public int stopRemoteVideo(int uid) {
        return setParameter("che.video.peer.stop_video", ((long) uid) & 4294967295L);
    }

    @Override // io.agora.rtc.RtcEngine
    public int switchCamera() {
        if (this.mVideoSourceType != 1) {
            return -1;
        }
        return nativeSwitchCamera(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public int switchChannel(String key, String channelName) {
        ChannelMediaOptions channelMediaOptions = new ChannelMediaOptions();
        channelMediaOptions.autoSubscribeAudio = true;
        channelMediaOptions.autoSubscribeVideo = true;
        return switchChannel(key, channelName, channelMediaOptions);
    }

    @Override // io.agora.rtc.RtcEngine
    public int updateChannelMediaRelay(ChannelMediaRelayConfiguration channelMediaRelayConfiguration) {
        if (channelMediaRelayConfiguration == null || channelMediaRelayConfiguration.getDestChannelMediaInfos().size() == 0 || channelMediaRelayConfiguration.getSrcChannelMediaInfo() == null) {
            return -2;
        }
        for (Map.Entry<String, ChannelMediaInfo> entry : channelMediaRelayConfiguration.getDestChannelMediaInfos().entrySet()) {
            if (entry.getValue().channelName == null || entry.getValue().channelName.length() == 0) {
                return -2;
            }
        }
        return nativeUpdateChannelMediaRelay(this.mNativeHandle, new RtcEngineMessage.PChannelMediaRelayConfiguration().marshall(channelMediaRelayConfiguration));
    }

    public synchronized void updateRtcStats(RtcEngineMessage.PMediaResRtcStats stats) {
        IRtcEngineEventHandler.RtcStats rtcStats = getRtcStats();
        if (rtcStats == null) {
            return;
        }
        rtcStats.totalDuration = stats.totalDuration;
        rtcStats.txBytes = stats.totalTxBytes;
        rtcStats.rxBytes = stats.totalRxBytes;
        rtcStats.txAudioBytes = stats.txAudioBytes;
        rtcStats.txVideoBytes = stats.txVideoBytes;
        rtcStats.rxAudioBytes = stats.rxAudioBytes;
        rtcStats.rxVideoBytes = stats.rxVideoBytes;
        rtcStats.txKBitRate = stats.txKBitRate;
        rtcStats.rxKBitRate = stats.rxKBitRate;
        rtcStats.txAudioKBitRate = stats.txAudioKBitRate;
        rtcStats.rxAudioKBitRate = stats.rxAudioKBitRate;
        rtcStats.txVideoKBitRate = stats.txVideoKBitRate;
        rtcStats.rxVideoKBitRate = stats.rxVideoKBitRate;
        rtcStats.lastmileDelay = stats.lastmileDelay;
        rtcStats.txPacketLossRate = stats.txPacketLossRate;
        rtcStats.rxPacketLossRate = stats.rxPacketLossRate;
        rtcStats.users = stats.users;
        rtcStats.cpuTotalUsage = ((double) stats.cpuTotalUsage) / 100.0d;
        rtcStats.cpuAppUsage = ((double) stats.cpuAppUsage) / 100.0d;
        rtcStats.gatewayRtt = stats.gatewayRtt;
        rtcStats.memoryAppUsageRatio = stats.memoryAppUsageRatio;
        rtcStats.memoryTotalUsageRatio = stats.memoryTotalUsageRatio;
        rtcStats.memoryAppUsageInKbytes = stats.memoryAppUsageInKbytes;
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int updateSharedContext(EGLContext sharedContext) {
        return nativeSetEGL10Context(this.mNativeHandle, sharedContext);
    }

    private int doCheckPermission(Context context) {
        if (checkVoipPermissions(context, this.mChannelProfile == 1 ? this.mClientRole : 1) == 0) {
            return 0;
        }
        Logging.e(TAG, "can't join channel because no permission");
        return -9;
    }

    private void doMonitorSystemEvent(Context context) {
        WifiManager.WifiLock wifiLock;
        if (context != null && context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) == 0 && Connectivity.getNetworkType(context) == 2 && context.checkPermission("android.permission.ACCESS_WIFI_STATE", Process.myPid(), Process.myUid()) == 0 && (wifiLock = this.mWifiLock) != null) {
            wifiLock.acquire();
            Logging.i(TAG, "hp connection mode detected");
        }
    }

    private void doStopMonitorSystemEvent() {
        WifiManager.WifiLock wifiLock = this.mWifiLock;
        if (wifiLock == null || !wifiLock.isHeld()) {
            return;
        }
        this.mWifiLock.release();
        Logging.i(TAG, "hp connection mode ended");
    }

    private static String formatString(String format, Object... args) {
        return String.format(Locale.US, format, args);
    }

    private String getAssetsCacheFile(Context context, String filePath) {
        try {
            File file = new File(context.getCacheDir(), "wm_" + filePath.replace(File.separator, "_"));
            if (file.exists()) {
                file.delete();
            }
            InputStream inputStreamOpen = context.getAssets().open(filePath);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = inputStreamOpen.read(bArr);
                        if (i10 <= 0) {
                            fileOutputStream.close();
                            inputStreamOpen.close();
                            return file.getAbsolutePath();
                        }
                        fileOutputStream.write(bArr, 0, i10);
                    }
                } catch (Throwable th) {
                    fileOutputStream.close();
                    throw th;
                }
            } catch (Throwable th2) {
                inputStreamOpen.close();
                throw th2;
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private RtcEngineMessage.PVideoNetOptions getOptionsByVideoProfile(int profile) {
        try {
            byte[] bArrNativeGetOptionsByVideoProfile = nativeGetOptionsByVideoProfile(this.mNativeHandle, profile);
            if (bArrNativeGetOptionsByVideoProfile == null) {
                return null;
            }
            RtcEngineMessage.PVideoNetOptions pVideoNetOptions = new RtcEngineMessage.PVideoNetOptions();
            pVideoNetOptions.unmarshall(bArrNativeGetOptionsByVideoProfile);
            return pVideoNetOptions;
        } catch (Exception unused) {
            return null;
        }
    }

    private void initDeviceNotify(Context context) {
        this.filter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        this.filter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
        this.filter.addAction("android.hardware.usb.action.USB_ACCESSORY_ATTACHED");
        this.filter.addAction("android.hardware.usb.action.USB_ACCESSORY_DETACHED");
        this.filter.addAction("android.hardware.usb.action.USB_STATE");
        context.registerReceiver(this.mUsbStateChangeReceiver, this.filter);
    }

    public static synchronized boolean initializeNativeLibs() {
        try {
            if (!sLibLoaded) {
                loadNativeLibrary();
                sLibLoaded = nativeClassInit() == 0;
            }
        } catch (Throwable th) {
            throw th;
        }
        return sLibLoaded;
    }

    public static synchronized void loadNativeLibrary() {
        try {
            System.loadLibrary("agora-core");
            System.loadLibrary("agora-ffmpeg");
            System.loadLibrary("agora-fdkaac");
            System.loadLibrary("agora-mpg123");
            System.loadLibrary("agora-soundtouch");
            System.loadLibrary("agora-rtc-sdk");
            try {
                System.loadLibrary("agora_super_resolution_extension");
                Logging.i(TAG, "Agora super resolution module loaded.");
            } catch (Throwable unused) {
                Logging.e(TAG, "Agora super resolution module load failed.");
            }
            try {
                System.loadLibrary("agora_ai_denoise_extension");
                Logging.i(TAG, "AgoraAI Denoise module loaded.");
            } catch (Throwable unused2) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void onApiCallExecuted(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PApiCallExecuted pApiCallExecuted = new RtcEngineMessage.PApiCallExecuted();
        pApiCallExecuted.unmarshall(evt);
        handler.onApiCallExecuted(pApiCallExecuted.error, pApiCallExecuted.api, pApiCallExecuted.result);
    }

    private void onAudioPublishStateChanged(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PPublishAudioState pPublishAudioState = new RtcEngineMessage.PPublishAudioState();
        pPublishAudioState.unmarshall(evt);
        handler.onAudioPublishStateChanged(pPublishAudioState.channel, pPublishAudioState.oldstate, pPublishAudioState.newstate, pPublishAudioState.elapsed);
    }

    private void onAudioSubscribeStateChanged(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PSubscribeAudioState pSubscribeAudioState = new RtcEngineMessage.PSubscribeAudioState();
        pSubscribeAudioState.unmarshall(evt);
        handler.onAudioSubscribeStateChanged(pSubscribeAudioState.channel, pSubscribeAudioState.uid, pSubscribeAudioState.oldstate, pSubscribeAudioState.newstate, pSubscribeAudioState.elapsed);
    }

    private void onCameraExposureAreaChanged(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PCameraExposureAreaChanged pCameraExposureAreaChanged = new RtcEngineMessage.PCameraExposureAreaChanged();
        pCameraExposureAreaChanged.unmarshall(evt);
        int i10 = pCameraExposureAreaChanged.f3236x;
        int i11 = pCameraExposureAreaChanged.f3237y;
        handler.onCameraExposureAreaChanged(new Rect(i10, i11, pCameraExposureAreaChanged.width + i10, pCameraExposureAreaChanged.height + i11));
    }

    private void onCameraFocusAreaChanged(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PCameraFocusAreaChanged pCameraFocusAreaChanged = new RtcEngineMessage.PCameraFocusAreaChanged();
        pCameraFocusAreaChanged.unmarshall(evt);
        int i10 = pCameraFocusAreaChanged.f3238x;
        int i11 = pCameraFocusAreaChanged.f3239y;
        handler.onCameraFocusAreaChanged(new Rect(i10, i11, pCameraFocusAreaChanged.width + i10, pCameraFocusAreaChanged.height + i11));
    }

    private void onChannelMediaRelayEvent(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PCrossChannelEvent pCrossChannelEvent = new RtcEngineMessage.PCrossChannelEvent();
        pCrossChannelEvent.unmarshall(data);
        handler.onChannelMediaRelayEvent(pCrossChannelEvent.code);
    }

    private void onChannelMediaRelayStateChanged(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PCrossChannelState pCrossChannelState = new RtcEngineMessage.PCrossChannelState();
        pCrossChannelState.unmarshall(data);
        handler.onChannelMediaRelayStateChanged(pCrossChannelState.state, pCrossChannelState.code);
    }

    private void onFacePositionChanged(byte[] evt, IRtcEngineEventHandler handler) {
        if (evt == null) {
            return;
        }
        RtcEngineMessage.PFaceDetectValue pFaceDetectValue = new RtcEngineMessage.PFaceDetectValue();
        pFaceDetectValue.unmarshall(evt);
        this.faceRectArr = null;
        RtcEngineMessage.PFaceDetectValue.FaceRect[] faceRectArr = pFaceDetectValue.rectArr;
        int i10 = 0;
        if (faceRectArr != null && faceRectArr.length > 0) {
            this.faceRectArr = new IRtcEngineEventHandler.AgoraFacePositionInfo[faceRectArr.length];
            while (true) {
                RtcEngineMessage.PFaceDetectValue.FaceRect[] faceRectArr2 = pFaceDetectValue.rectArr;
                if (i10 >= faceRectArr2.length) {
                    break;
                }
                RtcEngineMessage.PFaceDetectValue.FaceRect faceRect = faceRectArr2[i10];
                IRtcEngineEventHandler.AgoraFacePositionInfo agoraFacePositionInfo = new IRtcEngineEventHandler.AgoraFacePositionInfo();
                agoraFacePositionInfo.f3234x = faceRect.f3240x;
                agoraFacePositionInfo.f3235y = faceRect.f3241y;
                agoraFacePositionInfo.width = faceRect.width;
                agoraFacePositionInfo.height = faceRect.height;
                agoraFacePositionInfo.distance = pFaceDetectValue.disArr[i10];
                this.faceRectArr[i10] = agoraFacePositionInfo;
                i10++;
            }
        } else {
            this.faceRectArr = new IRtcEngineEventHandler.AgoraFacePositionInfo[0];
        }
        handler.onFacePositionChanged(pFaceDetectValue.imageWidth, pFaceDetectValue.imageHeight, this.faceRectArr);
    }

    private void onFirstLocalAudioFrame(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PFirstLocalAudioFrame pFirstLocalAudioFrame = new RtcEngineMessage.PFirstLocalAudioFrame();
        pFirstLocalAudioFrame.unmarshall(data);
        handler.onFirstLocalAudioFrame(pFirstLocalAudioFrame.elapsed);
    }

    private void onFirstLocalAudioFramePublished(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PFirstLocalAudioFramePublished pFirstLocalAudioFramePublished = new RtcEngineMessage.PFirstLocalAudioFramePublished();
        pFirstLocalAudioFramePublished.unmarshall(data);
        handler.onFirstLocalAudioFramePublished(pFirstLocalAudioFramePublished.elapsed);
    }

    private void onFirstLocalVideoFrame(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PFirstLocalVideoFrame pFirstLocalVideoFrame = new RtcEngineMessage.PFirstLocalVideoFrame();
        pFirstLocalVideoFrame.unmarshall(evt);
        handler.onFirstLocalVideoFrame(pFirstLocalVideoFrame.width, pFirstLocalVideoFrame.height, pFirstLocalVideoFrame.elapsed);
    }

    private void onFirstLocalVideoFramePublished(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PFirstLocalVideoFramePublished pFirstLocalVideoFramePublished = new RtcEngineMessage.PFirstLocalVideoFramePublished();
        pFirstLocalVideoFramePublished.unmarshall(evt);
        handler.onFirstLocalVideoFramePublished(pFirstLocalVideoFramePublished.elapsed);
    }

    private void onFirstRemoteAudioFrame(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PFirstRemoteAudioFrame pFirstRemoteAudioFrame = new RtcEngineMessage.PFirstRemoteAudioFrame();
        pFirstRemoteAudioFrame.unmarshall(data);
        handler.onFirstRemoteAudioFrame(pFirstRemoteAudioFrame.uid, pFirstRemoteAudioFrame.elapsed);
    }

    private void onFirstRemoteVideoDecoded(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PFirstRemoteVideoDecoded pFirstRemoteVideoDecoded = new RtcEngineMessage.PFirstRemoteVideoDecoded();
        pFirstRemoteVideoDecoded.unmarshall(evt);
        handler.onFirstRemoteVideoDecoded(pFirstRemoteVideoDecoded.uid, pFirstRemoteVideoDecoded.width, pFirstRemoteVideoDecoded.height, pFirstRemoteVideoDecoded.elapsed);
    }

    private void onFirstRemoteVideoFrame(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PFirstRemoteVideoFrame pFirstRemoteVideoFrame = new RtcEngineMessage.PFirstRemoteVideoFrame();
        pFirstRemoteVideoFrame.unmarshall(data);
        handler.onFirstRemoteVideoFrame(pFirstRemoteVideoFrame.uid, pFirstRemoteVideoFrame.width, pFirstRemoteVideoFrame.height, pFirstRemoteVideoFrame.elapsed);
    }

    private void onLocalAudioStat(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PLocalAudioStat pLocalAudioStat = new RtcEngineMessage.PLocalAudioStat();
        pLocalAudioStat.unmarshall(data);
        handler.onLocalAudioStats(pLocalAudioStat.stats);
    }

    private void onLocalVideoStat(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PLocalVideoStat pLocalVideoStat = new RtcEngineMessage.PLocalVideoStat();
        pLocalVideoStat.unmarshall(data);
        handler.onLocalVideoStats(pLocalVideoStat.stats);
    }

    private void onRemoteAudioStat(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PRemoteAudioStat pRemoteAudioStat = new RtcEngineMessage.PRemoteAudioStat();
        pRemoteAudioStat.unmarshall(data);
        IRtcEngineEventHandler.RemoteAudioStats remoteAudioStats = pRemoteAudioStat.stats;
        if (remoteAudioStats.uid == 0) {
            return;
        }
        handler.onRemoteAudioStats(remoteAudioStats);
    }

    private void onRemoteAudioStateChanged(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PRemoteAudioState pRemoteAudioState = new RtcEngineMessage.PRemoteAudioState();
        pRemoteAudioState.unmarshall(evt);
        handler.onRemoteAudioStateChanged(pRemoteAudioState.uid, pRemoteAudioState.state, pRemoteAudioState.reason, pRemoteAudioState.elapsed);
    }

    private void onRemoteVideoStat(byte[] data, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PRemoteVideoStat pRemoteVideoStat = new RtcEngineMessage.PRemoteVideoStat();
        pRemoteVideoStat.unmarshall(data);
        IRtcEngineEventHandler.RemoteVideoStats remoteVideoStats = pRemoteVideoStat.stats;
        if (remoteVideoStats.uid == 0) {
            return;
        }
        handler.onRemoteVideoStats(remoteVideoStats);
    }

    private void onRemoteVideoStateChangedExt(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PRemoteVideoStateExt pRemoteVideoStateExt = new RtcEngineMessage.PRemoteVideoStateExt();
        pRemoteVideoStateExt.unmarshall(evt);
        handler.onRemoteVideoStateChanged(pRemoteVideoStateExt.uid, pRemoteVideoStateExt.state, pRemoteVideoStateExt.reason, pRemoteVideoStateExt.elapsed);
    }

    private void onRtcChannelAudioPublishStateChanged(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PPublishAudioState pPublishAudioState = new RtcEngineMessage.PPublishAudioState();
        pPublishAudioState.unmarshall(evt);
        handler.onAudioPublishStateChanged(rtcChannel, pPublishAudioState.oldstate, pPublishAudioState.newstate, pPublishAudioState.elapsed);
    }

    private void onRtcChannelAudioSubscribeStateChanged(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PSubscribeAudioState pSubscribeAudioState = new RtcEngineMessage.PSubscribeAudioState();
        pSubscribeAudioState.unmarshall(evt);
        handler.onAudioSubscribeStateChanged(rtcChannel, pSubscribeAudioState.uid, pSubscribeAudioState.oldstate, pSubscribeAudioState.newstate, pSubscribeAudioState.elapsed);
    }

    private void onRtcChannelChannelMediaRelayEvent(byte[] data, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PCrossChannelEvent pCrossChannelEvent = new RtcEngineMessage.PCrossChannelEvent();
        pCrossChannelEvent.unmarshall(data);
        handler.onChannelMediaRelayEvent(rtcChannel, pCrossChannelEvent.code);
    }

    private void onRtcChannelChannelMediaRelayStateChanged(byte[] data, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PCrossChannelState pCrossChannelState = new RtcEngineMessage.PCrossChannelState();
        pCrossChannelState.unmarshall(data);
        handler.onChannelMediaRelayStateChanged(rtcChannel, pCrossChannelState.state, pCrossChannelState.code);
    }

    private void onRtcChannelRemoteAudioStat(byte[] data, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PRemoteAudioStat pRemoteAudioStat = new RtcEngineMessage.PRemoteAudioStat();
        pRemoteAudioStat.unmarshall(data);
        IRtcEngineEventHandler.RemoteAudioStats remoteAudioStats = pRemoteAudioStat.stats;
        if (remoteAudioStats.uid == 0) {
            return;
        }
        handler.onRemoteAudioStats(rtcChannel, remoteAudioStats);
    }

    private void onRtcChannelRemoteAudioStateChanged(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PRemoteAudioState pRemoteAudioState = new RtcEngineMessage.PRemoteAudioState();
        pRemoteAudioState.unmarshall(evt);
        handler.onRemoteAudioStateChanged(rtcChannel, pRemoteAudioState.uid, pRemoteAudioState.state, pRemoteAudioState.reason, pRemoteAudioState.elapsed);
    }

    private void onRtcChannelRemoteVideoStat(byte[] data, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PRemoteVideoStat pRemoteVideoStat = new RtcEngineMessage.PRemoteVideoStat();
        pRemoteVideoStat.unmarshall(data);
        IRtcEngineEventHandler.RemoteVideoStats remoteVideoStats = pRemoteVideoStat.stats;
        if (remoteVideoStats.uid == 0) {
            return;
        }
        handler.onRemoteVideoStats(rtcChannel, remoteVideoStats);
    }

    private void onRtcChannelRemoteVideoStateChangedExt(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PRemoteVideoStateExt pRemoteVideoStateExt = new RtcEngineMessage.PRemoteVideoStateExt();
        pRemoteVideoStateExt.unmarshall(evt);
        handler.onRemoteVideoStateChanged(rtcChannel, pRemoteVideoStateExt.uid, pRemoteVideoStateExt.state, pRemoteVideoStateExt.reason, pRemoteVideoStateExt.elapsed);
    }

    private void onRtcChannelStreamMessage(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PStreamMessage pStreamMessage = new RtcEngineMessage.PStreamMessage();
        pStreamMessage.unmarshall(evt);
        handler.onStreamMessage(rtcChannel, pStreamMessage.uid, pStreamMessage.streamId, pStreamMessage.payload);
    }

    private void onRtcChannelStreamMessageError(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PStreamMessageError pStreamMessageError = new RtcEngineMessage.PStreamMessageError();
        pStreamMessageError.unmarshall(evt);
        handler.onStreamMessageError(rtcChannel, pStreamMessageError.uid, pStreamMessageError.streamId, pStreamMessageError.error, pStreamMessageError.missed, pStreamMessageError.cached);
    }

    private void onRtcChannelUserSuperResolutionEnabledExt(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PUserSuperResolutionEnabled pUserSuperResolutionEnabled = new RtcEngineMessage.PUserSuperResolutionEnabled();
        pUserSuperResolutionEnabled.unmarshall(evt);
        handler.onUserSuperResolutionEnabled(rtcChannel, pUserSuperResolutionEnabled.uid, pUserSuperResolutionEnabled.enabled, pUserSuperResolutionEnabled.reason);
    }

    private void onRtcChannelVideoPublishStateChanged(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PPublishVideoState pPublishVideoState = new RtcEngineMessage.PPublishVideoState();
        pPublishVideoState.unmarshall(evt);
        handler.onVideoPublishStateChanged(rtcChannel, pPublishVideoState.oldstate, pPublishVideoState.newstate, pPublishVideoState.elapsed);
    }

    private void onRtcChannelVideoSizeChanged(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PVideoSizeChanged pVideoSizeChanged = new RtcEngineMessage.PVideoSizeChanged();
        pVideoSizeChanged.unmarshall(evt);
        handler.onVideoSizeChanged(rtcChannel, pVideoSizeChanged.uid, pVideoSizeChanged.width, pVideoSizeChanged.height, pVideoSizeChanged.rotation);
    }

    private void onRtcChannelVideoSubscribeStateChanged(byte[] evt, IRtcChannelEventHandler handler, RtcChannelImpl rtcChannel) {
        RtcEngineMessage.PSubscribeVideoState pSubscribeVideoState = new RtcEngineMessage.PSubscribeVideoState();
        pSubscribeVideoState.unmarshall(evt);
        handler.onVideoSubscribeStateChanged(rtcChannel, pSubscribeVideoState.uid, pSubscribeVideoState.oldstate, pSubscribeVideoState.newstate, pSubscribeVideoState.elapsed);
    }

    private void onSpeakersReport(byte[] evt, IRtcEngineEventHandler handler) {
        if (evt == null) {
            return;
        }
        RtcEngineMessage.PMediaResSpeakersReport pMediaResSpeakersReport = new RtcEngineMessage.PMediaResSpeakersReport();
        pMediaResSpeakersReport.unmarshall(evt);
        RtcEngineMessage.PMediaResSpeakersReport.Speaker[] speakerArr = pMediaResSpeakersReport.speakers;
        if (speakerArr == null || speakerArr.length < 0) {
            handler.onAudioVolumeIndication(new IRtcEngineEventHandler.AudioVolumeInfo[0], 0);
            return;
        }
        IRtcEngineEventHandler.AudioVolumeInfo[] audioVolumeInfoArr = new IRtcEngineEventHandler.AudioVolumeInfo[speakerArr.length];
        for (int i10 = 0; i10 < pMediaResSpeakersReport.speakers.length; i10++) {
            IRtcEngineEventHandler.AudioVolumeInfo audioVolumeInfo = new IRtcEngineEventHandler.AudioVolumeInfo();
            audioVolumeInfoArr[i10] = audioVolumeInfo;
            RtcEngineMessage.PMediaResSpeakersReport.Speaker speaker = pMediaResSpeakersReport.speakers[i10];
            audioVolumeInfo.uid = speaker.uid;
            audioVolumeInfo.volume = speaker.volume;
            audioVolumeInfo.vad = speaker.vad;
            audioVolumeInfo.channelId = speaker.channelId;
        }
        handler.onAudioVolumeIndication(audioVolumeInfoArr, pMediaResSpeakersReport.mixVolume);
    }

    private void onStreamMessage(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PStreamMessage pStreamMessage = new RtcEngineMessage.PStreamMessage();
        pStreamMessage.unmarshall(evt);
        handler.onStreamMessage(pStreamMessage.uid, pStreamMessage.streamId, pStreamMessage.payload);
    }

    private void onStreamMessageError(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PStreamMessageError pStreamMessageError = new RtcEngineMessage.PStreamMessageError();
        pStreamMessageError.unmarshall(evt);
        handler.onStreamMessageError(pStreamMessageError.uid, pStreamMessageError.streamId, pStreamMessageError.error, pStreamMessageError.missed, pStreamMessageError.cached);
    }

    private void onUploadLogResult(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PUploadLogResult pUploadLogResult = new RtcEngineMessage.PUploadLogResult();
        pUploadLogResult.unmarshall(evt);
        handler.onUploadLogResult(pUploadLogResult.requestId, pUploadLogResult.success, pUploadLogResult.reason);
    }

    private void onUserSuperResolutionEnabled(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PUserSuperResolutionEnabled pUserSuperResolutionEnabled = new RtcEngineMessage.PUserSuperResolutionEnabled();
        pUserSuperResolutionEnabled.unmarshall(evt);
        handler.onUserSuperResolutionEnabled(pUserSuperResolutionEnabled.uid, pUserSuperResolutionEnabled.enabled, pUserSuperResolutionEnabled.reason);
    }

    private void onVideoPublishStateChanged(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PPublishVideoState pPublishVideoState = new RtcEngineMessage.PPublishVideoState();
        pPublishVideoState.unmarshall(evt);
        handler.onVideoPublishStateChanged(pPublishVideoState.channel, pPublishVideoState.oldstate, pPublishVideoState.newstate, pPublishVideoState.elapsed);
    }

    private void onVideoSizeChanged(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PVideoSizeChanged pVideoSizeChanged = new RtcEngineMessage.PVideoSizeChanged();
        pVideoSizeChanged.unmarshall(evt);
        handler.onVideoSizeChanged(pVideoSizeChanged.uid, pVideoSizeChanged.width, pVideoSizeChanged.height, pVideoSizeChanged.rotation);
    }

    private void onVideoSubscribeStateChanged(byte[] evt, IRtcEngineEventHandler handler) {
        RtcEngineMessage.PSubscribeVideoState pSubscribeVideoState = new RtcEngineMessage.PSubscribeVideoState();
        pSubscribeVideoState.unmarshall(evt);
        handler.onVideoSubscribeStateChanged(pSubscribeVideoState.channel, pSubscribeVideoState.uid, pSubscribeVideoState.oldstate, pSubscribeVideoState.newstate, pSubscribeVideoState.elapsed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refresh_device_list() {
        nativeDeviceChanged(this.mNativeHandle);
    }

    private void sendLogEvent(byte[] evt) {
        try {
            onLogEvent(0, new String(evt, "ISO-8859-1"));
        } catch (UnsupportedEncodingException unused) {
        }
    }

    private int setParameter(String key, int value) {
        return setParameters(formatString("{\"%s\":%d}", key, Integer.valueOf(value)));
    }

    private int switchCamera(CameraCapturerConfiguration.CAMERA_DIRECTION direction) {
        if (this.mVideoSourceType != 1) {
            return -1;
        }
        return nativeSwitchCameraByDirection(this.mNativeHandle, direction.getValue());
    }

    private void unRegisterBroadcstReceiver(Context context) {
        context.unregisterReceiver(this.mUsbStateChangeReceiver);
    }

    @Override // io.agora.rtc.RtcEngine
    public void addHandler(IRtcEngineEventHandler handler) {
        this.mRtcHandlers.put(handler, 0);
    }

    @Override // io.agora.rtc.RtcEngine
    public int addInjectStreamUrl(String url, LiveInjectStreamConfig config) {
        if (url == null || config == null) {
            return -2;
        }
        return nativeAddInjectStreamUrl(this.mNativeHandle, url, new RtcEngineMessage.PInjectStreamConfig().marshall(config));
    }

    @Override // io.agora.rtc.RtcEngine
    public int addPublishStreamUrl(String url, boolean transcodingEnabled) {
        return nativeAddPublishStreamUrl(this.mNativeHandle, url, transcodingEnabled);
    }

    @Override // io.agora.rtc.RtcEngine
    public int adjustAudioMixingPlayoutVolume(int volume) {
        return setParameter("che.audio.set_file_as_playout_volume", volume);
    }

    @Override // io.agora.rtc.RtcEngine
    public int adjustAudioMixingPublishVolume(int volume) {
        return setParameter("che.audio.set_file_as_playout_publish_volume", volume);
    }

    @Override // io.agora.rtc.RtcEngine
    public int adjustPlaybackSignalVolume(int volume) {
        if (volume < 0) {
            volume = 0;
        } else if (volume > 400) {
            volume = 400;
        }
        return setParameter("che.audio.playout.signal.volume", volume);
    }

    @Override // io.agora.rtc.RtcEngine
    public int adjustRecordingSignalVolume(int volume) {
        if (volume < 0) {
            volume = 0;
        } else if (volume > 400) {
            volume = 400;
        }
        return setParameter("che.audio.record.signal.volume", volume);
    }

    @Override // io.agora.rtc.RtcEngine
    public int clearVideoWatermarks() {
        return nativeClearVideoWatermarks(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public int complain(String callId, String description) {
        return nativeComplain(this.mNativeHandle, callId, description);
    }

    @Override // io.agora.rtc.RtcEngine
    public int createDataStream(DataStreamConfig config) {
        return nativeCreateDataStream2(this.mNativeHandle, config.ordered, config.syncWithAudio);
    }

    public int destroyRtcChannel(String channelId) {
        if (channelId == null || channelId.length() <= 0) {
            return -102;
        }
        synchronized (this) {
            try {
                RtcChannelImpl rtcChannelImpl = this.mDefaultRtcChannel;
                if (rtcChannelImpl != null && rtcChannelImpl.channelId().equals(channelId)) {
                    return -5;
                }
                for (RtcChannelImpl rtcChannelImpl2 : this.mRtcChannels) {
                    if (rtcChannelImpl2.channelId() != null && rtcChannelImpl2.channelId().equals(channelId)) {
                        int iNativeRtcChannelRelease = nativeRtcChannelRelease(rtcChannelImpl2.getNativeHandle());
                        this.mRtcChannels.remove(rtcChannelImpl2);
                        return iNativeRtcChannelRelease;
                    }
                }
                return 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.agora.rtc.RtcEngine
    public int disableLastmileTest() {
        return setParameter("rtc.lastmile_test", false);
    }

    public void doDestroy() {
        try {
            Context context = this.mContext.get();
            if (context != null) {
                unRegisterBroadcstReceiver(context);
            }
        } catch (Exception e) {
            Logging.e(e.getMessage());
        }
        setExternalVideoSource(false, false, true);
        doStopMonitorSystemEvent();
        synchronized (this) {
            try {
                RtcChannelImpl rtcChannelImpl = this.mDefaultRtcChannel;
                if (rtcChannelImpl != null) {
                    rtcChannelImpl.onEngineDestroy();
                }
                Iterator<RtcChannelImpl> it = this.mRtcChannels.iterator();
                while (it.hasNext()) {
                    it.next().onEngineDestroy();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        nativeDestroy(this.mNativeHandle);
        this.mNativeHandle = 0L;
    }

    @Override // io.agora.rtc.RtcEngine
    @Deprecated
    public int enableAudioQualityIndication(boolean enabled) {
        return setParameter("rtc.audio_quality_indication", enabled);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableDeepLearningDenoise(boolean enabled) {
        return nativeEnableDeepLearningDenoise(this.mNativeHandle, enabled);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableEncryption(boolean enabled, EncryptionConfig config) {
        return nativeEnableEncryption(this.mNativeHandle, enabled, config.encryptionMode.getValue(), config.encryptionKey);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableFaceDetection(boolean enable) {
        return setParameter("che.video.faceDistance", enable);
    }

    @Override // io.agora.rtc.RtcEngine
    public boolean enableHighPerfWifiMode(boolean enable) {
        Context context = this.mContext.get();
        if (context == null) {
            return false;
        }
        if (!enable) {
            this.mWifiLock = null;
            return true;
        }
        if (context.checkPermission("android.permission.WAKE_LOCK", Process.myPid(), Process.myUid()) != 0) {
            this.mWifiLock = null;
            return false;
        }
        if (this.mWifiLock != null) {
            return true;
        }
        this.mWifiLock = ((WifiManager) context.getSystemService("wifi")).createWifiLock(3, "agora.voip.lock");
        return true;
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableInEarMonitoring(boolean enabled) {
        return setParameter("che.audio.headset.monitoring", enabled);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableLastmileTest() {
        return setParameter("rtc.lastmile_test", true);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableLocalAudio(boolean enabled) {
        return nativeEnableLocalAudio(this.mNativeHandle, enabled);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableLocalVideo(boolean enabled) {
        this.mLocalVideoEnabled = enabled;
        return setParameters(String.format("{\"rtc.video.capture\":%b,\"che.video.local.capture\":%b,\"che.video.local.render\":%b,\"che.video.local.send\":%b}", Boolean.valueOf(enabled), Boolean.valueOf(enabled), Boolean.valueOf(enabled), Boolean.valueOf(enabled)));
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int enableRecap(int interval) {
        if (interval < 0) {
            interval = 0;
        }
        return setParameter("che.audio.recap.interval", interval);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableRemoteSuperResolution(int uid, boolean enable) {
        return nativeEnableRemoteSuperResolution(this.mNativeHandle, uid, enable);
    }

    @Override // io.agora.rtc.RtcEngine
    public int enableSoundPositionIndication(boolean enabled) {
        return setParameter("che.audio.enable_sound_position", enabled);
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int enableTransportQualityIndication(boolean enabled) {
        return setParameter("rtc.transport_quality_indication", enabled);
    }

    public void finalize() {
        long j6 = this.mNativeHandle;
        if (j6 != 0) {
            nativeDestroy(j6);
        }
    }

    protected ActivityManager getActivityManager(Context context) {
        if (context == null) {
            return null;
        }
        return (ActivityManager) context.getSystemService("activity");
    }

    protected AudioManager getAudioManager(Context context) {
        if (context == null) {
            return null;
        }
        return (AudioManager) context.getSystemService("audio");
    }

    @Override // io.agora.rtc.RtcEngine
    public int getAudioMixingCurrentPosition() {
        return nativeGetIntParameter(this.mNativeHandle, "che.audio.get_mixing_file_played_ms", null);
    }

    @Override // io.agora.rtc.RtcEngine
    public int getAudioMixingDuration() {
        return nativeGetIntParameter(this.mNativeHandle, "che.audio.get_mixing_file_length_ms", null);
    }

    @Override // io.agora.rtc.RtcEngine
    public int getAudioMixingPlayoutVolume() {
        return nativeGetIntParameter(this.mNativeHandle, "che.audio.get_file_as_playout_volume", null);
    }

    @Override // io.agora.rtc.RtcEngine
    public int getAudioMixingPublishVolume() {
        return nativeGetIntParameter(this.mNativeHandle, "che.audio.get_file_as_playout_publish_volume", null);
    }

    @Override // io.agora.rtc.RtcEngine
    public String getCallId() {
        return nativeGetCallId(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public float getCameraMaxZoomFactor() {
        String strNativeGetParameter = nativeGetParameter(this.mNativeHandle, "che.video.camera.get_max_zoom", null);
        if (strNativeGetParameter == null) {
            return 1.0f;
        }
        return Double.valueOf(strNativeGetParameter).floatValue();
    }

    @Override // io.agora.rtc.RtcEngine
    public int getConnectionState() {
        return nativeGetConncetionState(this.mNativeHandle);
    }

    public Context getContext() {
        return this.mContext.get();
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public double getEffectsVolume() {
        double dNativeGetIntParameter = nativeGetIntParameter(this.mNativeHandle, "che.audio.game_get_effects_volume", null);
        return dNativeGetIntParameter < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : dNativeGetIntParameter;
    }

    @Override // io.agora.rtc.RtcEngine
    public long getNativeHandle() {
        return nativeGetHandle(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public String getParameter(String parameter, String args) {
        return nativeGetParameter(this.mNativeHandle, parameter, args);
    }

    @Override // io.agora.rtc.RtcEngineEx
    public String getParameters(String parameters) {
        return nativeGetParameters(this.mNativeHandle, parameters);
    }

    public String getProfile() {
        return nativeGetProfile(this.mNativeHandle);
    }

    public IRtcEngineEventHandler.RtcStats getRtcStats() {
        if (this.mRtcStats == null) {
            this.mRtcStats = new IRtcEngineEventHandler.RtcStats();
        }
        return this.mRtcStats;
    }

    @Override // io.agora.rtc.RtcEngine
    public int getUserInfoByUid(int uid, UserInfo userInfo) {
        return nativeGetUserInfoByUid(this.mNativeHandle, uid, userInfo);
    }

    @Override // io.agora.rtc.RtcEngine
    public int getUserInfoByUserAccount(String userAccount, UserInfo userInfo) {
        return nativeGetUserInfoByUserAccount(this.mNativeHandle, userAccount, userInfo);
    }

    protected void handleEvent(int eventId, byte[] evt, IRtcEngineEventHandler handler) {
        if (handler == null) {
        }
        if (eventId == 1101) {
            RtcEngineMessage.PMediaResTransportQuality pMediaResTransportQuality = new RtcEngineMessage.PMediaResTransportQuality();
            pMediaResTransportQuality.unmarshall(evt);
            if (pMediaResTransportQuality.isAudio) {
                ((IRtcEngineEventHandlerEx) handler).onAudioTransportQuality(pMediaResTransportQuality.peer_uid, pMediaResTransportQuality.bitrate, pMediaResTransportQuality.delay, pMediaResTransportQuality.lost);
                return;
            } else {
                ((IRtcEngineEventHandlerEx) handler).onVideoTransportQuality(pMediaResTransportQuality.peer_uid, pMediaResTransportQuality.bitrate, pMediaResTransportQuality.delay, pMediaResTransportQuality.lost);
                return;
            }
        }
        if (eventId == 1102) {
            RtcEngineMessage.PMediaResAudioQuality pMediaResAudioQuality = new RtcEngineMessage.PMediaResAudioQuality();
            pMediaResAudioQuality.unmarshall(evt);
            handler.onAudioQuality(pMediaResAudioQuality.peer_uid, pMediaResAudioQuality.quality, pMediaResAudioQuality.delay, pMediaResAudioQuality.lost);
            return;
        }
        if (eventId == 14019) {
            handler.onConnectionBanned();
            return;
        }
        if (eventId == 14020) {
            onCameraFocusAreaChanged(evt, handler);
            return;
        }
        switch (eventId) {
            case 100:
                sendLogEvent(evt);
                break;
            case 101:
                RtcEngineMessage.PError pError = new RtcEngineMessage.PError();
                pError.unmarshall(evt);
                int i10 = pError.err;
                if ((i10 >= 1151 && i10 <= 1164) || (i10 >= 1001 && i10 < 1033 && getParameters("[\"che.audio.adm.active\"]").equals(ExifInterface.GPS_MEASUREMENT_2D))) {
                    Logging.e(TAG, "ADM Error code " + pError.err + " restart ADM");
                    setParameter("che.audio.opensl", false);
                    setParameters("che.audio.restart");
                }
                handler.onError(pError.err);
                break;
            case 102:
                RtcEngineMessage.PError pError2 = new RtcEngineMessage.PError();
                pError2.unmarshall(evt);
                int i11 = pError2.err;
                if ((i11 == 1019 || i11 == 1052) && getParameters("[\"che.audio.adm.active\"]").equals(ExifInterface.GPS_MEASUREMENT_2D)) {
                    Logging.e(TAG, "ADM Error code " + pError2.err + " restart ADM");
                    setParameter("che.audio.opensl", false);
                    setParameters("che.audio.restart");
                }
                handler.onWarning(pError2.err);
                break;
            default:
                switch (eventId) {
                    case 1002:
                        break;
                    case RtcEngineEvent.EvtType.EVT_MEDIA_ENGINE_EVENT /* 1104 */:
                        RtcEngineMessage.PMediaEngineEvent pMediaEngineEvent = new RtcEngineMessage.PMediaEngineEvent();
                        pMediaEngineEvent.unmarshall(evt);
                        int i12 = pMediaEngineEvent.code;
                        if (i12 != 10) {
                            if (i12 != 14) {
                                if (i12 != 15) {
                                    switch (i12) {
                                        case 20:
                                        case 21:
                                        case 22:
                                        case 23:
                                            break;
                                        default:
                                            if (i12 >= 701 && i12 <= 713) {
                                                if (i12 >= 701 && i12 <= 703) {
                                                    handler.onAudioMixingStateChanged(Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_ERROR, i12);
                                                } else if (i12 == 712) {
                                                    Logging.d(TAG, "AudioMixing restart");
                                                } else {
                                                    handler.onAudioMixingStateChanged(i12, 0);
                                                }
                                                break;
                                            }
                                            break;
                                    }
                                } else {
                                    handler.onMicrophoneEnabled(false);
                                    break;
                                }
                            } else {
                                handler.onMicrophoneEnabled(true);
                                break;
                            }
                        } else {
                            handler.onAudioMixingFinished();
                            break;
                        }
                        break;
                    case RtcEngineEvent.EvtType.EVT_API_CALL_EXECUTED /* 1106 */:
                        onApiCallExecuted(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_LOOKUP_CHANNEL_SUCCESS /* 10001 */:
                        new RtcEngineMessage.MediaResSetupTime().unmarshall(evt);
                        break;
                    case RtcEngineEvent.EvtType.EVT_OPEN_CHANNEL_SUCCESS /* 13001 */:
                        RtcEngineMessage.PMediaResJoinMedia pMediaResJoinMedia = new RtcEngineMessage.PMediaResJoinMedia();
                        pMediaResJoinMedia.unmarshall(evt);
                        if (!pMediaResJoinMedia.firstSuccess) {
                            handler.onRejoinChannelSuccess(pMediaResJoinMedia.channel, pMediaResJoinMedia.uid, pMediaResJoinMedia.elapsed);
                        } else {
                            handler.onJoinChannelSuccess(pMediaResJoinMedia.channel, pMediaResJoinMedia.uid, pMediaResJoinMedia.elapsed);
                        }
                        break;
                    case RtcEngineEvent.EvtType.EVT_RTC_STATS /* 13010 */:
                        RtcEngineMessage.PMediaResRtcStats pMediaResRtcStats = new RtcEngineMessage.PMediaResRtcStats();
                        pMediaResRtcStats.unmarshall(evt);
                        updateRtcStats(pMediaResRtcStats);
                        handler.onRtcStats(getRtcStats());
                        break;
                    case RtcEngineEvent.EvtType.EVT_RECAP_INDICATION /* 14000 */:
                        ((IRtcEngineEventHandlerEx) handler).onRecap(evt);
                        break;
                    case RtcEngineEvent.EvtType.EVT_AUDIO_VOLUME_INDICATION /* 14001 */:
                        onSpeakersReport(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_FIRST_REMOTE_VIDEO_FRAME /* 14002 */:
                        onFirstRemoteVideoFrame(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_LOCAL_VIDEO_STAT /* 14003 */:
                        onLocalVideoStat(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_REMOTE_VIDEO_STAT /* 14004 */:
                        onRemoteVideoStat(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_FIRST_LOCAL_VIDEO_FRAME /* 14005 */:
                        onFirstLocalVideoFrame(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_FIRST_LOCAL_VIDEO_FRAME_PUBLISH /* 14006 */:
                        onFirstLocalVideoFramePublished(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_FIRST_REMOTE_VIDEO_DECODED /* 14007 */:
                        onFirstRemoteVideoDecoded(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_CONNECTION_LOST /* 14008 */:
                        handler.onConnectionLost();
                        break;
                    case RtcEngineEvent.EvtType.EVT_STREAM_MESSAGE /* 14009 */:
                        onStreamMessage(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_CONNECTION_INTERRUPTED /* 14010 */:
                        handler.onConnectionInterrupted();
                        break;
                    case RtcEngineEvent.EvtType.EVT_LOCAL_PUBLISH_FALLBACK_TO_AUDIO_ONLY /* 14022 */:
                        RtcEngineMessage.PLocalFallbackStatus pLocalFallbackStatus = new RtcEngineMessage.PLocalFallbackStatus();
                        pLocalFallbackStatus.unmarshall(evt);
                        handler.onLocalPublishFallbackToAudioOnly(pLocalFallbackStatus.state);
                        break;
                    case RtcEngineEvent.EvtType.EVT_REMOTE_SUBSCRIBE_FALLBACK_TO_AUDIO_ONLY /* 14023 */:
                        RtcEngineMessage.PMediaResUserState pMediaResUserState = new RtcEngineMessage.PMediaResUserState();
                        pMediaResUserState.unmarshall(evt);
                        handler.onRemoteSubscribeFallbackToAudioOnly(pMediaResUserState.uid, pMediaResUserState.state);
                        break;
                    case RtcEngineEvent.EvtType.EVT_USER_TRANSPORT_STAT /* 14024 */:
                        RtcEngineMessage.PUserTransportStat pUserTransportStat = new RtcEngineMessage.PUserTransportStat();
                        pUserTransportStat.unmarshall(evt);
                        if (!pUserTransportStat.isAudio) {
                            handler.onRemoteVideoTransportStats(pUserTransportStat.peer_uid, pUserTransportStat.delay, pUserTransportStat.lost, pUserTransportStat.rxKBitRate);
                        } else {
                            handler.onRemoteAudioTransportStats(pUserTransportStat.peer_uid, pUserTransportStat.delay, pUserTransportStat.lost, pUserTransportStat.rxKBitRate);
                        }
                        break;
                    case RtcEngineEvent.EvtType.EVT_CONNECTION_STATE_CHANGED /* 14028 */:
                        RtcEngineMessage.PConnectionState pConnectionState = new RtcEngineMessage.PConnectionState();
                        pConnectionState.unmarshall(evt);
                        handler.onConnectionStateChanged(pConnectionState.state, pConnectionState.reason);
                        break;
                    case RtcEngineEvent.EvtType.EVT_CAMERA_EXPOSURE_AREA_CHANGED /* 14029 */:
                        onCameraExposureAreaChanged(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_REMOTE_AUDIO_STAT /* 14030 */:
                        onRemoteAudioStat(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_NETWORK_TYPE_CHANGED /* 14031 */:
                        RtcEngineMessage.PNetworkTypeChanged pNetworkTypeChanged = new RtcEngineMessage.PNetworkTypeChanged();
                        pNetworkTypeChanged.unmarshall(evt);
                        handler.onNetworkTypeChanged(pNetworkTypeChanged.type);
                        break;
                    case RtcEngineEvent.EvtType.EVT_AUDIO_ROUTING_CHANGED /* 14032 */:
                        RtcEngineMessage.PAudioRoutingChanged pAudioRoutingChanged = new RtcEngineMessage.PAudioRoutingChanged();
                        pAudioRoutingChanged.unmarshall(evt);
                        handler.onAudioRouteChanged(pAudioRoutingChanged.routing);
                        break;
                    case RtcEngineEvent.EvtType.EVT_FIRST_REMOTE_AUDIO_DECODED /* 14033 */:
                        RtcEngineMessage.PMediaResFirstRemoteAudioDecoded pMediaResFirstRemoteAudioDecoded = new RtcEngineMessage.PMediaResFirstRemoteAudioDecoded();
                        pMediaResFirstRemoteAudioDecoded.unmarshall(evt);
                        handler.onFirstRemoteAudioDecoded(pMediaResFirstRemoteAudioDecoded.uid, pMediaResFirstRemoteAudioDecoded.elapsed);
                        break;
                    case RtcEngineEvent.EvtType.EVT_LOCAL_USER_REGISTERED /* 14034 */:
                        RtcEngineMessage.PUserAccountInfo pUserAccountInfo = new RtcEngineMessage.PUserAccountInfo();
                        pUserAccountInfo.unmarshall(evt);
                        handler.onLocalUserRegistered(pUserAccountInfo.uid, pUserAccountInfo.userAccount);
                        break;
                    case RtcEngineEvent.EvtType.EVT_USER_INFO_UPDATED /* 14035 */:
                        RtcEngineMessage.PUserAccountInfo pUserAccountInfo2 = new RtcEngineMessage.PUserAccountInfo();
                        pUserAccountInfo2.unmarshall(evt);
                        UserInfo userInfo = new UserInfo();
                        int i13 = pUserAccountInfo2.uid;
                        userInfo.uid = i13;
                        userInfo.userAccount = pUserAccountInfo2.userAccount;
                        handler.onUserInfoUpdated(i13, userInfo);
                        break;
                    case RtcEngineEvent.EvtType.EVT_REMOTE_VIDEO_STATE_CHANGED_EXT /* 14036 */:
                        onRemoteVideoStateChangedExt(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_CROSS_CHANNEL_STATE /* 14037 */:
                        onChannelMediaRelayStateChanged(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_CROSS_CHANNEL_EVENT /* 14038 */:
                        onChannelMediaRelayEvent(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_REMOTE_AUDIO_STATE_CHANGED /* 14040 */:
                        onRemoteAudioStateChanged(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_LOCAL_AUDIO_STAT /* 14041 */:
                        onLocalAudioStat(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_LOCAL_AUDIO_STATE_CHANGED /* 14042 */:
                        RtcEngineMessage.PMediaResLocalAudioStateChanged pMediaResLocalAudioStateChanged = new RtcEngineMessage.PMediaResLocalAudioStateChanged();
                        pMediaResLocalAudioStateChanged.unmarshall(evt);
                        handler.onLocalAudioStateChanged(pMediaResLocalAudioStateChanged.state, pMediaResLocalAudioStateChanged.error);
                        break;
                    case RtcEngineEvent.EvtType.EVT_FACE_DETECT_VALUE /* 14043 */:
                        onFacePositionChanged(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.FIRST_LOCAL_AUDIO_FRAME_PUBLISHED /* 14044 */:
                        onFirstLocalAudioFramePublished(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_PUBLISH_AUDIO_STATE_CHANGED /* 14045 */:
                        onAudioPublishStateChanged(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_PUBLISH_VIDEO_STATE_CHANGED /* 14046 */:
                        onVideoPublishStateChanged(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_SUBSCRIBE_AUDIO_STATE_CHANGED /* 14047 */:
                        onAudioSubscribeStateChanged(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_SUBSCRIBE_VIDEO_STATE_CHANGED /* 14048 */:
                        onVideoSubscribeStateChanged(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_USER_SUPER_RESOLUTION_ENABLED /* 14049 */:
                        onUserSuperResolutionEnabled(evt, handler);
                        break;
                    case RtcEngineEvent.EvtType.EVT_UPLOAD_LOG_RESULT /* 14050 */:
                        onUploadLogResult(evt, handler);
                        break;
                    default:
                        switch (eventId) {
                            case 1005:
                                handler.onCameraReady();
                                break;
                            case 1006:
                                handler.onMediaEngineStartCallSuccess();
                                break;
                            case 1007:
                                handler.onVideoStopped();
                                break;
                            default:
                                switch (eventId) {
                                    case RtcEngineEvent.EvtType.EVT_REQUEST_TOKEN /* 1108 */:
                                        handler.onRequestToken();
                                        break;
                                    case RtcEngineEvent.EvtType.EVT_CLIENT_ROLE_CHANGED /* 1109 */:
                                        RtcEngineMessage.PClientRoleChanged pClientRoleChanged = new RtcEngineMessage.PClientRoleChanged();
                                        pClientRoleChanged.unmarshall(evt);
                                        handler.onClientRoleChanged(pClientRoleChanged.oldRole, pClientRoleChanged.newRole);
                                        break;
                                    case RtcEngineEvent.EvtType.EVT_PUBLISH_URL /* 1110 */:
                                        RtcEngineMessage.PStreamPublished pStreamPublished = new RtcEngineMessage.PStreamPublished();
                                        pStreamPublished.unmarshall(evt);
                                        handler.onStreamPublished(pStreamPublished.url, pStreamPublished.error);
                                        break;
                                    case RtcEngineEvent.EvtType.EVT_UNPUBLISH_URL /* 1111 */:
                                        RtcEngineMessage.PStreamUnPublished pStreamUnPublished = new RtcEngineMessage.PStreamUnPublished();
                                        pStreamUnPublished.unmarshall(evt);
                                        handler.onStreamUnpublished(pStreamUnPublished.url);
                                        break;
                                    case RtcEngineEvent.EvtType.EVT_LIVE_TRANSCODING /* 1112 */:
                                        handler.onTranscodingUpdated();
                                        break;
                                    default:
                                        switch (eventId) {
                                            case RtcEngineEvent.EvtType.EVT_STREAM_INJECTED_STATUS /* 1116 */:
                                                RtcEngineMessage.PStreamInjectedStatus pStreamInjectedStatus = new RtcEngineMessage.PStreamInjectedStatus();
                                                pStreamInjectedStatus.unmarshall(evt);
                                                handler.onStreamInjectedStatus(pStreamInjectedStatus.url, pStreamInjectedStatus.uid, pStreamInjectedStatus.status);
                                                break;
                                            case RtcEngineEvent.EvtType.EVT_PRIVILEGE_WILL_EXPIRE /* 1117 */:
                                                RtcEngineMessage.PPrivilegeWillExpire pPrivilegeWillExpire = new RtcEngineMessage.PPrivilegeWillExpire();
                                                pPrivilegeWillExpire.unmarshall(evt);
                                                handler.onTokenPrivilegeWillExpire(pPrivilegeWillExpire.token);
                                                break;
                                            case RtcEngineEvent.EvtType.EVT_LOCAL_VIDEO_STATE_CHANGED /* 1118 */:
                                                RtcEngineMessage.PMediaResLocalVideoStateChanged pMediaResLocalVideoStateChanged = new RtcEngineMessage.PMediaResLocalVideoStateChanged();
                                                pMediaResLocalVideoStateChanged.unmarshall(evt);
                                                handler.onLocalVideoStateChanged(pMediaResLocalVideoStateChanged.localVideoState, pMediaResLocalVideoStateChanged.error);
                                                break;
                                            case RtcEngineEvent.EvtType.EVT_RTMP_STREAMING_STATE /* 1119 */:
                                                RtcEngineMessage.PRtmpStreamingState pRtmpStreamingState = new RtcEngineMessage.PRtmpStreamingState();
                                                pRtmpStreamingState.unmarshall(evt);
                                                handler.onRtmpStreamingStateChanged(pRtmpStreamingState.url, pRtmpStreamingState.state, pRtmpStreamingState.error);
                                                break;
                                            case RtcEngineEvent.EvtType.EVT_STREAM_EVENT /* 1120 */:
                                                RtcEngineMessage.PStreamEvent pStreamEvent = new RtcEngineMessage.PStreamEvent();
                                                pStreamEvent.unmarshall(evt);
                                                handler.onRtmpStreamingEvent(pStreamEvent.url, pStreamEvent.error);
                                                break;
                                            default:
                                                switch (eventId) {
                                                    case RtcEngineEvent.EvtType.EVT_LEAVE_CHANNEL /* 13006 */:
                                                        Context context = this.mContext.get();
                                                        if (context != null) {
                                                            getAudioManager(context).setMode(0);
                                                        }
                                                        RtcEngineMessage.PMediaResRtcStats pMediaResRtcStats2 = new RtcEngineMessage.PMediaResRtcStats();
                                                        pMediaResRtcStats2.unmarshall(evt);
                                                        updateRtcStats(pMediaResRtcStats2);
                                                        handler.onLeaveChannel(getRtcStats());
                                                        break;
                                                    case RtcEngineEvent.EvtType.EVT_NETWORK_QUALITY /* 13007 */:
                                                        RtcEngineMessage.PMediaResNetworkQuality pMediaResNetworkQuality = new RtcEngineMessage.PMediaResNetworkQuality();
                                                        pMediaResNetworkQuality.unmarshall(evt);
                                                        handler.onNetworkQuality(pMediaResNetworkQuality.uid, pMediaResNetworkQuality.txQuality, pMediaResNetworkQuality.rxQuality);
                                                        break;
                                                    case RtcEngineEvent.EvtType.EVT_USER_OFFLINE /* 13008 */:
                                                        RtcEngineMessage.PMediaResUserOfflineEvent pMediaResUserOfflineEvent = new RtcEngineMessage.PMediaResUserOfflineEvent();
                                                        pMediaResUserOfflineEvent.unmarshall(evt);
                                                        handler.onUserOffline(pMediaResUserOfflineEvent.uid, pMediaResUserOfflineEvent.reason);
                                                        break;
                                                    default:
                                                        switch (eventId) {
                                                            case RtcEngineEvent.EvtType.EVT_USER_JOINED /* 13013 */:
                                                                RtcEngineMessage.PMediaResUserJoinedEvent pMediaResUserJoinedEvent = new RtcEngineMessage.PMediaResUserJoinedEvent();
                                                                pMediaResUserJoinedEvent.unmarshall(evt);
                                                                handler.onUserJoined(pMediaResUserJoinedEvent.uid, pMediaResUserJoinedEvent.elapsed);
                                                                break;
                                                            case RtcEngineEvent.EvtType.EVT_USER_MUTE_AUDIO /* 13014 */:
                                                                RtcEngineMessage.PMediaResUserState pMediaResUserState2 = new RtcEngineMessage.PMediaResUserState();
                                                                pMediaResUserState2.unmarshall(evt);
                                                                handler.onUserMuteAudio(pMediaResUserState2.uid, pMediaResUserState2.state);
                                                                break;
                                                            case RtcEngineEvent.EvtType.EVT_USER_MUTE_VIDEO /* 13015 */:
                                                                RtcEngineMessage.PMediaResUserState pMediaResUserState3 = new RtcEngineMessage.PMediaResUserState();
                                                                pMediaResUserState3.unmarshall(evt);
                                                                handler.onUserMuteVideo(pMediaResUserState3.uid, pMediaResUserState3.state);
                                                                break;
                                                            case RtcEngineEvent.EvtType.EVT_USER_ENABLE_VIDEO /* 13016 */:
                                                                RtcEngineMessage.PMediaResUserState pMediaResUserState4 = new RtcEngineMessage.PMediaResUserState();
                                                                pMediaResUserState4.unmarshall(evt);
                                                                handler.onUserEnableVideo(pMediaResUserState4.uid, pMediaResUserState4.state);
                                                                break;
                                                            case RtcEngineEvent.EvtType.EVT_LASTMILE_QUALITY /* 13017 */:
                                                                RtcEngineMessage.PMediaResLastmileQuality pMediaResLastmileQuality = new RtcEngineMessage.PMediaResLastmileQuality();
                                                                pMediaResLastmileQuality.unmarshall(evt);
                                                                handler.onLastmileQuality(pMediaResLastmileQuality.quality);
                                                                break;
                                                            case RtcEngineEvent.EvtType.AUDIO_EFFECT_FINISHED /* 13018 */:
                                                                RtcEngineMessage.PMediaResAudioEffectFinished pMediaResAudioEffectFinished = new RtcEngineMessage.PMediaResAudioEffectFinished();
                                                                pMediaResAudioEffectFinished.unmarshall(evt);
                                                                handler.onAudioEffectFinished(pMediaResAudioEffectFinished.soundId);
                                                                break;
                                                            case RtcEngineEvent.EvtType.EVT_USER_ENABLE_LOCAL_VIDEO /* 13019 */:
                                                                RtcEngineMessage.PMediaResUserState pMediaResUserState5 = new RtcEngineMessage.PMediaResUserState();
                                                                pMediaResUserState5.unmarshall(evt);
                                                                handler.onUserEnableLocalVideo(pMediaResUserState5.uid, pMediaResUserState5.state);
                                                                break;
                                                            case RtcEngineEvent.EvtType.EVT_LASTMILE_PROBE_RESULT /* 13020 */:
                                                                RtcEngineMessage.PMediaResLastmileProbeResult pMediaResLastmileProbeResult = new RtcEngineMessage.PMediaResLastmileProbeResult();
                                                                pMediaResLastmileProbeResult.unmarshall(evt);
                                                                IRtcEngineEventHandler.LastmileProbeResult lastmileProbeResult = new IRtcEngineEventHandler.LastmileProbeResult();
                                                                lastmileProbeResult.state = pMediaResLastmileProbeResult.state;
                                                                lastmileProbeResult.rtt = pMediaResLastmileProbeResult.rtt;
                                                                IRtcEngineEventHandler.LastmileProbeResult.LastmileProbeOneWayResult lastmileProbeOneWayResult = lastmileProbeResult.uplinkReport;
                                                                RtcEngineMessage.PMediaResLastmileProbeResult.LastmileProbeOneWayResult lastmileProbeOneWayResult2 = pMediaResLastmileProbeResult.uplinkReport;
                                                                lastmileProbeOneWayResult.packetLossRate = lastmileProbeOneWayResult2.packetLossRate;
                                                                lastmileProbeOneWayResult.jitter = lastmileProbeOneWayResult2.jitter;
                                                                lastmileProbeOneWayResult.availableBandwidth = lastmileProbeOneWayResult2.availableBandwidth;
                                                                IRtcEngineEventHandler.LastmileProbeResult.LastmileProbeOneWayResult lastmileProbeOneWayResult3 = lastmileProbeResult.downlinkReport;
                                                                RtcEngineMessage.PMediaResLastmileProbeResult.LastmileProbeOneWayResult lastmileProbeOneWayResult4 = pMediaResLastmileProbeResult.downlinkReport;
                                                                lastmileProbeOneWayResult3.packetLossRate = lastmileProbeOneWayResult4.packetLossRate;
                                                                lastmileProbeOneWayResult3.jitter = lastmileProbeOneWayResult4.jitter;
                                                                lastmileProbeOneWayResult3.availableBandwidth = lastmileProbeOneWayResult4.availableBandwidth;
                                                                handler.onLastmileProbeResult(lastmileProbeResult);
                                                                break;
                                                            default:
                                                                switch (eventId) {
                                                                    case RtcEngineEvent.EvtType.EVT_STREAM_MESSAGE_ERROR /* 14012 */:
                                                                        onStreamMessageError(evt, handler);
                                                                        break;
                                                                    case RtcEngineEvent.EvtType.EVT_VIDEO_SIZE_CHANGED /* 14013 */:
                                                                        onVideoSizeChanged(evt, handler);
                                                                        break;
                                                                    case RtcEngineEvent.EvtType.FIRST_LOCAL_AUDIO_FRAME /* 14014 */:
                                                                        onFirstLocalAudioFrame(evt, handler);
                                                                        break;
                                                                    case RtcEngineEvent.EvtType.FIRST_REMOTE_AUDIO_FRAME /* 14015 */:
                                                                        onFirstRemoteAudioFrame(evt, handler);
                                                                        break;
                                                                    case RtcEngineEvent.EvtType.EVT_ACTIVE_SPEAKER /* 14016 */:
                                                                        RtcEngineMessage.PActiveSpeaker pActiveSpeaker = new RtcEngineMessage.PActiveSpeaker();
                                                                        pActiveSpeaker.unmarshall(evt);
                                                                        handler.onActiveSpeaker(pActiveSpeaker.uid);
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                handler.onMediaEngineLoadSuccess();
                break;
        }
    }

    @Override // io.agora.rtc.RtcEngine
    public boolean isCameraAutoFocusFaceModeSupported() {
        return Boolean.valueOf(nativeGetParameter(this.mNativeHandle, "che.video.camera.face_focus_supported", null)).booleanValue();
    }

    @Override // io.agora.rtc.RtcEngine
    public boolean isCameraExposurePositionSupported() {
        return Boolean.valueOf(nativeGetParameter(this.mNativeHandle, "che.video.camera.exposure_supported", null)).booleanValue();
    }

    @Override // io.agora.rtc.RtcEngine
    public boolean isCameraFocusSupported() {
        return Boolean.valueOf(nativeGetParameter(this.mNativeHandle, "che.video.camera.focus_supported", null)).booleanValue();
    }

    @Override // io.agora.rtc.RtcEngine
    public boolean isCameraTorchSupported() {
        return Boolean.valueOf(nativeGetParameter(this.mNativeHandle, "che.video.camera.torch_supported", null)).booleanValue();
    }

    @Override // io.agora.rtc.RtcEngine
    public boolean isCameraZoomSupported() {
        return Boolean.valueOf(nativeGetParameter(this.mNativeHandle, "che.video.camera.zoom_supported", null)).booleanValue();
    }

    @Override // io.agora.rtc.RtcEngine
    public boolean isSpeakerphoneEnabled() {
        return nativeIsSpeakerphoneEnabled(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngineEx
    public String makeQualityReportUrl(String channelName, int listenerUid, int speakerUid, int format) {
        return nativeMakeQualityReportUrl(this.mNativeHandle, channelName, listenerUid, speakerUid, format);
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int monitorAudioRouteChange(boolean isMonitoring) {
        Logging.i("API call monitorAudioRouteChange:" + isMonitoring);
        return 0;
    }

    @Override // io.agora.rtc.RtcEngine
    @TargetApi(11)
    @Deprecated
    public void monitorBluetoothHeadsetEvent(boolean monitor) {
        Logging.i(TAG, "enter monitorBluetoothHeadsetEvent:" + monitor);
    }

    @Override // io.agora.rtc.RtcEngine
    @Deprecated
    public void monitorHeadsetEvent(boolean monitor) {
        Logging.i(TAG, "enter monitorHeadsetEvent:" + monitor);
    }

    @Override // io.agora.rtc.RtcEngine
    public int muteAllRemoteAudioStreams(boolean muted) {
        return setParameter("rtc.audio.mute_peers", muted);
    }

    @Override // io.agora.rtc.RtcEngine
    public int muteAllRemoteVideoStreams(boolean muted) {
        return nativeMuteAllRemoteVideoStreams(this.mNativeHandle, muted);
    }

    @Override // io.agora.rtc.RtcEngine
    public int muteLocalVideoStream(boolean muted) {
        return nativeMuteLocalVideoStream(this.mNativeHandle, muted);
    }

    protected void onChannelEvent(String channel, int eventId, byte[] evt) {
        RtcChannelImpl next;
        if (channel == null || channel.length() <= 0) {
            return;
        }
        synchronized (this) {
            try {
                Iterator<RtcChannelImpl> it = this.mRtcChannels.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.channelId() != null && next.channelId().equals(channel)) {
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (next == null || !next.isInitialized() || next.getEventHandler() == null) {
            return;
        }
        handleChannelEvent(eventId, evt, next.getEventHandler(), next);
    }

    protected void onEvent(int eventId, byte[] evt) {
        try {
            Iterator<IRtcEngineEventHandler> it = this.mRtcHandlers.keySet().iterator();
            while (it.hasNext()) {
                IRtcEngineEventHandler next = it.next();
                if (next == null) {
                    it.remove();
                } else {
                    handleEvent(eventId, evt, next);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "onEvent: " + e.toString());
        }
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int pauseAllEffects() {
        return setParameter("che.audio.game_pause_all_effects", true);
    }

    @Override // io.agora.rtc.RtcEngine
    public int pauseAudio() {
        return setParameter("rtc.audio.paused", true);
    }

    @Override // io.agora.rtc.RtcEngine
    public int pauseAudioMixing() {
        return setParameter("che.audio.pause_file_as_playout", true);
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int pauseEffect(int soundId) {
        return setParameter("che.audio.game_pause_effect", soundId);
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int playEffect(int i10, String str, int i11, double d, double d2, double d6, boolean z6) {
        return setParameterObject("che.audio.game_play_effect", formatString("{\"soundId\":%d,\"filePath\":\"%s\",\"loopCount\":%d, \"pitch\":%f,\"pan\":%f,\"gain\":%f, \"send2far\":%d}", Integer.valueOf(i10), str, Integer.valueOf(i11), Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d6), Integer.valueOf(z6 ? 1 : 0)));
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int playRecap() {
        return setParameter("che.audio.recap.start_play", true);
    }

    @Override // io.agora.rtc.RtcEngine
    public int pullPlaybackAudioFrame(byte[] data, int lengthInBytes) {
        int i10 = this.mExAudioSinkChannels;
        if (i10 == 1 || i10 == 2) {
            return nativePullAudioFrame(this.mNativeHandle, data, lengthInBytes, i10);
        }
        return -1;
    }

    @Override // io.agora.rtc.RtcEngine
    public int pushExternalAudioFrame(byte[] data, long timestamp) {
        return nativePushExternalAudioFrameRawData(this.mNativeHandle, data, timestamp, this.mExAudioSourceSampleRate, this.mExAudioSourceChannels);
    }

    @Override // io.agora.rtc.RtcEngine
    public boolean pushExternalVideoFrame(AgoraVideoFrame frame) {
        int i10;
        if (frame == null || (i10 = frame.format) == 12) {
            Logging.e("pushExternalVideoFrame failed!! invalid video frame.");
            return false;
        }
        if (this.mVideoSourceType != 3) {
            Logging.e("pushExternalVideoFrame failed!! Call setExternalVideoSource to enable enable external video source!!");
            return false;
        }
        if (i10 != 10 && i10 != 11) {
            return ((i10 > 0 && i10 <= 8) || i10 == 16) && deliverFrame(this.mNativeHandle, frame.buf, frame.stride, frame.height, frame.cropLeft, frame.cropTop, frame.cropRight, frame.cropBottom, frame.rotation, frame.timeStamp, i10) == 0;
        }
        if (frame.textureID == 0) {
            Logging.e("pushExternalVideoFrame failed!! invalid texture ID.");
            return false;
        }
        android.opengl.EGLContext eGLContext = frame.eglContext14;
        if (eGLContext != null) {
            return updateSharedContext(eGLContext) == 0 && setTextureIdWithMatrix(frame.textureID, frame.eglContext14, frame.format, frame.stride, frame.height, frame.timeStamp, frame.transform) == 0;
        }
        EGLContext eGLContext2 = frame.eglContext11;
        return eGLContext2 != null && updateSharedContext(eGLContext2) == 0 && setTextureIdWithMatrix(frame.textureID, frame.eglContext11, frame.format, frame.stride, frame.height, frame.timeStamp, frame.transform) == 0;
    }

    @Override // io.agora.rtc.RtcEngine
    public int rate(String callId, int rating, String description) {
        return nativeRate(this.mNativeHandle, callId, rating, description);
    }

    @Override // io.agora.rtc.RtcEngine
    public int registerAudioFrameObserver(IAudioFrameObserver observer) {
        return nativeRegisterAudioFrameObserver(this.mNativeHandle, observer);
    }

    @Override // io.agora.rtc.RtcEngine
    public int registerLocalUserAccount(String appId, String userAccount) {
        if (appId == null || userAccount == null) {
            return -2;
        }
        return nativeRegisterLocalUserAccount(this.mNativeHandle, appId, userAccount);
    }

    @Override // io.agora.rtc.RtcEngine
    public int registerMediaMetadataObserver(IMetadataObserver observer, int type) {
        return nativeRegisterMediaMetadataObserver(this.mNativeHandle, observer, type);
    }

    @Override // io.agora.rtc.RtcEngine
    public void removeHandler(IRtcEngineEventHandler handler) {
        if (this.mRtcHandlers.containsKey(handler)) {
            this.mRtcHandlers.remove(handler);
        }
    }

    @Override // io.agora.rtc.RtcEngine
    public int removeInjectStreamUrl(String url) {
        if (url == null) {
            return -2;
        }
        return nativeRemoveInjectStreamUrl(this.mNativeHandle, url);
    }

    @Override // io.agora.rtc.RtcEngine
    public int removePublishStreamUrl(String url) {
        return nativeRemovePublishStreamUrl(this.mNativeHandle, url);
    }

    public int removeRemoteVideoTrack(int uid) {
        return nativeRemoveVideoReceiveTrack(this.mNativeHandle, uid);
    }

    @Override // io.agora.rtc.RtcEngine
    public int renewToken(String token) {
        if (token == null) {
            return -2;
        }
        return setParameter("rtc.renew_token", token);
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int resumeAllEffects() {
        return setParameter("che.audio.game_resume_all_effects", true);
    }

    @Override // io.agora.rtc.RtcEngine
    public int resumeAudio() {
        return setParameter("rtc.audio.paused", false);
    }

    @Override // io.agora.rtc.RtcEngine
    public int resumeAudioMixing() {
        return setParameter("che.audio.pause_file_as_playout", false);
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int resumeEffect(int soundId) {
        return setParameter("che.audio.game_resume_effect", soundId);
    }

    @Override // io.agora.rtc.RtcEngine
    public int sendCustomReportMessage(String id, String category, String event, String label, int value) {
        return nativeSendCustomReportMessage(this.mNativeHandle, id, category, event, label, value);
    }

    @Override // io.agora.rtc.RtcEngine
    public int sendStreamMessage(int streamId, byte[] message) {
        return nativeSendStreamMessage(this.mNativeHandle, streamId, message);
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int setApiCallMode(int syncCallTimeout) {
        return nativeSetApiCallMode(this.mNativeHandle, syncCallTimeout);
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int setAppType(int appType) {
        return nativeSetAppType(this.mNativeHandle, appType);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setAudioMixingPitch(int pitch) {
        if (pitch > 12 || pitch < -12) {
            return -2;
        }
        return setParameter("che.audio.set_playout_file_pitch_semitones", pitch);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setAudioMixingPosition(int pos) {
        return setParameter("che.audio.mixing.file.position", pos);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setAudioProfile(int profile, int scenario) {
        return nativeSetAudioProfile(this.mNativeHandle, profile, scenario);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setBeautyEffectOptions(boolean enabled, BeautyOptions options) {
        if (options == null) {
            if (enabled) {
                return -2;
            }
            options = new BeautyOptions();
        }
        return nativeSetBeautyEffectOptions(this.mNativeHandle, enabled, options.lighteningContrastLevel, options.lighteningLevel, options.smoothnessLevel, options.rednessLevel);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setCameraAutoFocusFaceModeEnabled(boolean enabled) {
        return setParameter("che.video.camera.face_detection", enabled);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setCameraCapturerConfiguration(CameraCapturerConfiguration config) {
        CameraCapturerConfiguration.CaptureDimensions captureDimensions;
        int parameter = setParameter("che.video.camera_capture_mode", config.preference.getValue());
        if (config.preference == CameraCapturerConfiguration.CAPTURER_OUTPUT_PREFERENCE.CAPTURER_OUTPUT_PREFERENCE_MANUAL && (captureDimensions = config.dimensions) != null) {
            setParameter("che.video.capture_width", captureDimensions.width);
            setParameter("che.video.capture_height", config.dimensions.height);
        }
        return parameter == 0 ? switchCamera(config.cameraDirection) : parameter;
    }

    @Override // io.agora.rtc.RtcEngine
    public int setCameraTorchOn(boolean isOn) {
        return setParameter("che.video.camera.flash", isOn);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setCameraZoomFactor(float factor) {
        return setParameter("che.video.camera.zoom", factor);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setChannelProfile(int profile) {
        if (profile == 0) {
            setClientRole(1);
        }
        return nativeSetChannelProfile(this.mNativeHandle, profile);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setClientRole(int role, ClientRoleOptions options) {
        return nativeSetClientRoleOptions(this.mNativeHandle, role, options);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setCloudProxy(int proxyType) {
        return nativeSetCloudProxy(this.mNativeHandle, proxyType);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setDefaultMuteAllRemoteAudioStreams(boolean muted) {
        return setParameter("rtc.audio.set_default_mute_peers", muted);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setDefaultMuteAllRemoteVideoStreams(boolean muted) {
        return setParameter("rtc.video.set_default_mute_peers", muted);
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int setEffectsVolume(double volume) {
        return setParameter("che.audio.game_set_effects_volume", volume);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setEncryptionMode(String encryptionMode) {
        return setParameter("rtc.encryption.mode", encryptionMode);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setEncryptionSecret(String secret) {
        return nativeSetEncryptionSecret(this.mNativeHandle, secret);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setExternalAudioSource(boolean enabled, int sampleRate, int channels) {
        this.mExAudioSourceSampleRate = sampleRate;
        this.mExAudioSourceChannels = channels;
        return enabled ? setParameters(formatString("{\"che.audio.external_capture\":%b,\"che.audio.external_capture.push\":%b,\"che.audio.set_capture_raw_audio_format\":{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d}}", Boolean.valueOf(enabled), Boolean.valueOf(enabled), Integer.valueOf(sampleRate), Integer.valueOf(channels), 2)) : setParameters(formatString("{\"che.audio.external_capture\":%b,\"che.audio.external_capture\":%b,\"che.audio.external_capture.push\":%b}", Boolean.valueOf(enabled), Boolean.valueOf(enabled), Boolean.valueOf(enabled)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setInEarMonitoringVolume(int volume) {
        return setParameter("che.audio.headset.monitoring.parameter", volume);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLiveTranscoding(LiveTranscoding transcoding) {
        if (transcoding == null) {
            return -2;
        }
        return nativeSetLiveTranscoding(this.mNativeHandle, new RtcEngineMessage.PLiveTranscoding().marshall(transcoding));
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLocalPublishFallbackOption(int option) {
        return setParameter("rtc.local_publish_fallback_option", option);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLocalRenderMode(int renderMode, int mirrorMode) {
        return setRemoteRenderMode(0, renderMode, mirrorMode);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLocalVideoMirrorMode(int mode) {
        return nativeSetLocalVideoMirrorMode(this.mNativeHandle, mode);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLocalVideoRenderer(IVideoSink render) {
        int i10;
        if (render == null) {
            i10 = 0;
        } else {
            i10 = render instanceof AgoraDefaultRender ? 1 : 2;
        }
        return nativeAddLocalVideoRender(this.mNativeHandle, render, i10);
    }

    @Override // io.agora.rtc.RtcEngine
    @Deprecated
    public int setLocalVoiceChanger(int voiceChanger) {
        if (voiceChanger == 0) {
            return setParameter("che.audio.morph.voice_changer", voiceChanger);
        }
        if (voiceChanger > 0 && voiceChanger < 1048576) {
            return setParameter("che.audio.morph.voice_changer", voiceChanger);
        }
        if (voiceChanger > 1048576 && voiceChanger < 2097152) {
            return setParameter("che.audio.morph.voice_changer", voiceChanger - 1048570);
        }
        if (voiceChanger <= 2097152 || voiceChanger >= 3145728) {
            return -2;
        }
        return setParameter("che.audio.morph.beauty_voice", voiceChanger - 2097152);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLocalVoicePitch(double pitch) {
        return setParameter("che.audio.morph.pitch_shift", (int) (pitch * 100.0d));
    }

    @Override // io.agora.rtc.RtcEngine
    @Deprecated
    public int setLocalVoiceReverbPreset(int preset) {
        if (preset == 0) {
            return setParameter("che.audio.morph.reverb_preset", preset);
        }
        if (preset > 0 && preset < 1048576) {
            return setParameter("che.audio.morph.reverb_preset", preset + 8);
        }
        if (preset > 1048576 && preset < 2097152) {
            return setParameter("che.audio.morph.reverb_preset", preset - 1048576);
        }
        if (preset > 2097152 && preset < 2097154) {
            return setParameter("che.audio.morph.virtual_stereo", preset - 2097152);
        }
        if (preset > 3145728 && preset < 3145730) {
            return setParameterObject("che.audio.morph.electronic_voice", formatString("{\"key\":%d,\"value\":%d}", 1, 4));
        }
        if (preset <= 4194304 || preset >= 4194306) {
            return -2;
        }
        return setParameter("che.audio.morph.threedim_voice", 10);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLogFile(String filePath) {
        return setParameter("rtc.log_file", filePath);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLogFileSize(int fileSizeInKBytes) {
        return setParameter("rtc.log_size", fileSizeInKBytes);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setLogFilter(int filter) {
        return setParameter("rtc.log_filter", filter & Constants.LOG_FILTER_DEBUG);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setParameters(String parameters) {
        return nativeSetParameters(this.mNativeHandle, parameters);
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int setProfile(String profile, boolean merge) {
        return nativeSetProfile(this.mNativeHandle, profile, merge);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setRemoteDefaultVideoStreamType(int streamType) {
        return setParameter("rtc.video.set_remote_default_video_stream_type", streamType);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setRemoteRenderMode(int uid, int renderMode, int mirrorMode) {
        return nativeSetRemoteRenderModeWithMirrorMode(this.mNativeHandle, (int) (((long) uid) & 4294967295L), renderMode, mirrorMode);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setRemoteSubscribeFallbackOption(int option) {
        return setParameter("rtc.remote_subscribe_fallback_option", option);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setRemoteUserPriority(int uid, int userPriority) {
        return nativeSetRemoteUserPriority(this.mNativeHandle, uid, userPriority);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setRemoteVideoRenderer(int uid, IVideoSink render) {
        int i10;
        if (render == null) {
            i10 = 0;
        } else {
            i10 = render instanceof AgoraDefaultRender ? 1 : 2;
        }
        return nativeAddRemoteVideoRender(this.mNativeHandle, uid, render, i10);
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int setTextureId(int id, android.opengl.EGLContext sharedContext, int width, int height, long ts) {
        return nativeSetEGL14TextureId(this.mNativeHandle, id, sharedContext, 11, width, height, ts, sMatrix);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setVideoEncoderConfiguration(VideoEncoderConfiguration config) {
        long j6 = this.mNativeHandle;
        VideoEncoderConfiguration.VideoDimensions videoDimensions = config.dimensions;
        return nativeSetVideoEncoderConfiguration(j6, videoDimensions.width, videoDimensions.height, config.frameRate, config.minFrameRate, config.bitrate, config.minBitrate, config.orientationMode.getValue(), config.degradationPrefer.getValue(), config.mirrorMode);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setVideoProfile(int width, int height, int frameRate, int bitrate) {
        return nativeSetVideoProfileEx(this.mNativeHandle, width, height, frameRate, bitrate);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setVideoSource(IVideoSource videoSource) {
        if (videoSource == null) {
            this.mVideoSourceType = 0;
        } else if (videoSource instanceof AgoraDefaultSource) {
            this.mVideoSourceType = 1;
        } else {
            this.mVideoSourceType = 2;
        }
        return nativeAddVideoCapturer(this.mNativeHandle, videoSource, this.mVideoSourceType);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setupLocalVideo(VideoCanvas local) {
        checkIfInUIThread("setupLocalVideo");
        if (this.mVideoSourceType == 3) {
            return -1;
        }
        if (local != null) {
            this.mUseLocalView = true;
            nativeSetupVideoLocal(this.mNativeHandle, local.view, local.renderMode, local.mirrorMode);
        } else {
            this.mUseLocalView = false;
            nativeSetupVideoLocal(this.mNativeHandle, null, 1, 0);
        }
        return 0;
    }

    @Override // io.agora.rtc.RtcEngine
    public int setupRemoteVideo(VideoCanvas remote) {
        checkIfInUIThread("setupRemoteVideo");
        if (remote == null) {
            return -1;
        }
        String str = remote.channelId;
        return str != null ? nativeSetupVideoRemote(this.mNativeHandle, remote.view, remote.renderMode, str, remote.uid, remote.mirrorMode) : nativeSetupVideoRemote(this.mNativeHandle, remote.view, remote.renderMode, "", remote.uid, remote.mirrorMode);
    }

    @Override // io.agora.rtc.RtcEngine
    public int startAudioRecording(String filePath, int sampeRate, int quality) {
        if (TextUtils.isEmpty(filePath)) {
            return -2;
        }
        return setParameterObject("che.audio.start_recording", formatString("{\"filePath\":\"%s\", \"sampleRate\":%d, \"quality\":%d}", filePath, Integer.valueOf(sampeRate), Integer.valueOf(quality)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int startDumpVideoReceiveTrack(int uid, String dumpFile) {
        return nativeStartDumpVideoReceiveTrack(this.mNativeHandle, uid, dumpFile);
    }

    @Override // io.agora.rtc.RtcEngine
    public int startLastmileProbeTest(LastmileProbeConfig config) {
        Context context = this.mContext.get();
        if (context == null) {
            return -7;
        }
        doMonitorSystemEvent(context);
        return nativeStartLastmileProbeTest(this.mNativeHandle, null, config.probeUplink, config.probeDownlink, config.expectedUplinkBitrate, config.expectedDownlinkBitrate);
    }

    @Override // io.agora.rtc.RtcEngine
    public int startPreview() {
        if (this.mVideoSourceType == 3) {
            return -4;
        }
        return nativeStartPreview(this.mNativeHandle);
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int stopAllEffects() {
        return setParameter("che.audio.game_stop_all_effects", true);
    }

    public int stopAllRemoteVideo() {
        return setParameter("che.video.peer.stop_all_renders", true);
    }

    @Override // io.agora.rtc.RtcEngine
    public int stopAudioMixing() {
        return setParameter("che.audio.stop_file_as_playout", true);
    }

    @Override // io.agora.rtc.RtcEngine
    public int stopAudioRecording() {
        return setParameter("che.audio.stop_recording", true);
    }

    @Override // io.agora.rtc.RtcEngine
    public int stopChannelMediaRelay() {
        return nativeStopChannelMediaRelay(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public int stopDumpVideoReceiveTrack() {
        return nativeStopDumpVideoReceiveTrack(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public int stopEchoTest() {
        return nativeStopEchoTest(this.mNativeHandle);
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int stopEffect(int soundId) {
        return setParameter("che.audio.game_stop_effect", soundId);
    }

    @Override // io.agora.rtc.RtcEngine
    public int stopLastmileProbeTest() {
        return nativeStopLastmileProbeTest(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcEngine
    public int stopPreview() {
        return setParameter("rtc.video.preview", false);
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int unloadEffect(int soundId) {
        return setParameter("che.audio.game_unload_effect", soundId);
    }

    @Override // io.agora.rtc.RtcEngineEx
    public int updateSharedContext(android.opengl.EGLContext sharedContext) {
        return nativeSetEGL14Context(this.mNativeHandle, sharedContext);
    }

    @Override // io.agora.rtc.RtcEngine
    public String uploadLogFile() {
        return nativeUploadLogFile(this.mNativeHandle);
    }

    public static boolean checkIfInUIThread(String name) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            Logging.i(TAG, name + " in UI Thread");
            return true;
        }
        Logging.i(TAG, name + " not in UI Thread");
        return false;
    }

    private void checkVoipPermissions(Context context) throws SecurityException {
        checkVoipPermissions(context, "android.permission.INTERNET");
        checkVoipPermissions(context, "android.permission.RECORD_AUDIO");
        checkVoipPermissions(context, "android.permission.MODIFY_AUDIO_SETTINGS");
        if (this.mVideoSourceType == 1 && this.mLocalVideoEnabled) {
            checkVoipPermissions(context, "android.permission.CAMERA");
        }
    }

    private void doJoinChannelCheck(Context context) {
        if (joinChannelFirstTimeOrAllChannelLeft()) {
            doMonitorSystemEvent(context);
            doCheckPermission(context);
        }
    }

    private void doLeaveChannelCheck() {
        if (joinChannelFirstTimeOrAllChannelLeft()) {
            doStopMonitorSystemEvent();
        }
    }

    protected static String getLocalHost() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (!networkInterface.getName().startsWith("usb")) {
                    Iterator it = Collections.list(networkInterface.getInetAddresses()).iterator();
                    while (it.hasNext()) {
                        String strInetAddressToIpAddress = inetAddressToIpAddress((InetAddress) it.next());
                        if (strInetAddressToIpAddress != null && !strInetAddressToIpAddress.isEmpty()) {
                            return strInetAddressToIpAddress;
                        }
                    }
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String inetAddressToIpAddress(InetAddress address) {
        if (!address.isLoopbackAddress()) {
            if (address instanceof Inet4Address) {
                return ((Inet4Address) address).getHostAddress();
            }
            boolean z6 = address instanceof Inet6Address;
            return null;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0049  */
    private void setDeviceOrientation(int orientation) {
        char c7;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastOrientationTs < 100) {
            return;
        }
        int iRound = ((int) (Math.round(((double) orientation) / 90.0d) * 90)) % 360;
        int i10 = iRound - orientation;
        char c10 = 2;
        if (Math.abs(i10) < 20) {
            c7 = 1;
        } else if (Math.abs(i10) < 40) {
            c7 = 2;
        } else {
            c7 = 0;
        }
        if (iRound == 0 && orientation > 180) {
            int i11 = 360 - orientation;
            if (i11 < 20) {
                c10 = 1;
            } else if (i11 >= 40) {
                c10 = c7;
            }
        } else {
            c10 = c7;
        }
        if (c10 > 0) {
            try {
                new Camera.CameraInfo();
                if (c10 != 1) {
                    iRound += 5;
                }
                if (this.mTotalRotation != 0) {
                    setVideoRotateCapturedFrames(0, iRound);
                }
                this.mTotalRotation = 0;
            } catch (Exception e) {
                Logging.e(TAG, "Unable to get camera info, ", e);
            }
        }
        this.lastOrientationTs = jCurrentTimeMillis;
    }

    private int setParameter(String key, long value) {
        return setParameters(formatString("{\"%s\":%d}", key, Long.valueOf(value)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int adjustAudioMixingVolume(int volume) {
        int iAdjustAudioMixingPlayoutVolume = adjustAudioMixingPlayoutVolume(volume);
        if (iAdjustAudioMixingPlayoutVolume == 0) {
            adjustAudioMixingPublishVolume(volume);
        }
        return iAdjustAudioMixingPlayoutVolume;
    }

    @Override // io.agora.rtc.RtcEngine
    public boolean isTextureEncodeSupported() {
        if (DeviceUtils.getRecommendedEncoderType() == 0) {
            return true;
        }
        return false;
    }

    @Override // io.agora.rtc.RtcEngine
    public int joinChannel(String key, String channelName, String optionalInfo, int optionalUid, ChannelMediaOptions options) {
        Context context = this.mContext.get();
        if (context == null) {
            return -7;
        }
        if (options == null) {
            return -2;
        }
        doJoinChannelCheck(context);
        int iNativeJoinChannel = nativeJoinChannel(this.mNativeHandle, null, key, channelName, optionalInfo, optionalUid, options);
        synchronized (this) {
            try {
                if (this.mDefaultRtcChannel == null) {
                    this.mDefaultRtcChannel = new RtcChannelImpl();
                }
                if (iNativeJoinChannel == 0) {
                    this.mDefaultRtcChannel.initialize(this, nativeGetDefaultRtcChannel(this.mNativeHandle));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iNativeJoinChannel;
    }

    @Override // io.agora.rtc.RtcEngine
    public int joinChannelWithUserAccount(String token, String channelId, String userAccount, ChannelMediaOptions options) {
        if (options == null) {
            return -2;
        }
        int iNativeJoinChannelWithUserAccount = nativeJoinChannelWithUserAccount(this.mNativeHandle, token, channelId, userAccount, options);
        synchronized (this) {
            try {
                if (this.mDefaultRtcChannel == null) {
                    this.mDefaultRtcChannel = new RtcChannelImpl();
                }
                if (iNativeJoinChannelWithUserAccount == 0) {
                    this.mDefaultRtcChannel.initialize(this, nativeGetDefaultRtcChannel(this.mNativeHandle));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iNativeJoinChannelWithUserAccount;
    }

    public void onRtcChannelJoinChannel() {
        doJoinChannelCheck(getContext());
    }

    public void onRtcChannelLeaveChannel() {
        doLeaveChannelCheck();
    }

    @Override // io.agora.rtc.IAudioEffectManager
    public int preloadEffect(int soundId, String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return -2;
        }
        return setParameterObject("che.audio.game_preload_effect", formatString("{\"soundId\":%d,\"filePath\":\"%s\"}", Integer.valueOf(soundId), filePath));
    }

    public void reinitialize(Context context, String appId, IRtcEngineEventHandler handler) {
        addHandler(handler);
    }

    @Override // io.agora.rtc.RtcEngine
    public int setAudioEffectParameters(int preset, int param1, int param2) {
        if (preset == 33816832) {
            return setParameterObject("che.audio.morph.electronic_voice", formatString("{\"key\":%d,\"value\":%d}", Integer.valueOf(param1), Integer.valueOf(param2)));
        }
        if (preset == 33622016) {
            return setParameter("che.audio.morph.threedim_voice", param1);
        }
        return -2;
    }

    @Override // io.agora.rtc.RtcEngine
    public int setVoiceBeautifierParameters(int preset, int param1, int param2) {
        if (preset != 16908544 && preset != 16908800) {
            return -2;
        }
        return setParameterObject("che.audio.morph.beauty_sing", formatString("{\"key\":%d,\"value\":%d}", Integer.valueOf(param1), Integer.valueOf(param2)));
    }

    @Override // io.agora.rtc.RtcEngine
    public int switchChannel(String key, String channelName, ChannelMediaOptions options) {
        if (options == null) {
            return -2;
        }
        return nativeSwitchChannel(this.mNativeHandle, key, channelName, options);
    }

    @Override // io.agora.rtc.RtcEngine
    public int useExternalAudioDevice() {
        return setParameters("{\"che.audio.audioSampleRate\":32000, \"che.audio.external_device\":true}");
    }

    private int setParameter(String key, double value) {
        return setParameters(formatString("{\"%s\":%f}", key, Double.valueOf(value)));
    }

    public int setTextureIdWithMatrix(int id, android.opengl.EGLContext sharedContext, int format, int width, int height, long ts, float[] matrix) {
        if (matrix == null) {
            return nativeSetEGL14TextureId(this.mNativeHandle, id, sharedContext, format, width, height, ts, sMatrix);
        }
        if (matrix.length < 16) {
            return -2;
        }
        return nativeSetEGL14TextureId(this.mNativeHandle, id, sharedContext, format, width, height, ts, matrix);
    }

    @Override // io.agora.rtc.RtcEngine
    public int startEchoTest(int intervalInSeconds) {
        Context context = this.mContext.get();
        if (context == null) {
            return -7;
        }
        doMonitorSystemEvent(context);
        return nativeStartEchoTestWithInterval(this.mNativeHandle, null, intervalInSeconds);
    }

    private int setParameter(String key, String value) {
        return setParameters(formatString("{\"%s\":\"%s\"}", key, value));
    }

    @Override // io.agora.rtc.RtcEngine
    public int addVideoWatermark(String watermarkUrl, WatermarkOptions options) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        if (watermarkUrl == null || TextUtils.isEmpty(watermarkUrl) || options == null) {
            return -2;
        }
        WatermarkOptions.Rectangle rectangle = options.positionInLandscapeMode;
        if (rectangle != null) {
            int i18 = rectangle.f3246x;
            int i19 = rectangle.f3247y;
            int i20 = rectangle.width;
            i13 = rectangle.height;
            i11 = i19;
            i12 = i20;
            i10 = i18;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = 0;
            i13 = 0;
        }
        WatermarkOptions.Rectangle rectangle2 = options.positionInPortraitMode;
        if (rectangle2 != null) {
            int i21 = rectangle2.f3246x;
            int i22 = rectangle2.f3247y;
            int i23 = rectangle2.width;
            i17 = rectangle2.height;
            i14 = i21;
            i15 = i22;
            i16 = i23;
        } else {
            i14 = 0;
            i15 = 0;
            i16 = 0;
            i17 = 0;
        }
        return nativeAddVideoWatermark(this.mNativeHandle, watermarkUrl, options.visibleInPreview, i10, i11, i12, i13, i14, i15, i16, i17);
    }

    private int checkVoipPermissions(Context context, int clientRole) {
        if (clientRole == 1) {
            try {
                checkVoipPermissions(context);
                return 0;
            } catch (SecurityException e) {
                Logging.e(TAG, "Do not have enough permission! ", e);
                return -9;
            }
        }
        if (clientRole != 2) {
            return -2;
        }
        try {
            checkVoipPermissions(context, "android.permission.INTERNET");
            return 0;
        } catch (SecurityException unused) {
            Logging.e(TAG, "Do not have Internet permission!");
            return -9;
        }
    }

    public RtcEngineImpl(RtcEngineConfig config) throws Exception {
        this.mNativeHandle = 0L;
        this.mContext = new WeakReference<>(config.mContext);
        addHandler(config.mEventHandler);
        this.mNativeHandle = nativeObjectInitWithConfig(config);
        initDeviceNotify(config.mContext);
    }
}
