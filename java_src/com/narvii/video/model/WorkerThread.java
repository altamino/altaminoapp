package com.narvii.video.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceView;
import com.narvii.video.model.ConstantApp;
import com.narvii.video.ui.Utils;
import io.agora.rtc.RtcEngine;
import io.agora.rtc.internal.DeviceUtils;
import io.agora.rtc.video.VideoCanvas;
import java.io.File;

/* loaded from: classes3.dex */
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
    private static final String TAG = WorkerThread.class.getSimpleName();
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

    public final void disablePreProcessor() {
    }

    public final void enablePreProcessor() {
    }

    public final void waitForReady() throws InterruptedException {
        while (!this.mReady) {
            try {
                Thread.sleep(20L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            Utils.log(TAG, "wait for " + WorkerThread.class.getSimpleName());
        }
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

    public final EngineConfig getEngineConfig() {
        return this.mEngineConfig;
    }

    public final void joinChannel(String str, String str2, int i) {
        if (Thread.currentThread() != this) {
            Utils.logW(TAG, "joinChannel() - worker thread asynchronously " + str2 + " " + i);
            Message message = new Message();
            message.what = ACTION_WORKER_JOIN_CHANNEL;
            message.obj = new String[]{str, str2};
            message.arg1 = i;
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        ensureRtcEngineReadyLock();
        this.mEngineConfig.mUid = i;
        this.mRtcEngine.joinChannel(str, str2, null, i);
        this.mEngineConfig.mChannel = str2;
        enablePreProcessor();
        Utils.log(TAG, "joinChannel " + str + str2 + " " + i);
    }

    public final void leaveChannel(String str, ChannelActionCallback channelActionCallback) {
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

    public void doConfig(int i, boolean z) {
        configEngine(i, this.mEngineConfig.mVideoProfile, true, this.swapWidthHeight, z);
    }

    public void changeRole(int i) {
        configEngineRole(i);
    }

    public final void configEngineRole(int i) {
        if (Thread.currentThread() != this) {
            Message message = new Message();
            message.what = ACTION_CONFIG_CHANGE_ROLE;
            message.obj = new Object[]{Integer.valueOf(i)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        ensureRtcEngineReadyLock();
        this.mRtcEngine.setClientRole(i);
    }

    public final void configAudioSource(boolean z, int i, int i2) {
        if (Thread.currentThread() != this) {
            Message message = new Message();
            message.what = ACTION_WORKER_CONFIG_AUDIO;
            message.obj = new Object[]{Boolean.valueOf(z), Integer.valueOf(i), Integer.valueOf(i2)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        ensureRtcEngineReadyLock();
        this.mRtcEngine.setExternalAudioSource(z, i, i2);
    }

    public final void configEngine(int i, int i2, boolean z, boolean z2) {
        configEngine(i, i2, z, z2, false);
    }

    public final void configEngine(int i, int i2, boolean z, boolean z2, boolean z3) {
        if (Thread.currentThread() != this) {
            Utils.log("configEngine() - worker thread asynchronously " + i + " " + i2);
            Message message = new Message();
            message.what = ACTION_WORKER_CONFIG_ENGINE;
            message.obj = new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(z3)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        this.swapWidthHeight = z2;
        ensureRtcEngineReadyLock();
        EngineConfig engineConfig = this.mEngineConfig;
        engineConfig.mClientRole = i;
        engineConfig.mVideoProfile = i2;
        this.swapWidthHeight = z2;
        if (z) {
            if (this.mRtcEngine.isTextureEncodeSupported()) {
                this.mRtcEngine.setExternalVideoSource(true, true, true);
            } else {
                Utils.logE("Can not work on device do not supporting texture");
            }
        }
        this.mRtcEngine.setVideoProfile(this.mEngineConfig.mVideoProfile, z2);
        this.mRtcEngine.setClientRole(i);
        this.mRtcEngine.muteLocalVideoStream(z3);
        Utils.log("configEngine " + i + " " + this.mEngineConfig.mVideoProfile);
    }

    public final void configAudioManger(boolean z) {
        if (Thread.currentThread() != this) {
            Message message = new Message();
            message.what = ACTION_CONFIG_AUDIO_MANAGER;
            message.obj = new Object[]{Boolean.valueOf(z)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        if (z) {
            this.mRtcEngine.setParameters("{\"che.audio.stream_type\":3}");
            this.mRtcEngine.setParameters("{\"che.audio.audioMode\":0}");
            this.isScreenRoomHostSetBefore = true;
        } else if (this.isScreenRoomHostSetBefore) {
            this.mRtcEngine.setParameters("{\"che.audio.stream_type\":-1}");
            this.mRtcEngine.setParameters("{\"che.audio.audioMode\":3}");
        }
    }

    public final void changeVideoProfile(int i, boolean z) {
        if (Thread.currentThread() != this) {
            Message message = new Message();
            message.what = ACTION_CHANGE_VIDEO_PROFILE;
            message.obj = new Object[]{Integer.valueOf(i), Boolean.valueOf(z)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        this.swapWidthHeight = z;
        ensureRtcEngineReadyLock();
        EngineConfig engineConfig = this.mEngineConfig;
        engineConfig.mVideoProfile = i;
        this.mRtcEngine.setVideoProfile(engineConfig.mVideoProfile, this.swapWidthHeight);
        if (z) {
            this.mRtcEngine.setParameters("{\"che.video.lowBitRateStreamParameter\":{\"width\":180,\"height\":320,\"frameRate\":15,\"bitRate\":140}}");
        } else {
            this.mRtcEngine.setParameters("{\"che.video.lowBitRateStreamParameter\":{\"width\":320,\"height\":180,\"frameRate\":15,\"bitRate\":140}}");
        }
    }

    public final void preview(boolean z, SurfaceView surfaceView, int i) {
        if (Thread.currentThread() != this) {
            Utils.logW(TAG, "preview() - worker thread asynchronously " + z + " " + surfaceView + " " + (i & 4294967295L));
            Message message = new Message();
            message.what = ACTION_WORKER_PREVIEW;
            message.obj = new Object[]{Boolean.valueOf(z), surfaceView, Integer.valueOf(i)};
            this.mWorkerHandler.sendMessage(message);
            return;
        }
        ensureRtcEngineReadyLock();
        if (z) {
            this.mRtcEngine.setupLocalVideo(new VideoCanvas(surfaceView, 1, i));
            this.mRtcEngine.startPreview();
        } else {
            this.mRtcEngine.stopPreview();
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

    private void configChannelProfile() {
        this.mRtcEngine.setChannelProfile(this.curChannelProfile);
        int i = this.curChannelProfile;
        this.oldChannelProfile = i;
        if (i != 1) {
            if (i == 0) {
                this.mRtcEngine.enableAudioVolumeIndication(200, 3, true);
            }
        } else {
            this.mRtcEngine.enableVideo();
            this.mRtcEngine.enableAudioVolumeIndication(200, 3, true);
            this.mRtcEngine.setParameters("{\"che.video.lowBitRateStreamParameter\":{\"width\":180,\"height\":320,\"frameRate\":15,\"bitRate\":140}}");
            this.mRtcEngine.setVideoQualityParameters(true);
        }
    }

    public MyEngineEventHandler eventHandler() {
        return this.mEngineEventHandler;
    }

    public RtcEngine getRtcEngine() {
        return this.mRtcEngine;
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
        Utils.log(TAG, "exit() > start");
        Looper.myLooper().quit();
        this.mWorkerHandler.release();
        Utils.log(TAG, "exit() > end");
    }

    public WorkerThread(Context context, int i, String str, boolean z) {
        this.mContext = context;
        this.curChannelProfile = i;
        this.appId = str;
        this.isDebug = z;
        SharedPreferences sharedPreferences = context.getSharedPreferences("agora_prefs", 0);
        this.mEngineConfig.mUid = sharedPreferences.getInt(ConstantApp.PrefManager.PREF_PROPERTY_UID, 0);
        this.mEngineEventHandler = new MyEngineEventHandler(this.mContext, this.mEngineConfig);
    }

    public int getCurChannelprofile() {
        return this.curChannelProfile;
    }

    public void setCurChannelProfile(int i) {
        this.curChannelProfile = i;
    }

    public boolean isTextureEncodeSupported() {
        return DeviceUtils.getRecommendedEncoderType() == 0;
    }

    private static final class WorkerThreadHandler extends Handler {
        private WorkerThread mWorkerThread;

        WorkerThreadHandler(WorkerThread workerThread) {
            this.mWorkerThread = workerThread;
        }

        public void release() {
            this.mWorkerThread = null;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WorkerThread workerThread = this.mWorkerThread;
            if (workerThread == null) {
                Utils.logW(WorkerThread.TAG, "handler is already released! " + message.what);
            }
            int i = message.what;
            if (i == WorkerThread.ACTION_WORKER_THREAD_QUIT) {
                workerThread.exit();
                return;
            }
            switch (i) {
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
    }
}
