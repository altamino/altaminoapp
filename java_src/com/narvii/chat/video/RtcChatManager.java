package com.narvii.chat.video;

import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.SurfaceView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.FaceTrackStatusChangeListener;
import com.narvii.chat.video.CameraRenderer;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.video.framepusher.AgoraFramePusher;
import com.narvii.video.framepusher.MediaFramePusher;
import com.narvii.video.model.ChannelActionCallback;
import com.narvii.video.model.EngineConfig;
import com.narvii.video.model.RtcEventHandler;
import com.narvii.video.model.WorkerThread;
import com.narvii.video.ui.UserStatusData;
import com.narvii.video.ui.Utils;
import io.agora.rtc.IRtcEngineEventHandler;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.internal.DeviceUtils;
import io.agora.rtc.video.VideoCanvas;
import java.io.IOException;
import javax.microedition.khronos.egl.EGLContext;

/* loaded from: classes.dex */
public class RtcChatManager {
    public static final int AGORA_TYPE_AUDIO = 1;
    public static final int AGORA_TYPE_VIDEO = 2;
    public static final int AUDIO_CHANNEL_NUMBER = 1;
    public static final int HIGH_STREAM_ACCOUNT_LIMIT = 2;
    public static final int REMOTE_VIDEO_STREAM_HIGH = 0;
    public static final int REMOTE_VIDEO_STREAM_LOW = 1;
    public static final int SAMPLE_RATE = 44100;
    public static final int VIDEO_PROFILE_CONFIG_ACCOUNT_LIMIT = 2;
    private static final int VIDEO_RPOFILE = 33;
    private static final int VIDEO_RPOFILE_SCREEN_ROOM = 39;
    private String appId;
    private Context context;
    private String curChannelName;
    private int curChannelType;
    private int curNdcId;
    private int curSigChannelType;
    FaceTrackStatusChangeListener faceTrackStatusChange;
    private boolean forceAvatar;
    private boolean isCurUserJoined;
    private boolean isJoinRequestSent;
    private volatile boolean isLocalVideoFrameSet;
    private int localUid;
    private CameraRenderer localUserSurfaceView;
    private MediaFramePusher mediaFramePusher;
    private NVContext nvContext;
    private int screenRoomRtcDataStream;
    private boolean screenRoomWidthHeightSwap;
    private int statSigChannelType;
    private long statSigStartTime;
    private RtcEventHandler videoEventHandler;
    private WorkerThread workerThread;
    private SparseArray<UserStatusData> userDataList = new SparseArray<>();
    private EventDispatcher<AgoraRoleChangeListener> agoraRoleChangeListenerEventDispatcher = new EventDispatcher<>();
    private RtcEventHandler wrappedEventHandler = new RtcEventHandler() { // from class: com.narvii.chat.video.RtcChatManager.4
        @Override // com.narvii.video.model.RtcEventHandler
        public void onLocalUserSteamDecoded(int i) {
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onRemoteUserJoined(final int i) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.1
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i);
                    if (userStatusData != null) {
                        userStatusData.netWorkStatus = 0;
                    } else {
                        RtcChatManager.this.addNewUser(i, null, 1);
                    }
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onRemoteUserJoined(i);
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onFirstRemoteVideoDecoded(final int i, final int i2, final int i3, final int i4) {
            if (RtcChatManager.this.curChannelType == 2) {
                Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (RtcChatManager.this.workerThread.getEngineConfig().mUid == i || RtcChatManager.this.videoEventHandler == null) {
                            return;
                        }
                        RtcChatManager.this.videoEventHandler.onFirstRemoteVideoDecoded(i, i2, i3, i4);
                    }
                });
            }
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onJoinChannelSuccess(final String str, final int i, final int i2) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.3
                @Override // java.lang.Runnable
                public void run() {
                    RtcChatManager.this.isCurUserJoined = true;
                    if (((UserStatusData) RtcChatManager.this.userDataList.get(i)) != null) {
                        if (RtcChatManager.this.videoEventHandler != null) {
                            RtcChatManager.this.videoEventHandler.onJoinChannelSuccess(str, i, i2);
                        }
                    } else {
                        SparseArray sparseArray = RtcChatManager.this.userDataList;
                        int i3 = i;
                        sparseArray.put(i3, new UserStatusData(i3, RtcChatManager.this.localUserSurfaceView, 0));
                    }
                    RtcChatManager rtcChatManager = RtcChatManager.this;
                    rtcChatManager.statUpdate(rtcChatManager.curSigChannelType);
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onRejoinChannelSuccess(final String str, final int i, final int i2) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.4
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i);
                    if (userStatusData == null || userStatusData.netWorkStatus == 0) {
                        return;
                    }
                    userStatusData.netWorkStatus = 0;
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onRejoinChannelSuccess(str, i, i2);
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onLeaveChannel() {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.5
                @Override // java.lang.Runnable
                public void run() throws IOException {
                    RtcChatManager.this.screenRoomRtcDataStream = 0;
                    if (((UserStatusData) RtcChatManager.this.userDataList.get(RtcChatManager.this.localUid)) != null) {
                        if (RtcChatManager.this.localUserSurfaceView != null) {
                            RtcChatManager.this.localUserSurfaceView.onDestroy();
                            RtcChatManager.this.localUserSurfaceView = null;
                        }
                        RtcChatManager.this.userDataList.remove(RtcChatManager.this.localUid);
                    }
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onLeaveChannel();
                    }
                    RtcChatManager.this.statUpdate(0);
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onUserOffline(final int i, final int i2) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.6
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcChatManager.this.userDataList.get(i) == null) {
                        return;
                    }
                    if (i2 == 1) {
                        UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i);
                        if (userStatusData != null) {
                            userStatusData.netWorkStatus = 1;
                        }
                    } else {
                        RtcChatManager.this.userDataList.remove(i);
                        RtcChatManager rtcChatManager = RtcChatManager.this;
                        rtcChatManager.muteRemoteUer(rtcChatManager.curChannelType, i, false);
                    }
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onUserOffline(i, i2);
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onUserMuteAudio(final int i, final boolean z) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.7
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i);
                    if (userStatusData != null && (z ^ userStatusData.isVoiceMuted())) {
                        userStatusData.setVoiceMuted(z);
                        userStatusData.mVolume = 0;
                        if (RtcChatManager.this.videoEventHandler != null) {
                            RtcChatManager.this.videoEventHandler.onUserMuteAudio(i, z);
                        }
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onUserMuteVideo(final int i, final boolean z) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.8
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i);
                    if (userStatusData != null && (z ^ userStatusData.isVideoMuted())) {
                        userStatusData.setVideoMuted(z);
                        if (z && userStatusData.videoFrameStatus != 2) {
                            userStatusData.videoFrameStatus = 2;
                        }
                        if (RtcChatManager.this.videoEventHandler != null) {
                            RtcChatManager.this.videoEventHandler.onUserMuteVideo(i, z);
                        }
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onAudioVolumeIndication(final IRtcEngineEventHandler.AudioVolumeInfo[] audioVolumeInfoArr, final int i) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.9
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onAudioVolumeIndication(audioVolumeInfoArr, i);
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onAudioRouteChanged(final int i) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.10
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(RtcChatManager.this.getLocalUid());
                    if (userStatusData != null) {
                        userStatusData.audioRoute = i;
                        if (RtcChatManager.this.videoEventHandler != null) {
                            RtcChatManager.this.videoEventHandler.onAudioRouteChanged(i);
                        }
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onExtraCallback(final int i, final Object... objArr) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.11
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onExtraCallback(i, objArr);
                    }
                    if (i == 10) {
                        IRtcEngineEventHandler.RemoteVideoStats remoteVideoStats = (IRtcEngineEventHandler.RemoteVideoStats) objArr[0];
                        UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(remoteVideoStats.uid);
                        if (userStatusData != null) {
                            int i2 = userStatusData.streamType;
                            int i3 = remoteVideoStats.rxStreamType;
                            if (i2 != i3) {
                                userStatusData.streamType = i3;
                            }
                        }
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onRequestToken() {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.12
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onRequestToken();
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onNetworkStatusChanged(final int i) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.13
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onNetworkStatusChanged(i);
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onNetworkQuality(final int i, int i2, final int i3) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.14
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData;
                    if ((i == RtcChatManager.this.localUid || i == 0) && (userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(RtcChatManager.this.localUid)) != null) {
                        userStatusData.netWorkQuality = i3;
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onAudioQuality(final int i, final int i2, final short s, final short s2) {
            if (i != RtcChatManager.this.localUid) {
                return;
            }
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.15
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i);
                    UserStatusData userStatusData2 = (UserStatusData) RtcChatManager.this.userDataList.get(RtcChatManager.this.localUid);
                    if (userStatusData == null || userStatusData2 == null) {
                        return;
                    }
                    userStatusData.setAudioQuality(i2);
                    if (!userStatusData.needUpdateNetWorkSummary(userStatusData2.netWorkQuality) || RtcChatManager.this.videoEventHandler == null) {
                        return;
                    }
                    RtcChatManager.this.videoEventHandler.onAudioQuality(i, i2, s, s2);
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onError(int i, String str) {
            if (NVApplication.DEBUG) {
                return;
            }
            Log.w("agoraError", "errorCode: " + i + " errorDescription: " + str);
        }
    };

    String statName(int i) {
        return i != 1 ? i != 3 ? i != 4 ? i != 5 ? "Other" : "Screening Room" : "Video" : "Avatar" : "Audio";
    }

    public RtcChatManager(NVContext nVContext) {
        this.nvContext = nVContext;
        this.context = nVContext.getContext().getApplicationContext();
        this.appId = this.context.getString(NVApplication.DEBUG ? R.string.agora_app_id_dev : R.string.agora_app_id_pro);
    }

    public void initRtcService(boolean z, int i, RtcEventHandler rtcEventHandler) {
        this.curChannelType = i;
        if (NVApplication.DEBUG) {
            if (z) {
                this.appId = this.context.getString(R.string.agora_app_id_dev_screen_room);
            } else if (i == 2) {
                this.appId = this.context.getString(R.string.agora_app_id_dev_video);
            } else {
                this.appId = this.context.getString(R.string.agora_app_id_dev);
            }
        } else if (z) {
            this.appId = this.context.getString(R.string.agora_app_id_pro_screen_room);
        } else if (i == 2) {
            this.appId = this.context.getString(R.string.agora_app_id_pro_video);
        } else {
            this.appId = this.context.getString(R.string.agora_app_id_pro);
        }
        initVideoEngine(i == 2 ? 1 : 0);
        initVideoEventHandler(rtcEventHandler);
    }

    public MediaFramePusher getMediaFramePusher() {
        return this.mediaFramePusher;
    }

    public void setCurSigChannelType(int i) {
        this.curSigChannelType = i;
    }

    public int getCurChannelType() {
        return this.curChannelType;
    }

    public void initVideoEventHandler(RtcEventHandler rtcEventHandler) {
        this.videoEventHandler = rtcEventHandler;
        if (this.workerThread.eventHandler().containeHandle(this.wrappedEventHandler)) {
            return;
        }
        addEventHandler(this.wrappedEventHandler);
    }

    public void addAgoraRoleChangeListener(AgoraRoleChangeListener agoraRoleChangeListener) {
        this.agoraRoleChangeListenerEventDispatcher.addListener(agoraRoleChangeListener);
    }

    public void removeAgoraRoleChangeListener(AgoraRoleChangeListener agoraRoleChangeListener) {
        this.agoraRoleChangeListenerEventDispatcher.removeListener(agoraRoleChangeListener);
    }

    public void joinChannel(String str, String str2, int i, int i2, int i3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        if (this.workerThread == null || this.isJoinRequestSent) {
            return;
        }
        this.isJoinRequestSent = true;
        this.curChannelName = str2;
        this.localUid = i2;
        this.curNdcId = i3;
        worker().getEngineConfig().mUid = i2;
        if (this.curChannelType == 2) {
            configEngine(i, z4 ? 39 : 33, true, !z4, z5);
            configAudioSource(z2, SAMPLE_RATE, 1);
            worker().getRtcEngine().enableDualStreamMode(true);
            configAudioManager(z2);
            this.mediaFramePusher = new AgoraFramePusher(worker().getRtcEngine());
            if (this.userDataList.get(i2) == null) {
                this.userDataList.put(i2, new UserStatusData(i2, z3 ? this.localUserSurfaceView : null, 0));
            }
            this.workerThread.joinChannel(str, str2, i2);
            return;
        }
        if (this.userDataList.get(i2) == null) {
            this.userDataList.put(i2, new UserStatusData(i2, null, 0));
        }
        configAudioManager(false);
        configAudioSource(false, SAMPLE_RATE, 1);
        this.workerThread.joinChannel(str, str2, i2);
        this.workerThread.getRtcEngine().setAudioProfile(2, 3);
        this.workerThread.getRtcEngine().setDefaultAudioRoutetoSpeakerphone(z);
    }

    public void setLocalUid(int i) {
        this.localUid = i;
        worker().getEngineConfig().mUid = i;
    }

    public void setLocalVoiceStatus() {
        if (this.userDataList.get(this.localUid) == null) {
            this.userDataList.put(this.localUid, new UserStatusData(this.localUid, null, 0));
        }
    }

    public void initLocalVideoStatus(int i) {
        setCustomLocalVideo(i);
        if (this.userDataList.get(this.localUid) == null) {
            this.userDataList.put(this.localUid, new UserStatusData(this.localUid, this.localUserSurfaceView, 0));
        }
    }

    public void setFaceTrackStatusChange(FaceTrackStatusChangeListener faceTrackStatusChangeListener) {
        this.faceTrackStatusChange = faceTrackStatusChangeListener;
    }

    public void setForceAvatar(boolean z) {
        this.forceAvatar = z;
    }

    public void enterLowerStreamMode() {
        if (this.userDataList == null) {
            return;
        }
        for (int i = 0; i < this.userDataList.size(); i++) {
            if (this.userDataList.keyAt(i) != this.localUid) {
                setLowerStreamMode(this.userDataList.keyAt(i), true);
            }
        }
    }

    public void restoreStreamMode() {
        SparseArray<UserStatusData> sparseArray = this.userDataList;
        if (sparseArray == null) {
            return;
        }
        if (sparseArray.size() > 2) {
            enterLowerStreamMode();
            return;
        }
        for (int i = 0; i < this.userDataList.size(); i++) {
            if (this.userDataList.keyAt(i) != this.localUid) {
                setLowerStreamMode(this.userDataList.keyAt(i), false);
            }
        }
    }

    public void setLowerStreamMode(int i, boolean z) {
        if (worker() == null || worker().getRtcEngine() == null) {
            return;
        }
        worker().getRtcEngine().setRemoteVideoStreamType(i, 0);
    }

    public void requestToBeBroadcast() {
        requestToBeBroadcast(true, false);
    }

    public void requesToBeAudience() {
        if (worker() != null) {
            worker().changeRole(2);
        }
        this.agoraRoleChangeListenerEventDispatcher.dispatch(new Callback<AgoraRoleChangeListener>() { // from class: com.narvii.chat.video.RtcChatManager.1
            @Override // com.narvii.util.Callback
            public void call(AgoraRoleChangeListener agoraRoleChangeListener) {
                agoraRoleChangeListener.onUserRoleChanged(2);
            }
        });
    }

    public void requestToBeBroadcast(boolean z, boolean z2) {
        SparseArray<UserStatusData> sparseArray;
        if (z && (sparseArray = this.userDataList) != null && sparseArray.get(this.localUid) != null) {
            setCustomLocalVideo(this.curNdcId);
        }
        if (worker() != null) {
            worker().doConfig(1, z2);
        } else {
            Log.e("try to request to be a broadcast while the worker not ready");
        }
        this.agoraRoleChangeListenerEventDispatcher.dispatch(new Callback<AgoraRoleChangeListener>() { // from class: com.narvii.chat.video.RtcChatManager.2
            @Override // com.narvii.util.Callback
            public void call(AgoraRoleChangeListener agoraRoleChangeListener) {
                agoraRoleChangeListener.onUserRoleChanged(1);
            }
        });
    }

    private void setLocalVideoPlayView() {
        if (this.mediaFramePusher != null) {
            this.mediaFramePusher = new AgoraFramePusher(worker().getRtcEngine());
        }
    }

    private void setCustomLocalVideo(int i) {
        if (this.mediaFramePusher == null) {
            this.mediaFramePusher = new AgoraFramePusher(worker().getRtcEngine());
        }
        if (this.localUserSurfaceView == null) {
            this.localUserSurfaceView = new CameraRenderer(this.context, this.forceAvatar);
            this.localUserSurfaceView.setCameraFramePusher(this.mediaFramePusher);
            this.localUserSurfaceView.setCameraRendererStatusListener(new CameraRenderer.ICustomCameraPreviewStatusListener() { // from class: com.narvii.chat.video.RtcChatManager.3
                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onEglContextReady(EGLContext eGLContext) {
                }

                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onPreDraw() {
                }

                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onTrackStatusChange(final int i2) {
                    UserStatusData localUserInfo = RtcChatManager.this.getLocalUserInfo();
                    if (localUserInfo == null || localUserInfo.getTrackingStatus() == i2) {
                        return;
                    }
                    localUserInfo.setTrackingStatus(i2);
                    Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FaceTrackStatusChangeListener faceTrackStatusChangeListener = RtcChatManager.this.faceTrackStatusChange;
                            if (faceTrackStatusChangeListener != null) {
                                faceTrackStatusChangeListener.onFaceStatusChange(i2);
                            }
                        }
                    });
                }

                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onInitResourceFail() {
                    NVToast.makeText(RtcChatManager.this.context, RtcChatManager.this.context.getString(R.string.avatar_init_fail), 1).show();
                }

                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onFrameAvailable(int i2, EGLContext eGLContext, int i3, int i4, int i5) {
                    if (!RtcChatManager.this.isJoinRequestSent || RtcChatManager.this.isLocalVideoFrameSet) {
                        return;
                    }
                    RtcChatManager.this.isLocalVideoFrameSet = true;
                    UserStatusData localUserInfo = RtcChatManager.this.getLocalUserInfo();
                    if (localUserInfo != null) {
                        localUserInfo.videoFrameStatus = 2;
                    }
                    Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RtcChatManager.this.videoEventHandler != null) {
                                RtcChatManager.this.videoEventHandler.onLocalUserSteamDecoded(RtcChatManager.this.getLocalUid());
                            }
                        }
                    });
                }
            });
            if (this.userDataList.get(this.localUid) != null) {
                this.userDataList.get(this.localUid).mView = this.localUserSurfaceView;
            } else {
                this.userDataList.put(this.localUid, new UserStatusData(this.localUid, this.localUserSurfaceView, 0));
            }
            if (getLocalUserInfo() != null) {
                getLocalUserInfo().proItemStaus = this.forceAvatar ? 1 : 2;
            }
        }
    }

    public void addNewUser(int i, SurfaceView surfaceView, int i2) {
        UserStatusData userStatusData = new UserStatusData(i, surfaceView, 0);
        userStatusData.setVideoFrameStatus(i2);
        this.userDataList.put(i, userStatusData);
    }

    public void leaveChannel(ChannelActionCallback channelActionCallback) {
        int i = this.curChannelType;
        if (i == 1) {
            leaveAudioChannel(channelActionCallback);
        } else if (i == 2) {
            leaveVideoChannel(channelActionCallback);
        }
    }

    private void leaveVideoChannel(ChannelActionCallback channelActionCallback) throws IOException {
        CameraRenderer cameraRenderer = this.localUserSurfaceView;
        if (cameraRenderer != null) {
            cameraRenderer.onDestroy();
            this.localUserSurfaceView = null;
        }
        clearStatus(channelActionCallback);
    }

    public void leaveAudioChannel(ChannelActionCallback channelActionCallback) {
        if (this.workerThread == null) {
            return;
        }
        clearStatus(channelActionCallback);
    }

    private void clearStatus(ChannelActionCallback channelActionCallback) {
        this.userDataList.clear();
        this.isCurUserJoined = false;
        this.isJoinRequestSent = false;
        this.isLocalVideoFrameSet = false;
        this.forceAvatar = false;
        this.workerThread.leaveChannel(this.curChannelName, channelActionCallback);
        this.curChannelName = null;
    }

    public SparseArray<UserStatusData> getUserDataList() {
        return this.userDataList;
    }

    public int getLocalUid() {
        WorkerThread workerThread = this.workerThread;
        if (workerThread == null) {
            return 0;
        }
        return workerThread.getEngineConfig().mUid;
    }

    public UserStatusData getLocalUserInfo() {
        return this.userDataList.get(this.workerThread.getEngineConfig().mUid);
    }

    public void onPause() {
        CameraRenderer cameraRenderer = this.localUserSurfaceView;
        if (cameraRenderer != null) {
            cameraRenderer.onPause();
        }
    }

    public void onResume() {
        CameraRenderer cameraRenderer = this.localUserSurfaceView;
        if (cameraRenderer != null) {
            cameraRenderer.onResume();
        }
    }

    public CameraRenderer getLocalUserSurfaceView() {
        return this.localUserSurfaceView;
    }

    void statUpdate(int i) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.statSigChannelType = i;
        if (i == 0) {
            this.statSigStartTime = 0L;
        } else {
            this.statSigStartTime = jElapsedRealtime;
        }
    }

    public WorkerThread worker() {
        return this.workerThread;
    }

    public EngineConfig config() {
        return worker().getEngineConfig();
    }

    public void addEventHandler(RtcEventHandler rtcEventHandler) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.eventHandler().addEventHandler(rtcEventHandler);
        }
    }

    public void configEngine(int i, int i2, boolean z, boolean z2, boolean z3) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.configEngine(i, i2, z, z2, z3);
        }
    }

    private void configAudioSource(boolean z, int i, int i2) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.configAudioSource(z, i, i2);
        }
    }

    private void configAudioManager(boolean z) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.configAudioManger(z);
        }
    }

    public void setupRemoteVideo(VideoCanvas videoCanvas) {
        this.workerThread.getRtcEngine().setupRemoteVideo(videoCanvas);
    }

    public void initVideoEngine(int i) throws InterruptedException {
        WorkerThread workerThread = this.workerThread;
        if (workerThread == null || workerThread.getCurChannelprofile() != i) {
            WorkerThread workerThread2 = this.workerThread;
            if (workerThread2 == null) {
                this.workerThread = new WorkerThread(this.context, i, this.appId, NVApplication.DEBUG);
                this.workerThread.start();
                this.workerThread.waitForReady();
                return;
            }
            workerThread2.setCurChannelProfile(i);
        }
    }

    private UserStatusData getLocalUserStatus() {
        SparseArray<UserStatusData> sparseArray = this.userDataList;
        if (sparseArray == null || sparseArray.size() == 0) {
            return null;
        }
        for (int i = 0; i < this.userDataList.size(); i++) {
            if (this.userDataList.keyAt(i) == this.localUid) {
                return this.userDataList.valueAt(i);
            }
        }
        return null;
    }

    public void flipCamera() {
        CameraRenderer cameraRenderer = this.localUserSurfaceView;
        if (cameraRenderer != null) {
            cameraRenderer.switchCamera();
        }
    }

    public void setCameraFacing(boolean z) {
        if (this.localUserSurfaceView == null) {
            return;
        }
        if (z) {
            if (isFrontCamera()) {
                return;
            }
            flipCamera();
        } else if (isFrontCamera()) {
            flipCamera();
        }
    }

    public boolean isFrontCamera() {
        return this.localUserSurfaceView.isFrontCamera();
    }

    public boolean isEligible() {
        try {
            RtcEngine.getSdkVersion();
            return DeviceUtils.getRecommendedEncoderType() == 0;
        } catch (UnsatisfiedLinkError unused) {
            return false;
        }
    }

    public void muteLocalStream(int i, boolean z) {
        if (i == 2) {
            muteLocalVideo(z);
            muteLocalAudio(z);
        } else {
            muteLocalAudio(z);
        }
    }

    public void muteLocalStreamWithoutChangeStatus(int i, boolean z) {
        if (i == 2) {
            muteLocalVideo(z, false);
            muteLocalAudio(z, false);
        } else {
            muteLocalAudio(z, false);
        }
    }

    public int muteLocalVideo(boolean z) {
        return muteLocalVideo(z, true);
    }

    public int muteLocalVideo(boolean z, boolean z2) {
        int iMuteLocalVideoStream = (worker() == null || worker().getRtcEngine() == null) ? -1 : worker().getRtcEngine().muteLocalVideoStream(z);
        UserStatusData localUserStatus = getLocalUserStatus();
        if (iMuteLocalVideoStream == 0 && localUserStatus != null && z2) {
            CameraRenderer cameraRenderer = this.localUserSurfaceView;
            if (cameraRenderer != null) {
                if (z) {
                    cameraRenderer.stopPreview();
                } else {
                    cameraRenderer.startPreview();
                }
            }
            localUserStatus.setVideoMuted(z);
            RtcEventHandler rtcEventHandler = this.videoEventHandler;
            if (rtcEventHandler != null) {
                rtcEventHandler.onUserMuteVideo(localUserStatus.mUid, z);
            }
        }
        return iMuteLocalVideoStream;
    }

    public int muteLocalAudio(boolean z) {
        return muteLocalAudio(z, true);
    }

    public int muteLocalAudio(boolean z, boolean z2) {
        if (worker() == null || worker().getRtcEngine() == null) {
            return 0;
        }
        int iMuteLocalAudioStream = worker().getRtcEngine().muteLocalAudioStream(z);
        UserStatusData localUserStatus = getLocalUserStatus();
        if (iMuteLocalAudioStream == 0 && localUserStatus != null) {
            if (z2) {
                localUserStatus.setVoiceMuted(z);
            }
            RtcEventHandler rtcEventHandler = this.videoEventHandler;
            if (rtcEventHandler != null) {
                rtcEventHandler.onUserMuteAudio(localUserStatus.mUid, z);
            }
        }
        return iMuteLocalAudioStream;
    }

    public void toggleSpeaker() {
        if (this.userDataList.get(this.localUid) != null) {
            worker().getRtcEngine().setEnableSpeakerphone(!r0.isSpeakerMode());
        }
    }

    public void toggleLocalAudio() {
        if (getLocalUserStatus() == null) {
            return;
        }
        muteLocalAudio(!r0.isVoiceMuted());
    }

    public void toggleLocalVideo() {
        if (getLocalUserStatus() == null) {
            return;
        }
        muteLocalVideo(!r0.isVideoMuted());
    }

    public void muteRemoteUer(int i, int i2, boolean z) {
        if (i == 2) {
            muteRemoteVideo(i2, z);
            muteRemoteAudio(i2, z);
        } else {
            muteRemoteAudio(i2, z);
        }
    }

    public int muteRemoteVideo(int i, boolean z) {
        return worker().getRtcEngine().muteRemoteVideoStream(i, z);
    }

    public int muteRemoteAudio(int i, boolean z) {
        return worker().getRtcEngine().muteRemoteAudioStream(i, z);
    }

    public void muteAllRemoteStream(boolean z) {
        if (worker() == null || worker().getRtcEngine() == null) {
            return;
        }
        worker().getRtcEngine().muteAllRemoteAudioStreams(z);
    }

    public void muteAllRemoteStream() {
        worker().getRtcEngine().muteAllRemoteAudioStreams(true);
        worker().getRtcEngine().muteLocalVideoStream(true);
    }

    public UserStatusData getUserStausData(int i) {
        SparseArray<UserStatusData> sparseArray = this.userDataList;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i);
    }

    public void setScreenRoomHostSwap(boolean z) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread == null) {
            return;
        }
        this.screenRoomWidthHeightSwap = z;
        workerThread.changeVideoProfile(39, z);
    }

    public void initScreenRoomHostSwap() {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.changeVideoProfile(39, this.screenRoomWidthHeightSwap);
        }
    }

    public int sendDataStream(byte[] bArr) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread == null) {
            return -7;
        }
        if (this.screenRoomRtcDataStream == 0) {
            int iCreateDataStream = workerThread.getRtcEngine().createDataStream(false, false);
            if (iCreateDataStream < 0) {
                return iCreateDataStream;
            }
            this.screenRoomRtcDataStream = iCreateDataStream;
        }
        return this.workerThread.getRtcEngine().sendStreamMessage(this.screenRoomRtcDataStream, bArr);
    }
}
