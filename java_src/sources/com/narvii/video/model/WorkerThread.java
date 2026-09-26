package com.narvii.video.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceView;
import com.narvii.video.ui.Utils;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.internal.DeviceUtils;
import io.agora.rtc.video.VideoCanvas;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class WorkerThread extends Thread {
    private static final int ACTION_CHANGE_VIDEO_PROFILE = 8213;
    private static final int ACTION_CONFIG_AUDIO_MANAGER = 8214;
    private static final int ACTION_CONFIG_CHANGE_ROLE = 8215;
    private static final int ACTION_WORKER_CONFIG_AUDIO = 8211;
    private static final int ACTION_WORKER_CONFIG_ENGINE = 8210;
    private static final int ACTION_WORKER_JOIN_CHANNEL = 8208;
    private static final int ACTION_WORKER_LEAVE_CHANNEL = 8209;
    private static final int ACTION_WORKER_PREVIEW = 8212;
    private static final int ACTION_WORKER_THREAD_QUIT = 4112;
    private static final String TAG = "WorkerThread";
    private String appId;
    private int curChannelProfile;
    private boolean isDebug;
    private boolean isScreenRoomHostSetBefore;
    private final Context mContext;
    private EngineConfig mEngineConfig = new EngineConfig();
    private final MyEngineEventHandler mEngineEventHandler;
    private boolean mReady;
    private RtcEngine mRtcEngine;
    private WorkerThreadHandler mWorkerHandler;
    private int oldChannelProfile;
    private boolean swapWidthHeight;

    private static final class WorkerThreadHandler extends Handler {
        private WorkerThread mWorkerThread;

        public void release() {
            this.mWorkerThread = null;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WorkerThread workerThread = this.mWorkerThread;
            if (workerThread == null) {
                Utils.logW(WorkerThread.TAG, "handler is already released! " + message.what);
            }
            int i10 = message.what;
            if (i10 == WorkerThread.ACTION_WORKER_THREAD_QUIT) {
                workerThread.exit();
                return;
            }
            switch (i10) {
                case WorkerThread.ACTION_WORKER_JOIN_CHANNEL /* 8208 */:
                    String[] strArr = (String[]) message.obj;
                    workerThread.joinChannel(strArr[0], strArr[1], message.arg1);
                    break;
                case WorkerThread.ACTION_WORKER_LEAVE_CHANNEL /* 8209 */:
                    Object[] objArr = (Object[]) message.obj;
                    workerThread.leaveChannel((String) objArr[0], (ChannelActionCallback) objArr[1]);
                    break;
                case WorkerThread.ACTION_WORKER_CONFIG_ENGINE /* 8210 */:
                    Object[] objArr2 = (Object[]) message.obj;
                    workerThread.configEngine(((Integer) objArr2[0]).intValue(), ((Integer) objArr2[1]).intValue(), ((Boolean) objArr2[2]).booleanValue(), ((Boolean) objArr2[3]).booleanValue(), ((Boolean) objArr2[4]).booleanValue());
                    break;
                case WorkerThread.ACTION_WORKER_CONFIG_AUDIO /* 8211 */:
                    Object[] objArr3 = (Object[]) message.obj;
                    workerThread.configAudioSource(((Boolean) objArr3[0]).booleanValue(), ((Integer) objArr3[1]).intValue(), ((Integer) objArr3[2]).intValue());
                    break;
                case WorkerThread.ACTION_WORKER_PREVIEW /* 8212 */:
                    Object[] objArr4 = (Object[]) message.obj;
                    workerThread.preview(((Boolean) objArr4[0]).booleanValue(), (SurfaceView) objArr4[1], ((Integer) objArr4[2]).intValue());
                    break;
                case WorkerThread.ACTION_CHANGE_VIDEO_PROFILE /* 8213 */:
                    Object[] objArr5 = (Object[]) message.obj;
                    workerThread.changeVideoProfile(((Integer) objArr5[0]).intValue(), ((Boolean) objArr5[1]).booleanValue());
                    break;
                case WorkerThread.ACTION_CONFIG_AUDIO_MANAGER /* 8214 */:
                    workerThread.configAudioManger(((Boolean) ((Object[]) message.obj)[0]).booleanValue());
                    break;
                case WorkerThread.ACTION_CONFIG_CHANGE_ROLE /* 8215 */:
                    workerThread.changeRole(((Integer) ((Object[]) message.obj)[0]).intValue());
                    break;
            }
        }

        WorkerThreadHandler(WorkerThread workerThread) {
            this.mWorkerThread = workerThread;
        }
    }

    public final void configEngine(int i10, int i11, boolean z6, boolean z10) {
        configEngine(i10, i11, z6, z10, false);
    }

    public final void disablePreProcessor() {
    }

    public final void enablePreProcessor() {
    }

    public MyEngineEventHandler eventHandler() {
        return this.mEngineEventHandler;
    }

    public int getCurChannelprofile() {
        return this.curChannelProfile;
    }

    public final EngineConfig getEngineConfig() {
        return this.mEngineConfig;
    }

    public void setCurChannelProfile(int i10) {
        this.curChannelProfile = i10;
    }

    private void configChannelProfile() {
        this.mRtcEngine.setChannelProfile(this.curChannelProfile);
        int i10 = this.curChannelProfile;
        this.oldChannelProfile = i10;
        if (i10 != 1) {
            if (i10 == 0) {
                this.mRtcEngine.enableAudioVolumeIndication(200, 3, true);
            }
        } else {
            this.mRtcEngine.enableVideo();
            this.mRtcEngine.enableAudioVolumeIndication(200, 3, true);
            this.mRtcEngine.setParameters("{\"che.video.lowBitRateStreamParameter\":{\"width\":180,\"height\":320,\"frameRate\":15,\"bitRate\":140}}");
            this.mRtcEngine.setVideoQualityParameters(true);
        }
    }

    private RtcEngine ensureRtcEngineReadyLock() {
        if (this.mRtcEngine == null) {
            try {
                this.mRtcEngine = RtcEngine.create(this.mContext, this.appId, this.mEngineEventHandler.mRtcEventHandler);
            } catch (Exception e) {
                e.printStackTrace();
            }
            configChannelProfile();
            if (this.isDebug) {
                File file = new File(Utils.getAvailableFileDir(this.mContext), Utils.TAG);
                file.mkdirs();
                this.mRtcEngine.setLogFile(new File(file, "avchat.log").getPath());
            }
        } else if (this.oldChannelProfile != this.curChannelProfile) {
            configChannelProfile();
        }
        return this.mRtcEngine;
    }

    public final void configEngine(int i10, int i11, boolean z6, boolean z10, boolean z11) {
        if (Thread.currentThread() != this) {
            Utils.log("configEngine() - worker thread asynchronously " + i10 + " " + i11);
            Message message = new Message();
            message.what = ACTION_WORKER_CONFIG_ENGINE;
            message.obj = new Object[]{Integer.valueOf(i10), Integer.valueOf(i11), Boolean.valueOf(z6), Boolean.valueOf(z10), Boolean.valueOf(z11)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        this.swapWidthHeight = z10;
        ensureRtcEngineReadyLock();
        EngineConfig engineConfig = this.mEngineConfig;
        engineConfig.mClientRole = i10;
        engineConfig.mVideoProfile = i11;
        this.swapWidthHeight = z10;
        if (z6) {
            if (this.mRtcEngine.isTextureEncodeSupported()) {
                this.mRtcEngine.setExternalVideoSource(true, true, true);
            } else {
                Utils.logE("Can not work on device do not supporting texture");
            }
        }
        this.mRtcEngine.setVideoProfile(this.mEngineConfig.mVideoProfile, z10);
        this.mRtcEngine.setClientRole(i10);
        this.mRtcEngine.muteLocalVideoStream(z11);
        Utils.log("configEngine " + i10 + " " + this.mEngineConfig.mVideoProfile);
    }

    public void destroyRtcEngine() {
        if (this.mRtcEngine != null) {
            RtcEngine.destroy();
            this.mRtcEngine = null;
            this.mReady = false;
        }
    }

    public void doConfig(int i10, boolean z6) {
        configEngine(i10, this.mEngineConfig.mVideoProfile, true, this.swapWidthHeight, z6);
    }

    public RtcEngine getRtcEngine() {
        if (this.mRtcEngine == null) {
            ensureRtcEngineReadyLock();
        }
        return this.mRtcEngine;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Utils.log(TAG, "start to run");
        Looper.prepare();
        this.mWorkerHandler = new WorkerThreadHandler(this);
        ensureRtcEngineReadyLock();
        this.mReady = true;
        Looper.loop();
    }

    public final void waitForReady() {
        while (!this.mReady) {
            try {
                Thread.sleep(20L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            Utils.log(TAG, "wait for " + WorkerThread.class.getSimpleName());
        }
    }

    public WorkerThread(Context context, int i10, String str, boolean z6) {
        this.mContext = context;
        this.curChannelProfile = i10;
        this.appId = str;
        this.isDebug = z6;
        SharedPreferences sharedPreferences = context.getSharedPreferences("agora_prefs", 0);
        this.mEngineConfig.mUid = sharedPreferences.getInt(ConstantApp.PrefManager.PREF_PROPERTY_UID, 0);
        this.mEngineEventHandler = new MyEngineEventHandler(context, this.mEngineConfig);
    }

    public void changeRole(int i10) {
        configEngineRole(i10);
    }

    public final void changeVideoProfile(int i10, boolean z6) {
        if (Thread.currentThread() != this) {
            Message message = new Message();
            message.what = ACTION_CHANGE_VIDEO_PROFILE;
            message.obj = new Object[]{Integer.valueOf(i10), Boolean.valueOf(z6)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        this.swapWidthHeight = z6;
        ensureRtcEngineReadyLock();
        this.mEngineConfig.mVideoProfile = i10;
        this.mRtcEngine.setVideoProfile(i10, this.swapWidthHeight);
        if (z6) {
            this.mRtcEngine.setParameters("{\"che.video.lowBitRateStreamParameter\":{\"width\":180,\"height\":320,\"frameRate\":15,\"bitRate\":140}}");
        } else {
            this.mRtcEngine.setParameters("{\"che.video.lowBitRateStreamParameter\":{\"width\":320,\"height\":180,\"frameRate\":15,\"bitRate\":140}}");
        }
    }

    public final void configAudioManger(boolean z6) {
        if (Thread.currentThread() != this) {
            Message message = new Message();
            message.what = ACTION_CONFIG_AUDIO_MANAGER;
            message.obj = new Object[]{Boolean.valueOf(z6)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        ensureRtcEngineReadyLock();
        if (z6) {
            this.mRtcEngine.setParameters("{\"che.audio.stream_type\":3}");
            this.mRtcEngine.setParameters("{\"che.audio.audioMode\":0}");
            this.isScreenRoomHostSetBefore = true;
        } else if (this.isScreenRoomHostSetBefore) {
            this.mRtcEngine.setParameters("{\"che.audio.stream_type\":-1}");
            this.mRtcEngine.setParameters("{\"che.audio.audioMode\":3}");
        }
    }

    public final void configAudioSource(boolean z6, int i10, int i11) {
        if (Thread.currentThread() != this) {
            Message message = new Message();
            message.what = ACTION_WORKER_CONFIG_AUDIO;
            message.obj = new Object[]{Boolean.valueOf(z6), Integer.valueOf(i10), Integer.valueOf(i11)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        ensureRtcEngineReadyLock();
        this.mRtcEngine.setExternalAudioSource(z6, i10, i11);
    }

    public final void configEngineRole(int i10) {
        if (Thread.currentThread() != this) {
            Message message = new Message();
            message.what = ACTION_CONFIG_CHANGE_ROLE;
            message.obj = new Object[]{Integer.valueOf(i10)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        ensureRtcEngineReadyLock();
        this.mRtcEngine.setClientRole(i10);
    }

    public final void exit() {
        if (Thread.currentThread() != this) {
            Utils.logW(TAG, "exit() - exit app thread asynchronously");
            this.mWorkerHandler.sendEmptyMessage(ACTION_WORKER_THREAD_QUIT);
            return;
        }
        this.mReady = false;
        this.mWorkerHandler.removeMessages(ACTION_WORKER_JOIN_CHANNEL);
        this.mWorkerHandler.removeMessages(ACTION_WORKER_LEAVE_CHANNEL);
        this.mWorkerHandler.removeMessages(ACTION_WORKER_CONFIG_ENGINE);
        this.mWorkerHandler.removeMessages(ACTION_WORKER_PREVIEW);
        String str = TAG;
        Utils.log(str, "exit() > start");
        Looper.myLooper().quit();
        this.mWorkerHandler.release();
        Utils.log(str, "exit() > end");
    }

    public boolean isTextureEncodeSupported() {
        if (DeviceUtils.getRecommendedEncoderType() == 0) {
            return true;
        }
        return false;
    }

    public final void joinChannel(String str, String str2, int i10) {
        if (Thread.currentThread() != this) {
            Utils.logW(TAG, "joinChannel() - worker thread asynchronously " + str2 + " " + i10);
            Message message = new Message();
            message.what = ACTION_WORKER_JOIN_CHANNEL;
            message.obj = new String[]{str, str2};
            message.arg1 = i10;
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        ensureRtcEngineReadyLock();
        this.mEngineConfig.mUid = i10;
        this.mRtcEngine.joinChannel(str, str2, null, i10);
        this.mEngineConfig.mChannel = str2;
        enablePreProcessor();
        Utils.log(TAG, "joinChannel " + str + str2 + " " + i10);
    }

    public final void leaveChannel(String str, ChannelActionCallback<ChannelActionResult> channelActionCallback) {
        ChannelActionResult channelActionResult;
        if (Thread.currentThread() != this) {
            Utils.logW(TAG, "leaveChannel() - worker thread asynchronously " + str);
            Message message = new Message();
            message.what = ACTION_WORKER_LEAVE_CHANNEL;
            message.obj = new Object[]{str, channelActionCallback};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        RtcEngine rtcEngine = this.mRtcEngine;
        if (rtcEngine != null) {
            int iLeaveChannel = rtcEngine.leaveChannel();
            if (channelActionCallback != null) {
                if (iLeaveChannel == 0) {
                    channelActionResult = new ChannelActionResult(true, null);
                } else {
                    channelActionResult = new ChannelActionResult(false, ChannelActionError.LEAVE_CHANNEL_ERROR);
                }
                channelActionCallback.call(channelActionResult);
            }
        }
        disablePreProcessor();
        this.mEngineConfig.reset();
        Utils.log(TAG, "leaveChannel " + str);
    }

    public final void preview(boolean z6, SurfaceView surfaceView, int i10) {
        if (Thread.currentThread() != this) {
            Utils.logW(TAG, "preview() - worker thread asynchronously " + z6 + " " + surfaceView + " " + (((long) i10) & 4294967295L));
            Message message = new Message();
            message.what = ACTION_WORKER_PREVIEW;
            message.obj = new Object[]{Boolean.valueOf(z6), surfaceView, Integer.valueOf(i10)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        ensureRtcEngineReadyLock();
        if (z6) {
            this.mRtcEngine.setupLocalVideo(new VideoCanvas(surfaceView, 1, i10));
            this.mRtcEngine.startPreview();
        } else {
            this.mRtcEngine.stopPreview();
        }
    }
}
