package com.narvii.chat.video;

import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.SurfaceView;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.FaceTrackStatusChangeListener;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.statistics.StatisticsService;
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
import javax.microedition.khronos.egl.EGLContext;

/* JADX INFO: loaded from: classes2.dex */
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
    private RtcEventHandler wrappedEventHandler = new AnonymousClass4();

    /* JADX INFO: renamed from: com.narvii.chat.video.RtcChatManager$4, reason: invalid class name */
    class AnonymousClass4 implements RtcEventHandler {
        @Override // com.narvii.video.model.RtcEventHandler
        public void onLocalUserSteamDecoded(int i10) {
        }

        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAudioQuality$4(int i10, int i11, short s, short s5) {
            UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i10);
            UserStatusData userStatusData2 = (UserStatusData) RtcChatManager.this.userDataList.get(RtcChatManager.this.localUid);
            if (userStatusData == null || userStatusData2 == null) {
                return;
            }
            userStatusData.setAudioQuality(i11);
            if (!userStatusData.needUpdateNetWorkSummary(userStatusData2.netWorkQuality) || RtcChatManager.this.videoEventHandler == null) {
                return;
            }
            RtcChatManager.this.videoEventHandler.onAudioQuality(i10, i11, s, s5);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onExtraCallback$0(int i10, Object[] objArr) {
            if (RtcChatManager.this.videoEventHandler != null) {
                RtcChatManager.this.videoEventHandler.onExtraCallback(i10, objArr);
            }
            if (i10 == 10) {
                IRtcEngineEventHandler.RemoteVideoStats remoteVideoStats = (IRtcEngineEventHandler.RemoteVideoStats) objArr[0];
                UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(remoteVideoStats.uid);
                if (userStatusData != null) {
                    int i11 = userStatusData.streamType;
                    int i12 = remoteVideoStats.rxStreamType;
                    if (i11 != i12) {
                        userStatusData.streamType = i12;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNetworkQuality$3(int i10, int i11) {
            UserStatusData userStatusData;
            if ((i10 == RtcChatManager.this.localUid || i10 == 0) && (userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(RtcChatManager.this.localUid)) != null) {
                userStatusData.netWorkQuality = i11;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNetworkStatusChanged$2(int i10) {
            if (RtcChatManager.this.videoEventHandler != null) {
                RtcChatManager.this.videoEventHandler.onNetworkStatusChanged(i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRequestToken$1() {
            if (RtcChatManager.this.videoEventHandler != null) {
                RtcChatManager.this.videoEventHandler.onRequestToken();
            }
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onAudioQuality(final int i10, final int i11, final short s, final short s5) {
            if (i10 != RtcChatManager.this.localUid) {
                return;
            }
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2120a.lambda$onAudioQuality$4(i10, i11, s, s5);
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onAudioRouteChanged(final int i10) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.10
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(RtcChatManager.this.getLocalUid());
                    if (userStatusData != null) {
                        userStatusData.audioRoute = i10;
                        if (RtcChatManager.this.videoEventHandler != null) {
                            RtcChatManager.this.videoEventHandler.onAudioRouteChanged(i10);
                        }
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onAudioVolumeIndication(final IRtcEngineEventHandler.AudioVolumeInfo[] audioVolumeInfoArr, final int i10) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.9
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onAudioVolumeIndication(audioVolumeInfoArr, i10);
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onError(int i10, String str) {
            if (NVApplication.DEBUG) {
                return;
            }
            Log.w("agoraError", "errorCode: " + i10 + " errorDescription: " + str);
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onExtraCallback(final int i10, final Object... objArr) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2117a.lambda$onExtraCallback$0(i10, objArr);
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onFirstRemoteVideoDecoded(final int i10, final int i11, final int i12, final int i13) {
            if (RtcChatManager.this.curChannelType == 2) {
                Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (RtcChatManager.this.workerThread.getEngineConfig().mUid == i10 || RtcChatManager.this.videoEventHandler == null) {
                            return;
                        }
                        RtcChatManager.this.videoEventHandler.onFirstRemoteVideoDecoded(i10, i11, i12, i13);
                    }
                });
            }
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onJoinChannelSuccess(final String str, final int i10, final int i11) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.3
                @Override // java.lang.Runnable
                public void run() {
                    RtcChatManager.this.isCurUserJoined = true;
                    if (((UserStatusData) RtcChatManager.this.userDataList.get(i10)) == null) {
                        SparseArray sparseArray = RtcChatManager.this.userDataList;
                        int i12 = i10;
                        sparseArray.put(i12, new UserStatusData(i12, RtcChatManager.this.localUserSurfaceView, 0));
                    } else if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onJoinChannelSuccess(str, i10, i11);
                    }
                    RtcChatManager rtcChatManager = RtcChatManager.this;
                    rtcChatManager.statUpdate(rtcChatManager.curSigChannelType);
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onLeaveChannel() {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.5
                @Override // java.lang.Runnable
                public void run() {
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
        public void onNetworkQuality(final int i10, int i11, final int i12) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2114a.lambda$onNetworkQuality$3(i10, i12);
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onNetworkStatusChanged(final int i10) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2112a.lambda$onNetworkStatusChanged$2(i10);
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onRejoinChannelSuccess(final String str, final int i10, final int i11) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.4
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i10);
                    if (userStatusData == null || userStatusData.netWorkStatus == 0) {
                        return;
                    }
                    userStatusData.netWorkStatus = 0;
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onRejoinChannelSuccess(str, i10, i11);
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onRemoteUserJoined(final int i10) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.1
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i10);
                    if (userStatusData != null) {
                        userStatusData.netWorkStatus = 0;
                    } else {
                        RtcChatManager.this.addNewUser(i10, null, 1);
                    }
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onRemoteUserJoined(i10);
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onRequestToken() {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2111a.lambda$onRequestToken$1();
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onUserMuteAudio(final int i10, final boolean z6) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.7
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i10);
                    if (userStatusData != null && (z6 ^ userStatusData.isVoiceMuted())) {
                        userStatusData.setVoiceMuted(z6);
                        userStatusData.mVolume = 0;
                        if (RtcChatManager.this.videoEventHandler != null) {
                            RtcChatManager.this.videoEventHandler.onUserMuteAudio(i10, z6);
                        }
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onUserMuteVideo(final int i10, final boolean z6) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.8
                @Override // java.lang.Runnable
                public void run() {
                    UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i10);
                    if (userStatusData != null && (z6 ^ userStatusData.isVideoMuted())) {
                        userStatusData.setVideoMuted(z6);
                        if (z6 && userStatusData.videoFrameStatus != 2) {
                            userStatusData.videoFrameStatus = 2;
                        }
                        if (RtcChatManager.this.videoEventHandler != null) {
                            RtcChatManager.this.videoEventHandler.onUserMuteVideo(i10, z6);
                        }
                    }
                }
            });
        }

        @Override // com.narvii.video.model.RtcEventHandler
        public void onUserOffline(final int i10, final int i11) {
            Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.4.6
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcChatManager.this.userDataList.get(i10) == null) {
                        return;
                    }
                    if (i11 == 1) {
                        UserStatusData userStatusData = (UserStatusData) RtcChatManager.this.userDataList.get(i10);
                        if (userStatusData != null) {
                            userStatusData.netWorkStatus = 1;
                        }
                    } else {
                        RtcChatManager.this.userDataList.remove(i10);
                        RtcChatManager rtcChatManager = RtcChatManager.this;
                        rtcChatManager.muteRemoteUer(rtcChatManager.curChannelType, i10, false);
                    }
                    if (RtcChatManager.this.videoEventHandler != null) {
                        RtcChatManager.this.videoEventHandler.onUserOffline(i10, i11);
                    }
                }
            });
        }
    }

    public int getCurChannelType() {
        return this.curChannelType;
    }

    public CameraRenderer getLocalUserSurfaceView() {
        return this.localUserSurfaceView;
    }

    public MediaFramePusher getMediaFramePusher() {
        return this.mediaFramePusher;
    }

    public SparseArray<UserStatusData> getUserDataList() {
        return this.userDataList;
    }

    public boolean isEligible() {
        try {
            RtcEngine.getSdkVersion();
            return DeviceUtils.getRecommendedEncoderType() == 0;
        } catch (UnsatisfiedLinkError unused) {
            return false;
        }
    }

    public void joinChannel(String str, String str2, int i10, int i11, int i12, boolean z6, boolean z10, boolean z11, boolean z12, boolean z13) {
        if (this.workerThread == null || this.isJoinRequestSent) {
            return;
        }
        this.isJoinRequestSent = true;
        this.curChannelName = str2;
        this.localUid = i11;
        this.curNdcId = i12;
        worker().getEngineConfig().mUid = i11;
        if (this.curChannelType == 2) {
            configEngine(i10, z12 ? 39 : 33, true, !z12, z13);
            configAudioSource(z10, SAMPLE_RATE, 1);
            worker().getRtcEngine().enableDualStreamMode(true);
            configAudioManager(z10);
            this.mediaFramePusher = new AgoraFramePusher(worker().getRtcEngine());
            if (this.userDataList.get(i11) == null) {
                this.userDataList.put(i11, new UserStatusData(i11, z11 ? this.localUserSurfaceView : null, 0));
            }
            this.workerThread.joinChannel(str, str2, i11);
            return;
        }
        if (this.userDataList.get(i11) == null) {
            this.userDataList.put(i11, new UserStatusData(i11, null, 0));
        }
        configAudioManager(false);
        configAudioSource(false, SAMPLE_RATE, 1);
        this.workerThread.joinChannel(str, str2, i11);
        if (this.workerThread.getRtcEngine() != null) {
            this.workerThread.getRtcEngine().setAudioProfile(2, 3);
            this.workerThread.getRtcEngine().setEnableSpeakerphone(z6);
        }
    }

    public int muteLocalAudio(boolean z6) {
        return muteLocalAudio(z6, true);
    }

    public void muteLocalStream(int i10, boolean z6) {
        if (i10 != 2) {
            muteLocalAudio(z6);
        } else {
            muteLocalVideo(z6);
            muteLocalAudio(z6);
        }
    }

    public void muteLocalStreamWithoutChangeStatus(int i10, boolean z6) {
        if (i10 != 2) {
            muteLocalAudio(z6, false);
        } else {
            muteLocalVideo(z6, false);
            muteLocalAudio(z6, false);
        }
    }

    public int muteLocalVideo(boolean z6) {
        return muteLocalVideo(z6, true);
    }

    public void muteRemoteUer(int i10, int i11, boolean z6) {
        if (i10 != 2) {
            muteRemoteAudio(i11, z6);
        } else {
            muteRemoteVideo(i11, z6);
            muteRemoteAudio(i11, z6);
        }
    }

    public void requestToBeBroadcast() {
        requestToBeBroadcast(true, false);
    }

    public void setCurSigChannelType(int i10) {
        this.curSigChannelType = i10;
    }

    public void setFaceTrackStatusChange(FaceTrackStatusChangeListener faceTrackStatusChangeListener) {
        this.faceTrackStatusChange = faceTrackStatusChangeListener;
    }

    public void setForceAvatar(boolean z6) {
        this.forceAvatar = z6;
    }

    String statName(int i10) {
        if (i10 == 1) {
            return "Audio";
        }
        if (i10 == 3) {
            return "Avatar";
        }
        if (i10 != 4) {
            return i10 != 5 ? "Other" : "Screening Room";
        }
        return "Video";
    }

    public WorkerThread worker() {
        return this.workerThread;
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

    private void configAudioManager(boolean z6) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.configAudioManger(z6);
        }
    }

    private void configAudioSource(boolean z6, int i10, int i11) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.configAudioSource(z6, i10, i11);
        }
    }

    private UserStatusData getLocalUserStatus() {
        SparseArray<UserStatusData> sparseArray = this.userDataList;
        if (sparseArray == null || sparseArray.size() == 0) {
            return null;
        }
        for (int i10 = 0; i10 < this.userDataList.size(); i10++) {
            if (this.userDataList.keyAt(i10) == this.localUid) {
                return this.userDataList.valueAt(i10);
            }
        }
        return null;
    }

    private void leaveVideoChannel(ChannelActionCallback channelActionCallback) {
        CameraRenderer cameraRenderer = this.localUserSurfaceView;
        if (cameraRenderer != null) {
            cameraRenderer.onDestroy();
            this.localUserSurfaceView = null;
        }
        clearStatus(channelActionCallback);
    }

    private void setCustomLocalVideo(int i10) {
        if (this.mediaFramePusher == null) {
            this.mediaFramePusher = new AgoraFramePusher(worker().getRtcEngine());
        }
        if (this.localUserSurfaceView == null) {
            CameraRenderer cameraRenderer = new CameraRenderer(this.context, this.forceAvatar);
            this.localUserSurfaceView = cameraRenderer;
            cameraRenderer.setCameraFramePusher(this.mediaFramePusher);
            this.localUserSurfaceView.setCameraRendererStatusListener(new CameraRenderer.ICustomCameraPreviewStatusListener() { // from class: com.narvii.chat.video.RtcChatManager.3
                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onEglContextReady(EGLContext eGLContext) {
                }

                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onPreDraw() {
                }

                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onFrameAvailable(int i11, EGLContext eGLContext, int i12, int i13, int i14) {
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

                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onInitResourceFail() {
                    NVToast.makeText(RtcChatManager.this.context, RtcChatManager.this.context.getString(R.string.avatar_init_fail), 1).show();
                }

                @Override // com.narvii.chat.video.CameraRenderer.ICustomCameraPreviewStatusListener
                public void onTrackStatusChange(final int i11) {
                    UserStatusData localUserInfo = RtcChatManager.this.getLocalUserInfo();
                    if (localUserInfo == null || localUserInfo.getTrackingStatus() == i11) {
                        return;
                    }
                    localUserInfo.setTrackingStatus(i11);
                    Utils.post(new Runnable() { // from class: com.narvii.chat.video.RtcChatManager.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FaceTrackStatusChangeListener faceTrackStatusChangeListener = RtcChatManager.this.faceTrackStatusChange;
                            if (faceTrackStatusChangeListener != null) {
                                faceTrackStatusChangeListener.onFaceStatusChange(i11);
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

    private void setLocalVideoPlayView() {
        if (this.mediaFramePusher != null) {
            this.mediaFramePusher = new AgoraFramePusher(worker().getRtcEngine());
        }
    }

    public void addAgoraRoleChangeListener(AgoraRoleChangeListener agoraRoleChangeListener) {
        this.agoraRoleChangeListenerEventDispatcher.addListener(agoraRoleChangeListener);
    }

    public void addEventHandler(RtcEventHandler rtcEventHandler) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.eventHandler().addEventHandler(rtcEventHandler);
        }
    }

    public void addNewUser(int i10, SurfaceView surfaceView, int i11) {
        UserStatusData userStatusData = new UserStatusData(i10, surfaceView, 0);
        userStatusData.setVideoFrameStatus(i11);
        this.userDataList.put(i10, userStatusData);
    }

    public void configEngine(int i10, int i11, boolean z6, boolean z10, boolean z11) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.configEngine(i10, i11, z6, z10, z11);
        }
    }

    public void destroyAgoraEngine() {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.destroyRtcEngine();
        }
    }

    public void enterLowerStreamMode() {
        if (this.userDataList == null) {
            return;
        }
        for (int i10 = 0; i10 < this.userDataList.size(); i10++) {
            if (this.userDataList.keyAt(i10) != this.localUid) {
                setLowerStreamMode(this.userDataList.keyAt(i10), true);
            }
        }
    }

    public void flipCamera() {
        CameraRenderer cameraRenderer = this.localUserSurfaceView;
        if (cameraRenderer != null) {
            cameraRenderer.switchCamera();
        }
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

    public UserStatusData getUserStausData(int i10) {
        SparseArray<UserStatusData> sparseArray = this.userDataList;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i10);
    }

    public void initRtcService(boolean z6, int i10, RtcEventHandler rtcEventHandler) {
        this.curChannelType = i10;
        if (NVApplication.DEBUG) {
            if (z6) {
                this.appId = this.context.getString(R.string.agora_app_id_dev_screen_room);
            } else if (i10 == 2) {
                this.appId = this.context.getString(R.string.agora_app_id_dev_video);
            } else {
                this.appId = this.context.getString(R.string.agora_app_id_dev);
            }
        } else if (z6) {
            this.appId = this.context.getString(R.string.agora_app_id_pro_screen_room);
        } else if (i10 == 2) {
            this.appId = this.context.getString(R.string.agora_app_id_pro_video);
        } else {
            this.appId = this.context.getString(R.string.agora_app_id_pro);
        }
        initVideoEngine(i10 == 2 ? 1 : 0);
        initVideoEventHandler(rtcEventHandler);
    }

    public void initScreenRoomHostSwap() {
        WorkerThread workerThread = this.workerThread;
        if (workerThread != null) {
            workerThread.changeVideoProfile(39, this.screenRoomWidthHeightSwap);
        }
    }

    public void initVideoEngine(int i10) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread == null || workerThread.getCurChannelprofile() != i10) {
            WorkerThread workerThread2 = this.workerThread;
            if (workerThread2 != null) {
                workerThread2.setCurChannelProfile(i10);
                return;
            }
            WorkerThread workerThread3 = new WorkerThread(this.context, i10, this.appId, NVApplication.DEBUG);
            this.workerThread = workerThread3;
            workerThread3.start();
            this.workerThread.waitForReady();
        }
    }

    public void initVideoEventHandler(RtcEventHandler rtcEventHandler) {
        this.videoEventHandler = rtcEventHandler;
        if (this.workerThread.eventHandler().containeHandle(this.wrappedEventHandler)) {
            return;
        }
        addEventHandler(this.wrappedEventHandler);
    }

    public boolean isFrontCamera() {
        return this.localUserSurfaceView.isFrontCamera();
    }

    public void leaveAudioChannel(ChannelActionCallback channelActionCallback) {
        if (this.workerThread == null) {
            return;
        }
        clearStatus(channelActionCallback);
    }

    public void leaveChannel(ChannelActionCallback channelActionCallback) {
        int i10 = this.curChannelType;
        if (i10 == 1) {
            leaveAudioChannel(channelActionCallback);
        } else if (i10 == 2) {
            leaveVideoChannel(channelActionCallback);
        }
    }

    public int muteLocalAudio(boolean z6, boolean z10) {
        if (worker() == null || worker().getRtcEngine() == null) {
            return 0;
        }
        int iMuteLocalAudioStream = worker().getRtcEngine().muteLocalAudioStream(z6);
        UserStatusData localUserStatus = getLocalUserStatus();
        if (iMuteLocalAudioStream == 0 && localUserStatus != null) {
            if (z10) {
                localUserStatus.setVoiceMuted(z6);
            }
            RtcEventHandler rtcEventHandler = this.videoEventHandler;
            if (rtcEventHandler != null) {
                rtcEventHandler.onUserMuteAudio(localUserStatus.mUid, z6);
            }
        }
        return iMuteLocalAudioStream;
    }

    public int muteLocalVideo(boolean z6, boolean z10) {
        int iMuteLocalVideoStream = (worker() == null || worker().getRtcEngine() == null) ? -1 : worker().getRtcEngine().muteLocalVideoStream(z6);
        UserStatusData localUserStatus = getLocalUserStatus();
        if (iMuteLocalVideoStream == 0 && localUserStatus != null && z10) {
            CameraRenderer cameraRenderer = this.localUserSurfaceView;
            if (cameraRenderer != null) {
                if (z6) {
                    cameraRenderer.stopPreview();
                } else {
                    cameraRenderer.startPreview();
                }
            }
            localUserStatus.setVideoMuted(z6);
            RtcEventHandler rtcEventHandler = this.videoEventHandler;
            if (rtcEventHandler != null) {
                rtcEventHandler.onUserMuteVideo(localUserStatus.mUid, z6);
            }
        }
        return iMuteLocalVideoStream;
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

    public void removeAgoraRoleChangeListener(AgoraRoleChangeListener agoraRoleChangeListener) {
        this.agoraRoleChangeListenerEventDispatcher.removeListener(agoraRoleChangeListener);
    }

    public void requestToBeBroadcast(boolean z6, boolean z10) {
        SparseArray<UserStatusData> sparseArray;
        if (z6 && (sparseArray = this.userDataList) != null && sparseArray.get(this.localUid) != null) {
            setCustomLocalVideo(this.curNdcId);
        }
        if (worker() != null) {
            worker().doConfig(1, z10);
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

    public void restoreStreamMode() {
        SparseArray<UserStatusData> sparseArray = this.userDataList;
        if (sparseArray == null) {
            return;
        }
        if (sparseArray.size() > 2) {
            enterLowerStreamMode();
            return;
        }
        for (int i10 = 0; i10 < this.userDataList.size(); i10++) {
            if (this.userDataList.keyAt(i10) != this.localUid) {
                setLowerStreamMode(this.userDataList.keyAt(i10), false);
            }
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

    public void setCameraFacing(boolean z6) {
        if (this.localUserSurfaceView == null) {
            return;
        }
        if (z6) {
            if (isFrontCamera()) {
                return;
            }
            flipCamera();
        } else if (isFrontCamera()) {
            flipCamera();
        }
    }

    public void setLocalUid(int i10) {
        this.localUid = i10;
        worker().getEngineConfig().mUid = i10;
    }

    public void setLocalVoiceStatus() {
        if (this.userDataList.get(this.localUid) == null) {
            this.userDataList.put(this.localUid, new UserStatusData(this.localUid, null, 0));
        }
    }

    public void setScreenRoomHostSwap(boolean z6) {
        WorkerThread workerThread = this.workerThread;
        if (workerThread == null) {
            return;
        }
        this.screenRoomWidthHeightSwap = z6;
        workerThread.changeVideoProfile(39, z6);
    }

    public void setupRemoteVideo(VideoCanvas videoCanvas) {
        this.workerThread.getRtcEngine().setupRemoteVideo(videoCanvas);
    }

    public void toggleSpeaker() {
        UserStatusData userStatusData = this.userDataList.get(this.localUid);
        if (userStatusData != null) {
            worker().getRtcEngine().setEnableSpeakerphone(!userStatusData.isSpeakerMode());
        }
    }

    public RtcChatManager(NVContext nVContext) {
        int i10;
        this.nvContext = nVContext;
        Context applicationContext = nVContext.getContext().getApplicationContext();
        this.context = applicationContext;
        if (NVApplication.DEBUG) {
            i10 = R.string.agora_app_id_dev;
        } else {
            i10 = R.string.agora_app_id_pro;
        }
        this.appId = applicationContext.getString(i10);
    }

    public EngineConfig config() {
        return worker().getEngineConfig();
    }

    public void initLocalVideoStatus(int i10) {
        setCustomLocalVideo(i10);
        if (this.userDataList.get(this.localUid) == null) {
            this.userDataList.put(this.localUid, new UserStatusData(this.localUid, this.localUserSurfaceView, 0));
        }
    }

    public void muteAllRemoteStream() {
        worker().getRtcEngine().muteAllRemoteAudioStreams(true);
        worker().getRtcEngine().muteLocalVideoStream(true);
        worker().destroyRtcEngine();
    }

    public int muteRemoteAudio(int i10, boolean z6) {
        if (worker() != null && worker().getRtcEngine() != null) {
            return worker().getRtcEngine().muteRemoteAudioStream(i10, z6);
        }
        return -1;
    }

    public int muteRemoteVideo(int i10, boolean z6) {
        if (worker() != null && worker().getRtcEngine() != null) {
            return worker().getRtcEngine().muteRemoteVideoStream(i10, z6);
        }
        return -1;
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

    public void setLowerStreamMode(int i10, boolean z6) {
        if (worker() != null && worker().getRtcEngine() != null) {
            worker().getRtcEngine().setRemoteVideoStreamType(i10, 0);
        }
    }

    void statUpdate(int i10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        StatisticsService statisticsService = (StatisticsService) this.nvContext.getService("statistics");
        if (this.statSigChannelType != 0) {
            long j6 = this.statSigStartTime;
            if (j6 != 0) {
                long j10 = (jElapsedRealtime - j6) / 1000;
                if (j10 > 1) {
                    statisticsService.event(null).userPropInc(statName(this.statSigChannelType) + "ChatDuration", (int) Math.min(j10, 7200L));
                    if (i10 == 5) {
                        statisticsService.event(null).userPropInc("ABTest ABTest ScreenRoom Duration", (int) Math.min(j10, 7200L));
                    }
                }
            }
        }
        this.statSigChannelType = i10;
        if (i10 == 0) {
            this.statSigStartTime = 0L;
        } else {
            this.statSigStartTime = jElapsedRealtime;
        }
    }

    public void toggleLocalAudio() {
        UserStatusData localUserStatus = getLocalUserStatus();
        if (localUserStatus == null) {
            return;
        }
        muteLocalAudio(!localUserStatus.isVoiceMuted());
    }

    public void toggleLocalVideo() {
        UserStatusData localUserStatus = getLocalUserStatus();
        if (localUserStatus == null) {
            return;
        }
        muteLocalVideo(!localUserStatus.isVideoMuted());
    }
}
