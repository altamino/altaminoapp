package com.narvii.chat.video;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Build;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.WindowManager;
import com.narvii.amino.mastes.R;
import com.narvii.chat.p2a.encoder.TextureMovieEncoder;
import com.narvii.chat.p2a.encoder.Watermark;
import com.narvii.chat.p2a.render.LandmarksPoints;
import com.narvii.util.Callback;
import com.narvii.util.image.BitmapUtils;
import com.narvii.video.RendererCommon;
import com.narvii.video.framepusher.MediaFramePusher;
import com.narvii.video.gles.FullFrameRect;
import com.narvii.video.gles.GlUtil;
import com.narvii.video.gles.Texture2dProgram;
import com.narvii.video.ui.Utils;
import com.narvii.video.ui.camera.CameraUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes2.dex */
public class CameraRenderer extends GLSurfaceView implements GLSurfaceView.Renderer, SurfaceTexture.OnFrameAvailableListener, Camera.PreviewCallback, TextureMovieEncoder.OnEncoderStatusUpdateListener {
    private static final int FRAME_NEED_TO_SKIP = 3;
    public static final int RECORD_STATUS_NONE = 0;
    public static final int RECORD_STATUS_RECORDING = 3;
    public static final int RECORD_STATUS_STARTING = 2;
    public static final int RECORD_STATUS_STOPING = 1;
    int actualPreviewHeight;
    int actualPreviewWidth;
    volatile boolean blockingRender;
    CameraHandlerThread cameraHandlerThread;
    private int cameraId;
    private int cameraOrientation;
    int faceTrackingStatus;
    FaceTrackingStatusChanged faceTrackingStatusChanged;
    private boolean forceAvatar;
    private MediaFramePusher framePusher;
    private int frameSkiped;
    private boolean isAvatarReady;
    private boolean isLandscape;
    private AtomicBoolean isParamSet;
    private int lastDisplayRotation;
    private String lastScreenSotProId;
    private byte[] mBuffer;
    private Camera mCamera;
    byte[] mCameraNV21Byte;
    private boolean mCameraNotAvailable;
    private int mCameraPreviewHeight;
    private int mCameraPreviewWidth;
    private int mCameraRotation;
    protected SurfaceTexture mCameraSurfaceTexture;
    protected int mCameraTextureId;
    private Context mContext;
    public EGLContext mEGLCurrentContext;
    private int mFramebuffer;
    protected FullFrameRect mFullScreenCamera;
    protected FullFrameRect mFullScreenFUDisplay;
    protected FullFrameRect mFullScreenFiltered;
    volatile boolean mIsNeedCaptureShot;
    private int mOffscreenTexture;
    private int mPushFrameTexture;
    private int mPushFramebuffer;
    private float mRequestedFps;
    private volatile boolean mUpdateTexture;
    private int mViewHeight;
    private int mViewWidth;
    float[] mtx;
    private int oldPreViewHeight;
    private int oldPreViewWidth;
    private volatile boolean openCameraRequestSent;
    private LandmarksPoints points;
    private int realFaceHeight;
    private int realFaceMarginLeft;
    private int realFaceMarginTop;
    private int realFaceWidth;
    private FullFrameRect recordDisplay;
    private long recordDuration;
    private final Runnable recordDurationStop;
    private TextureMovieEncoder recordEncoder;
    private File recordFile;
    private Callback<Integer> recordListener;
    private final Object recordLock;
    private long recordStartTime;
    private int recordStatus;
    private long recordStopTime;
    private Watermark recordWatermark;
    int renderHeight;
    float renderScaleFactor;
    int renderWidth;
    volatile boolean showBlockRender;
    private boolean showRealFace;
    ICustomCameraPreviewStatusListener statusListener;
    TakeShotCaptureListener takeShotCaptureListener;
    private int targetHeight;
    private int targetWidth;
    private int viewHeight;
    private volatile boolean viewPortSeted;
    private int viewWidth;

    public interface FaceTrackingStatusChanged {
        void onFaceStatusChanged(int i);
    }

    public interface ICustomCameraPreviewStatusListener {
        void onEglContextReady(EGLContext eGLContext);

        void onFrameAvailable(int i, EGLContext eGLContext, int i2, int i3, int i4);

        void onInitResourceFail();

        void onPreDraw();

        void onTrackStatusChange(int i);
    }

    protected float getRotDelta() {
        return 0.0f;
    }

    protected float getScaleDelta() {
        return 0.0f;
    }

    protected void notifyCameraChange() {
    }

    public void setBeautyEnlargeValue(float f) {
    }

    public void setBeautySmoothValue(float f) {
    }

    public void setBeautyThinValue(float f) {
    }

    public void setFilterItem(String str) {
    }

    public void setFaceTrackingStatusChanged(FaceTrackingStatusChanged faceTrackingStatusChanged) {
        this.faceTrackingStatusChanged = faceTrackingStatusChanged;
    }

    public void setCameraFramePusher(MediaFramePusher mediaFramePusher) {
        this.framePusher = mediaFramePusher;
    }

    public void setCameraRendererStatusListener(ICustomCameraPreviewStatusListener iCustomCameraPreviewStatusListener) {
        this.statusListener = iCustomCameraPreviewStatusListener;
    }

    public CameraRenderer(Context context, int i, int i2) {
        this(context, false);
        this.mCameraPreviewWidth = i;
        this.mCameraPreviewHeight = i2;
    }

    public CameraRenderer(Context context, boolean z) {
        this(context, (AttributeSet) null, z);
    }

    public CameraRenderer(Context context, AttributeSet attributeSet, boolean z) {
        super(context, attributeSet);
        this.mCameraPreviewWidth = 1280;
        this.mCameraPreviewHeight = 720;
        this.mRequestedFps = 24.0f;
        this.isParamSet = new AtomicBoolean(false);
        this.cameraId = 1;
        this.mCameraRotation = 0;
        this.mtx = new float[16];
        this.faceTrackingStatus = -1;
        this.renderScaleFactor = 0.7f;
        this.recordLock = new Object();
        this.recordDurationStop = new Runnable() { // from class: com.narvii.chat.video.CameraRenderer.3
            @Override // java.lang.Runnable
            public void run() {
                CameraRenderer.this.stopRecord();
            }
        };
        this.mFramebuffer = 0;
        this.mOffscreenTexture = 0;
        this.mPushFramebuffer = 0;
        this.mPushFrameTexture = 0;
        this.mContext = context;
        this.forceAvatar = z;
        initSurfaceView();
        Utils.log("CameraRenderer --> new  Thread -- >" + Thread.currentThread());
        this.cameraHandlerThread = new CameraHandlerThread(this);
    }

    private void initSurfaceView() {
        setEGLContextFactory(new MyContextFactory(this));
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(this);
        setRenderMode(0);
    }

    public void setShowRealFace(boolean z) {
        this.showRealFace = z;
    }

    public void setLandscape(boolean z) {
        this.isLandscape = z;
    }

    public int getRecordStatus() {
        return this.recordStatus;
    }

    public long getRecordTime() {
        if (this.recordStatus == 3 && this.recordStartTime > 0) {
            return SystemClock.elapsedRealtime() - this.recordStartTime;
        }
        long j = this.recordStopTime;
        if (j > 0) {
            return j - this.recordStartTime;
        }
        return 0L;
    }

    public long getRecordDuration() {
        return this.recordDuration;
    }

    public void setRecordStatusChangeListener(Callback<Integer> callback) {
        this.recordListener = callback;
    }

    public void startRecord(File file, Bitmap bitmap, int i) throws IOException {
        if (Build.VERSION.SDK_INT < 18) {
            throw new UnsupportedEncodingException();
        }
        synchronized (this.recordLock) {
            if (this.recordStatus > 0) {
                throw new IllegalStateException();
            }
            try {
                this.recordStatus = 0;
                new FileOutputStream(file).close();
                this.recordEncoder = new TextureMovieEncoder();
                this.recordEncoder.setOnEncoderStatusUpdateListener(this);
                this.recordFile = file;
                this.recordWatermark = bitmap == null ? null : new Watermark(bitmap);
                this.recordEncoder.setWatermark(this.recordWatermark);
                this.recordStartTime = 0L;
                this.recordStopTime = 0L;
                this.recordDuration = i;
                this.recordStatus = 2;
            } finally {
                if (this.recordListener != null) {
                    this.recordListener.call(Integer.valueOf(this.recordStatus));
                }
            }
        }
    }

    public void stopRecord() {
        synchronized (this.recordLock) {
            if (this.recordStatus >= 2) {
                if (!this.recordEncoder.checkRecordingStatus(2)) {
                    this.recordEncoder.stopRecording();
                    this.recordStatus = 1;
                } else {
                    this.recordStatus = 0;
                }
                if (this.recordListener != null) {
                    this.recordListener.call(Integer.valueOf(this.recordStatus));
                }
            }
        }
        Utils.handler.removeCallbacks(this.recordDurationStop);
    }

    @Override // com.narvii.chat.p2a.encoder.TextureMovieEncoder.OnEncoderStatusUpdateListener
    public void onStartSuccess() {
        Utils.post(new Runnable() { // from class: com.narvii.chat.video.CameraRenderer.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (CameraRenderer.this.recordLock) {
                    if (CameraRenderer.this.recordStatus == 2) {
                        CameraRenderer.this.recordStartTime = SystemClock.elapsedRealtime();
                        if (CameraRenderer.this.recordDuration > 0) {
                            Utils.postDelayed(CameraRenderer.this.recordDurationStop, CameraRenderer.this.recordDuration);
                        }
                        CameraRenderer.this.recordStatus = 3;
                        if (CameraRenderer.this.recordListener != null) {
                            CameraRenderer.this.recordListener.call(3);
                        }
                    }
                }
            }
        });
    }

    @Override // com.narvii.chat.p2a.encoder.TextureMovieEncoder.OnEncoderStatusUpdateListener
    public void onStopSuccess() {
        Utils.post(new Runnable() { // from class: com.narvii.chat.video.CameraRenderer.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (CameraRenderer.this.recordLock) {
                    if (CameraRenderer.this.recordStatus == 1) {
                        CameraRenderer.this.recordStatus = 0;
                        CameraRenderer.this.recordStopTime = SystemClock.elapsedRealtime();
                        if (CameraRenderer.this.recordListener != null) {
                            CameraRenderer.this.recordListener.call(0);
                        }
                    }
                    if (CameraRenderer.this.recordDisplay != null) {
                        CameraRenderer.this.recordDisplay.release(true);
                        CameraRenderer.this.recordDisplay = null;
                    }
                    if (CameraRenderer.this.recordWatermark != null) {
                        CameraRenderer.this.recordWatermark.destory();
                        CameraRenderer.this.recordWatermark = null;
                    }
                }
            }
        });
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.viewWidth = i;
        this.viewHeight = i2;
        configRealFacePosition();
    }

    private void configRealFacePosition() {
        if (this.viewWidth == 0) {
            this.viewWidth = com.narvii.util.Utils.getScreenWidth(getContext());
        }
        if (this.viewHeight == 0) {
            this.viewHeight = com.narvii.util.Utils.getScreenHeight(getContext());
        }
        this.realFaceWidth = getContext().getResources().getDimensionPixelSize(R.dimen.real_face_width);
        this.realFaceHeight = getContext().getResources().getDimensionPixelSize(R.dimen.real_face_height);
        this.realFaceMarginTop = (this.viewHeight - this.realFaceHeight) - ((com.narvii.util.Utils.getActionBarHeight(getContext()) + com.narvii.util.Utils.getStatusBarHeight(getContext())) + getContext().getResources().getDimensionPixelSize(R.dimen.real_face_margin_top));
        this.realFaceMarginLeft = getContext().getResources().getDimensionPixelSize(R.dimen.real_face_margin_left);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        if (this.blockingRender) {
            return;
        }
        this.mUpdateTexture = true;
        requestRender();
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        this.mCameraNV21Byte = bArr;
        camera.addCallbackBuffer(this.mBuffer);
    }

    public void onInitFuSourceResult(boolean z) {
        this.isAvatarReady = z;
        if (!this.forceAvatar || z || this.statusListener == null) {
            return;
        }
        com.narvii.util.Utils.post(new Runnable() { // from class: com.narvii.chat.video.CameraRenderer.4
            @Override // java.lang.Runnable
            public void run() {
                CameraRenderer.this.statusListener.onInitResourceFail();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) throws IOException {
        if (this.isParamSet.get()) {
            return;
        }
        this.isParamSet.set(true);
        Utils.log("CameraRenderer --> onSurfaceCreated " + gl10 + " Thread -- >" + Thread.currentThread());
        this.mFullScreenFUDisplay = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_2D));
        this.mFullScreenFiltered = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_2D));
        this.mFullScreenCamera = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_EXT));
        this.points = new LandmarksPoints();
        this.points.setPointSize(5.0f);
        this.mCameraTextureId = this.mFullScreenCamera.createTextureObject();
        if (this.mCameraSurfaceTexture != null) {
            notifyCameraChange();
            this.mCameraSurfaceTexture.release();
        }
        this.mCameraSurfaceTexture = new SurfaceTexture(this.mCameraTextureId);
        this.mCameraSurfaceTexture.setOnFrameAvailableListener(this);
        openCamera(this.cameraId);
        ICustomCameraPreviewStatusListener iCustomCameraPreviewStatusListener = this.statusListener;
        if (iCustomCameraPreviewStatusListener != null) {
            iCustomCameraPreviewStatusListener.onEglContextReady(this.mEGLCurrentContext);
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        if (this.mViewWidth == i && this.mViewHeight == i2) {
            return;
        }
        float f = this.renderScaleFactor;
        this.renderWidth = (int) (i * f);
        this.renderHeight = (int) (i2 * f);
        Utils.log("CameraRenderer --> onSurfaceChanged " + gl10 + " " + i + " " + i2 + " Thread -- >" + Thread.currentThread());
        this.mViewWidth = i;
        this.mViewHeight = i2;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        try {
            Camera.getCameraInfo(this.cameraId, cameraInfo);
        } catch (Exception unused) {
        }
        if (cameraInfo.facing == 1) {
            this.mCameraRotation = (360 - cameraInfo.orientation) % 360;
        } else {
            this.mCameraRotation = cameraInfo.orientation;
        }
        this.cameraOrientation = cameraInfo.orientation;
        this.viewPortSeted = false;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        if (this.mUpdateTexture && this.isParamSet.get() && !this.blockingRender) {
            try {
                this.mCameraSurfaceTexture.updateTexImage();
                this.mCameraSurfaceTexture.getTransformMatrix(this.mtx);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!this.viewPortSeted) {
                configViewPort();
                if (this.actualPreviewWidth != this.oldPreViewWidth || this.actualPreviewHeight != this.oldPreViewHeight) {
                    prepareFramebuffer(this.actualPreviewWidth, this.actualPreviewHeight);
                    preparePushFrameBuffer(this.actualPreviewWidth, this.actualPreviewHeight);
                }
                this.oldPreViewWidth = this.actualPreviewWidth;
                this.oldPreViewHeight = this.actualPreviewHeight;
                this.viewPortSeted = true;
            }
            if (!this.forceAvatar || this.isAvatarReady) {
                customDrawFrame(this.mCameraTextureId, this.mtx);
            }
        }
    }

    private void takeShotCapture() {
        Bitmap bitmapCreateBitmapFromGLSurface = BitmapUtils.createBitmapFromGLSurface(0, 0, this.mViewWidth, this.mViewHeight);
        TakeShotCaptureListener takeShotCaptureListener = this.takeShotCaptureListener;
        if (takeShotCaptureListener != null) {
            takeShotCaptureListener.onShotCaptureReady(bitmapCreateBitmapFromGLSurface);
        }
    }

    public void notifyShotCapture(TakeShotCaptureListener takeShotCaptureListener) {
        notifyShotCapture(false, takeShotCaptureListener);
    }

    public void notifyShotCapture(boolean z, TakeShotCaptureListener takeShotCaptureListener) {
        this.takeShotCaptureListener = takeShotCaptureListener;
        this.mIsNeedCaptureShot = true;
        this.showBlockRender = z;
    }

    public void notifyShotCaptureFinish() {
        this.blockingRender = false;
    }

    private void configViewPort() {
        float f;
        int i;
        this.actualPreviewWidth = this.mCameraRotation % 180 == 0 ? this.mCameraPreviewWidth : this.mCameraPreviewHeight;
        this.actualPreviewHeight = this.mCameraRotation % 180 == 0 ? this.mCameraPreviewHeight : this.mCameraPreviewWidth;
        if (this.isLandscape) {
            f = this.actualPreviewWidth;
            i = this.actualPreviewHeight;
        } else {
            f = this.actualPreviewHeight;
            i = this.actualPreviewWidth;
        }
        float f2 = f / (i * 1.0f);
        int i2 = this.mViewHeight;
        int i3 = this.mViewWidth;
        if (f2 >= i2 / (i3 * 1.0f)) {
            this.targetWidth = i3;
            this.targetHeight = (int) (i3 * f2);
        } else {
            this.targetHeight = i2;
            this.targetWidth = (int) (i2 / f2);
        }
    }

    @SuppressLint({"NewApi"})
    protected void customDrawFrame(int i, float[] fArr) {
        CamcorderProfile camcorderProfile;
        ICustomCameraPreviewStatusListener iCustomCameraPreviewStatusListener = this.statusListener;
        if (iCustomCameraPreviewStatusListener != null) {
            iCustomCameraPreviewStatusListener.onPreDraw();
        }
        GLES20.glFinish();
        GLES20.glViewport(0, 0, this.actualPreviewWidth, this.actualPreviewHeight);
        float[] fArrRotateTextureMatrix = RendererCommon.rotateTextureMatrix(fArr, ((this.cameraId == 1) && this.isLandscape) ? (this.lastDisplayRotation + 270) % 360 : 0);
        GLES20.glBindFramebuffer(36160, this.mPushFramebuffer);
        this.mFullScreenCamera.drawFrame(i, getFlipMatrix(fArrRotateTextureMatrix));
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glBindFramebuffer(36160, this.mFramebuffer);
        this.mFullScreenCamera.drawFrame(i, fArrRotateTextureMatrix);
        GLES20.glBindFramebuffer(36160, 0);
        int i2 = this.mViewWidth;
        int i3 = this.targetWidth;
        int i4 = this.mViewHeight;
        int i5 = this.targetHeight;
        GLES20.glViewport((i2 - i3) / 2, (i4 - i5) / 2, i3, i5);
        this.mFullScreenFUDisplay.drawFrame(this.mOffscreenTexture, GlUtil.IDENTITY_MATRIX);
        tryTakeShotCapture();
        if (this.faceTrackingStatus != -1) {
            this.faceTrackingStatus = -1;
            ICustomCameraPreviewStatusListener iCustomCameraPreviewStatusListener2 = this.statusListener;
            if (iCustomCameraPreviewStatusListener2 != null) {
                iCustomCameraPreviewStatusListener2.onTrackStatusChange(this.faceTrackingStatus);
            }
        }
        ICustomCameraPreviewStatusListener iCustomCameraPreviewStatusListener3 = this.statusListener;
        if (iCustomCameraPreviewStatusListener3 != null) {
            iCustomCameraPreviewStatusListener3.onFrameAvailable(this.mOffscreenTexture, this.mEGLCurrentContext, this.mCameraPreviewWidth, this.mCameraPreviewHeight, this.mCameraRotation);
        }
        MediaFramePusher mediaFramePusher = this.framePusher;
        if (mediaFramePusher != null) {
            mediaFramePusher.pushVideoFrame(this.mEGLCurrentContext, this.mPushFrameTexture, 0, this.targetWidth, this.targetHeight, GlUtil.IDENTITY_MATRIX);
        }
        synchronized (this.recordLock) {
            if (this.mOffscreenTexture >= 0 && this.recordEncoder != null) {
                if (this.recordStatus == 2 && this.recordEncoder.checkRecordingStatus(2)) {
                    if (CamcorderProfile.hasProfile(5)) {
                        camcorderProfile = CamcorderProfile.get(5);
                    } else {
                        camcorderProfile = CamcorderProfile.get(4);
                    }
                    this.recordEncoder.startRecording(new TextureMovieEncoder.EncoderConfig(this.recordFile, camcorderProfile.videoFrameHeight, camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameRate, camcorderProfile.videoBitRate, EGL14.eglGetCurrentContext(), System.nanoTime()));
                    this.recordDisplay = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_2D));
                }
                if (this.recordEncoder.checkRecordingStatus(1)) {
                    this.recordEncoder.setTextureId(this.recordDisplay, this.mOffscreenTexture, GlUtil.IDENTITY_MATRIX);
                    this.recordEncoder.frameAvailable(null, GlUtil.IDENTITY_MATRIX);
                }
            }
        }
    }

    public static float[] getFlipMatrix(float[] fArr) {
        float[] fArr2 = new float[16];
        Matrix.setIdentityM(fArr2, 0);
        Matrix.scaleM(fArr2, 0, -1.0f, 1.0f, 1.0f);
        adjustOrigin(fArr2);
        return multiplyMatrices(fArr, fArr2);
    }

    public static float[] multiplyMatrices(float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[16];
        Matrix.multiplyMM(fArr3, 0, fArr, 0, fArr2, 0);
        return fArr3;
    }

    private static void adjustOrigin(float[] fArr) {
        fArr[12] = fArr[12] - ((fArr[0] + fArr[4]) * 0.5f);
        fArr[13] = fArr[13] - ((fArr[1] + fArr[5]) * 0.5f);
        fArr[12] = fArr[12] + 0.5f;
        fArr[13] = fArr[13] + 0.5f;
    }

    private void tryTakeShotCapture() {
        if (this.mIsNeedCaptureShot) {
            this.mIsNeedCaptureShot = false;
            if (this.showBlockRender) {
                this.blockingRender = true;
            }
            GLES20.glFinish();
            takeShotCapture();
        }
    }

    boolean isLandmarksZero(float[] fArr) {
        double d = 0.0d;
        for (int i = 0; i < 150; i++) {
            double d2 = fArr[i];
            Double.isNaN(d2);
            d += d2;
        }
        return d == 0.0d;
    }

    public boolean shouldShowFaceNotDetectedHint() {
        return this.faceTrackingStatus == 0;
    }

    private void prepareFramebuffer(int i, int i2) {
        GlUtil.checkGlError("prepareFramebuffer start");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GlUtil.checkGlError("glGenTextures");
        int i3 = this.mOffscreenTexture;
        this.mOffscreenTexture = iArr[0];
        GLES20.glBindTexture(3553, this.mOffscreenTexture);
        GlUtil.checkGlError("glBindTexture " + this.mOffscreenTexture);
        if (i3 > 0) {
            GLES20.glDeleteTextures(1, new int[]{i3}, 0);
        }
        GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
        GLES20.glTexParameterf(3553, 10241, 9728.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GlUtil.checkGlError("glTexParameter");
        GLES20.glGenFramebuffers(1, iArr, 0);
        GlUtil.checkGlError("glGenFramebuffers");
        int i4 = this.mFramebuffer;
        this.mFramebuffer = iArr[0];
        if (i4 > 0) {
            GLES20.glDeleteFramebuffers(1, new int[]{i4}, 0);
        }
        GLES20.glBindFramebuffer(36160, this.mFramebuffer);
        GlUtil.checkGlError("glBindFramebuffer " + this.mFramebuffer);
        GlUtil.checkGlError("glFramebufferRenderbuffer");
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.mOffscreenTexture, 0);
        GlUtil.checkGlError("glFramebufferTexture2D");
        int iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
        if (iGlCheckFramebufferStatus != 36053) {
            Utils.log("Framebuffer not complete, status=" + iGlCheckFramebufferStatus);
        }
        GLES20.glBindFramebuffer(36160, 0);
        GlUtil.checkGlError("prepareFramebuffer done");
    }

    private void preparePushFrameBuffer(int i, int i2) {
        GlUtil.checkGlError("prepareFramebuffer start");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        GlUtil.checkGlError("glGenTextures");
        int i3 = this.mPushFrameTexture;
        this.mPushFrameTexture = iArr[0];
        GLES20.glBindTexture(3553, this.mPushFrameTexture);
        GlUtil.checkGlError("glBindTexture " + this.mPushFrameTexture);
        if (i3 > 0) {
            GLES20.glDeleteTextures(1, new int[]{i3}, 0);
        }
        GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
        GLES20.glTexParameterf(3553, 10241, 9728.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GlUtil.checkGlError("glTexParameter");
        GLES20.glGenFramebuffers(1, iArr, 0);
        GlUtil.checkGlError("glGenFramebuffers");
        int i4 = this.mPushFramebuffer;
        this.mPushFramebuffer = iArr[0];
        if (i4 > 0) {
            GLES20.glDeleteFramebuffers(1, new int[]{i4}, 0);
        }
        GLES20.glBindFramebuffer(36160, this.mPushFramebuffer);
        GlUtil.checkGlError("glBindFramebuffer " + this.mPushFramebuffer);
        GlUtil.checkGlError("glFramebufferRenderbuffer");
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.mPushFrameTexture, 0);
        GlUtil.checkGlError("glFramebufferTexture2D");
        int iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
        if (iGlCheckFramebufferStatus != 36053) {
            Utils.log("Framebuffer not complete, status=" + iGlCheckFramebufferStatus);
        }
        GLES20.glBindFramebuffer(36160, 0);
        GlUtil.checkGlError("prepareFramebuffer done");
    }

    public void switchCamera() throws IOException {
        Utils.log("CameraRenderer --> CameraId " + this.cameraId + " Thread -- >" + Thread.currentThread());
        openCamera((this.cameraId + 1) % Camera.getNumberOfCameras());
    }

    public boolean isFrontCamera() {
        return this.cameraId == 1;
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() throws IOException {
        super.onPause();
        if (this.mCamera != null) {
            releaseCamera();
        }
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() throws IOException {
        super.onResume();
        if (this.isParamSet.get()) {
            openCamera(this.cameraId);
        }
    }

    public void stopPreview() throws IOException {
        releaseCamera();
        Camera camera = this.mCamera;
        if (camera != null) {
            try {
                camera.stopPreview();
            } catch (Exception unused) {
            }
        }
    }

    public void startPreview() throws IOException {
        openCamera(this.cameraId);
    }

    public void onDestroy() throws IOException {
        int[] iArr = new int[1];
        Utils.log("CameraRenderer --> onDestroy  Thread -- >" + Thread.currentThread());
        onPause();
        this.mUpdateTexture = false;
        this.openCameraRequestSent = false;
        this.isParamSet.set(false);
        this.mEGLCurrentContext = null;
        SurfaceTexture surfaceTexture = this.mCameraSurfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        int i = this.mOffscreenTexture;
        if (i > 0) {
            iArr[0] = i;
            GLES20.glDeleteTextures(1, iArr, 0);
            this.mOffscreenTexture = -1;
        }
        int i2 = this.mPushFrameTexture;
        if (i2 > 0) {
            iArr[0] = i2;
            GLES20.glDeleteTextures(1, iArr, 0);
            this.mPushFrameTexture = -1;
        }
        int i3 = this.mFramebuffer;
        if (i3 > 0) {
            iArr[0] = i3;
            GLES20.glDeleteFramebuffers(1, iArr, 0);
            this.mFramebuffer = -1;
        }
        int i4 = this.mPushFramebuffer;
        if (i4 > 0) {
            iArr[0] = i4;
            GLES20.glDeleteFramebuffers(1, iArr, 0);
            this.mPushFramebuffer = -1;
        }
        FullFrameRect fullFrameRect = this.mFullScreenCamera;
        if (fullFrameRect != null) {
            fullFrameRect.release(false);
            this.mFullScreenCamera = null;
        }
        FullFrameRect fullFrameRect2 = this.mFullScreenFUDisplay;
        if (fullFrameRect2 != null) {
            fullFrameRect2.release(false);
            this.mFullScreenFUDisplay = null;
        }
        FullFrameRect fullFrameRect3 = this.mFullScreenFiltered;
        if (fullFrameRect3 != null) {
            fullFrameRect3.release(false);
            this.mFullScreenFiltered = null;
        }
        this.mBuffer = null;
        this.frameSkiped = 0;
    }

    private void releaseCamera() throws IOException {
        Utils.log("CameraRenderer --> releaseCamera  Thread -- >" + Thread.currentThread());
        if (this.mCamera != null) {
            Utils.log("release camera" + this.cameraId);
            this.mCamera.stopPreview();
            try {
                this.mCamera.setPreviewTexture(null);
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.mCamera.setPreviewCallback(null);
            this.mCamera.release();
            this.mCamera = null;
        }
    }

    private void openCamera(int i) throws IOException {
        if (!this.openCameraRequestSent) {
            Utils.log("begin open camera");
            releaseCamera();
            this.openCameraRequestSent = true;
            this.cameraHandlerThread.startCamera(i);
            this.lastDisplayRotation = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getRotation();
            int i2 = this.lastDisplayRotation;
            if (i2 == 0) {
                this.lastDisplayRotation = 0;
                return;
            }
            if (i2 == 1) {
                this.lastDisplayRotation = 90;
                return;
            } else if (i2 == 2) {
                this.lastDisplayRotation = 180;
                return;
            } else {
                if (i2 != 3) {
                    return;
                }
                this.lastDisplayRotation = 270;
                return;
            }
        }
        Utils.log("try to open camera , ignore");
    }

    public void setupCameraPreview(Camera camera, int i) throws Exception {
        this.openCameraRequestSent = false;
        Utils.log("end open camera");
        this.cameraId = i;
        this.mCamera = camera;
        this.mCameraNotAvailable = this.mCamera == null;
        if (this.mCamera == null) {
            return;
        }
        configCameraParameters(getContext(), this.mCamera, this.cameraId);
        this.viewPortSeted = false;
        this.mCameraPreviewHeight = this.mCamera.getParameters().getPreviewSize().height;
        this.mCameraPreviewWidth = this.mCamera.getParameters().getPreviewSize().width;
        this.mBuffer = createPreviewBuffer();
        camera.addCallbackBuffer(this.mBuffer);
        this.mCamera.setPreviewCallbackWithBuffer(this);
        this.mCamera.setPreviewTexture(this.mCameraSurfaceTexture);
        CameraUtils.setCameraDisplayOrientation(this.mContext, this.cameraId, this.mCamera);
        this.mCamera.startPreview();
        notifyCameraChange();
    }

    public boolean isCameraNotAvailable() {
        return this.mCameraNotAvailable;
    }

    private void configCameraParameters(Context context, Camera camera, int i) {
        Camera.Parameters parameters = camera.getParameters();
        if (parameters.getSupportedFocusModes().contains("continuous-video")) {
            parameters.setFocusMode("continuous-video");
        }
        Camera.getCameraInfo(i, new Camera.CameraInfo());
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getDefaultDisplay().getSize(new Point());
        Point pointFindSuitablePreviewSize = CameraUtils.findSuitablePreviewSize(camera.getParameters(), this.mCameraPreviewWidth, this.mCameraPreviewHeight);
        if (pointFindSuitablePreviewSize != null) {
            parameters.setPreviewSize(pointFindSuitablePreviewSize.x, pointFindSuitablePreviewSize.y);
        }
        parameters.setPreviewFormat(17);
        camera.setParameters(parameters);
    }

    private class MyContextFactory implements GLSurfaceView.EGLContextFactory {
        private int EGL_CONTEXT_CLIENT_VERSION = 12440;
        private CameraRenderer mRenderer;

        public MyContextFactory(CameraRenderer cameraRenderer) {
            this.mRenderer = cameraRenderer;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            checkEglError("before createContext", egl10);
            int[] iArr = {this.EGL_CONTEXT_CLIENT_VERSION, 2, 12344};
            CameraRenderer cameraRenderer = this.mRenderer;
            EGLContext eGLContext = cameraRenderer.mEGLCurrentContext;
            if (eGLContext == null) {
                cameraRenderer.mEGLCurrentContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, iArr);
                eGLContext = this.mRenderer.mEGLCurrentContext;
            }
            checkEglError("after createContext", egl10);
            return eGLContext;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (this.mRenderer.mEGLCurrentContext == null) {
                egl10.eglDestroyContext(eGLDisplay, eGLContext);
            }
        }

        private void checkEglError(String str, EGL10 egl10) {
            while (egl10.eglGetError() != 12288) {
            }
        }
    }

    private int[] selectPreviewFpsRange(Camera camera, float f) {
        int i = (int) (f * 1000.0f);
        int[] iArr = null;
        int i2 = Integer.MAX_VALUE;
        for (int[] iArr2 : camera.getParameters().getSupportedPreviewFpsRange()) {
            int iAbs = Math.abs(i - iArr2[0]) + Math.abs(i - iArr2[1]);
            if (iAbs < i2) {
                iArr = iArr2;
                i2 = iAbs;
            }
        }
        return iArr;
    }

    private byte[] createPreviewBuffer() {
        Double.isNaN(bitsPerPixel);
        return new byte[((int) Math.ceil(bitsPerPixel / 8.0d)) + 1];
    }
}
