package io.agora.rtc.video;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.SurfaceHolder;
import com.narvii.scene.poll.ScenePollPlayView;
import io.agora.rtc.internal.DeviceUtils;
import io.agora.rtc.internal.Logging;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes4.dex */
public class VideoCaptureCamera extends VideoCapture implements Camera.PreviewCallback, SurfaceHolder.Callback {
    private static final long CAMERA_OPEN_REQUEST_INTERVAL = 2000;
    private static final boolean DEBUG = false;
    private static final String TAG = "CAMERA1";
    private boolean isCaptureRunning;
    private boolean isCaptureStarted;
    private boolean isFaceDetectionStarted;
    private boolean isSurfaceReady;
    protected Camera mCamera;
    private HandlerThread mCameraRecoverHandlerThread;
    private int mCaptureFormat;
    private int mCaptureFps;
    private int mCaptureHeight;
    private ReentrantLock mCaptureLock;
    private int mCaptureWidth;
    private SurfaceTexture mDummySurfaceTexture;
    private int mExpectedFrameSize;
    private Handler mHandler;
    private boolean mIsAutoFaceFocusEnabled;
    private SurfaceHolder mLocalPreview;
    private final int mNumCaptureBuffers;
    private Object mObjectLock;
    private boolean mOwnsBuffers;
    protected ReentrantLock mPreviewBufferLock;
    private Object mRecoverThreadObjectLock;

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    VideoCaptureCamera(Context context, int i, long j) {
        super(context, i, j);
        this.mPreviewBufferLock = new ReentrantLock();
        this.mCaptureLock = new ReentrantLock();
        this.isCaptureStarted = false;
        this.isCaptureRunning = false;
        this.isSurfaceReady = false;
        this.isFaceDetectionStarted = false;
        this.mLocalPreview = null;
        this.mDummySurfaceTexture = null;
        this.mOwnsBuffers = false;
        this.mNumCaptureBuffers = 3;
        this.mExpectedFrameSize = 0;
        this.mCaptureWidth = -1;
        this.mCaptureHeight = -1;
        this.mCaptureFps = -1;
        this.mCaptureFormat = 17;
        this.mCameraRecoverHandlerThread = null;
        this.mHandler = null;
        this.mRecoverThreadObjectLock = new Object();
        this.mObjectLock = new Object();
        this.mIsAutoFaceFocusEnabled = false;
    }

    protected static Camera.CameraInfo getCameraInfo(int i) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        try {
            Camera.getCameraInfo(i, cameraInfo);
            return cameraInfo;
        } catch (RuntimeException e) {
            Logging.e(TAG, "getCameraInfo: Camera.getCameraInfo: ", e);
            return null;
        }
    }

    static int getNumberOfCameras() {
        return Camera.getNumberOfCameras();
    }

    static String getName(int i) {
        Camera.CameraInfo cameraInfo = getCameraInfo(i);
        if (cameraInfo == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("camera ");
        sb.append(i);
        sb.append(", facing ");
        sb.append(cameraInfo.facing == 1 ? "front" : "back");
        return sb.toString();
    }

    static int getSensorOrientation(int i) {
        Camera.CameraInfo cameraInfo = getCameraInfo(i);
        if (cameraInfo == null) {
            return -1;
        }
        return cameraInfo.orientation;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int UnRegisterNativeHandle() {
        Logging.d(TAG, "UnRegisterNativeHandle called");
        synchronized (this.mRecoverThreadObjectLock) {
            this.mNativeVideoCaptureDeviceAndroid = 0L;
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int allocate() {
        try {
            this.mCamera = Camera.open(this.mId);
            Camera.CameraInfo cameraInfo = getCameraInfo(this.mId);
            if (cameraInfo == null) {
                this.mCamera.release();
                this.mCamera = null;
                return -2;
            }
            if (VideoCapture.fetchCapability(this.mId, this.mContext) == null) {
                createCapabilities();
            }
            this.mCameraNativeOrientation = cameraInfo.orientation;
            long j = this.mNativeVideoCaptureDeviceAndroid;
            if (j == 0) {
                return 0;
            }
            this.mIsAutoFaceFocusEnabled = isAutoFaceFocusEnabled(j);
            return 0;
        } catch (RuntimeException e) {
            Logging.e(TAG, "allocate: Camera.open: ", e);
            return -1;
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setCaptureFormat(int i) {
        Logging.d(TAG, "setCaptureFormat: " + i);
        this.mCaptureFormat = VideoCapture.translateToAndroidFormat(i);
        if (this.mCaptureFormat != 0) {
            return 0;
        }
        Logging.e(TAG, "setCaptureFormat failed, unkonwn format: " + i);
        return -1;
    }

    private int tryStartCapture(int i, int i2, int i3) throws Throwable {
        if (this.mCamera == null) {
            Logging.e(TAG, "Camera not initialized %d" + this.mId);
            return -1;
        }
        Logging.i(TAG, "tryStartCapture: " + i + "*" + i2 + ", frameRate: " + i3 + ", isCaptureRunning: " + this.isCaptureRunning + ", isSurfaceReady: " + this.isSurfaceReady + ", isCaptureStarted: " + this.isCaptureStarted);
        if (this.isCaptureRunning || !this.isCaptureStarted) {
            Logging.w(TAG, "tryStartCapture return");
            return 0;
        }
        Camera.Parameters parameters = this.mCamera.getParameters();
        parameters.setPreviewSize(i, i2);
        parameters.setPreviewFormat(this.mCaptureFormat);
        parameters.setPreviewFrameRate(i3);
        setAdvancedCameraParameters(parameters);
        setDeviceSpecificParameters(parameters);
        this.mCamera.setParameters(parameters);
        int bitsPerPixel = (((i * i2) * ImageFormat.getBitsPerPixel(this.mCaptureFormat)) / 8) + 4096;
        for (int i4 = 0; i4 < 3; i4++) {
            this.mCamera.addCallbackBuffer(new byte[bitsPerPixel]);
        }
        this.mCamera.setPreviewCallbackWithBuffer(this);
        this.mOwnsBuffers = true;
        this.mCamera.setErrorCallback(new Camera.ErrorCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera.1
            @Override // android.hardware.Camera.ErrorCallback
            public void onError(int i5, Camera camera) {
                Logging.e(VideoCaptureCamera.TAG, "onError: error code" + i5);
                if (i5 == 2 || i5 == 100 || i5 == 1) {
                    VideoCaptureCamera videoCaptureCamera = VideoCaptureCamera.this;
                    if (videoCaptureCamera.mCamera != null) {
                        videoCaptureCamera.stopCapture();
                        VideoCaptureCamera.this.mCaptureLock.lock();
                        Camera camera2 = VideoCaptureCamera.this.mCamera;
                        if (camera2 != null) {
                            camera2.release();
                            VideoCaptureCamera.this.mCamera = null;
                        }
                        VideoCaptureCamera.this.mCaptureLock.unlock();
                    }
                    synchronized (VideoCaptureCamera.this.mRecoverThreadObjectLock) {
                        if (VideoCaptureCamera.this.mCameraRecoverHandlerThread == null) {
                            VideoCaptureCamera.this.mCameraRecoverHandlerThread = new HandlerThread("camera-recover-thread");
                            VideoCaptureCamera.this.mCameraRecoverHandlerThread.start();
                            if (VideoCaptureCamera.this.mCameraRecoverHandlerThread != null) {
                                VideoCaptureCamera.this.mHandler = new Handler(VideoCaptureCamera.this.mCameraRecoverHandlerThread.getLooper());
                            }
                        }
                        if (VideoCaptureCamera.this.mHandler != null) {
                            VideoCaptureCamera.this.mHandler.postDelayed(new Runnable() { // from class: io.agora.rtc.video.VideoCaptureCamera.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    synchronized (VideoCaptureCamera.this.mRecoverThreadObjectLock) {
                                        Logging.i(VideoCaptureCamera.TAG, "native handle = " + VideoCaptureCamera.this.mNativeVideoCaptureDeviceAndroid);
                                        if (!VideoCaptureCamera.this.isForeground() || VideoCaptureCamera.this.mCamera != null || VideoCaptureCamera.this.mNativeVideoCaptureDeviceAndroid == 0) {
                                            if (VideoCaptureCamera.this.mHandler != null) {
                                                VideoCaptureCamera.this.mHandler.postDelayed(this, 2000L);
                                            }
                                        } else {
                                            VideoCaptureCamera.this.allocate();
                                            VideoCaptureCamera.this.startCapture(VideoCaptureCamera.this.mCaptureWidth, VideoCaptureCamera.this.mCaptureHeight, VideoCaptureCamera.this.mCaptureFps);
                                        }
                                    }
                                }
                            }, 2000L);
                        }
                    }
                }
            }
        });
        this.mCamera.startPreview();
        if (isAutoFaceFocusSupported()) {
            this.mCamera.setFaceDetectionListener(new Camera.FaceDetectionListener() { // from class: io.agora.rtc.video.VideoCaptureCamera.2
                private long mLastFocusedTs;

                @Override // android.hardware.Camera.FaceDetectionListener
                public void onFaceDetection(Camera.Face[] faceArr, Camera camera) {
                    if (faceArr == null || faceArr.length == 0 || camera == null || !VideoCaptureCamera.this.mIsAutoFaceFocusEnabled) {
                        return;
                    }
                    if (System.currentTimeMillis() - this.mLastFocusedTs < ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS) {
                        if (faceArr[0].score > 20) {
                            VideoCaptureCamera.this.notifyCameraFocusAreaChanged(faceArr[0].rect);
                            return;
                        }
                        return;
                    }
                    if (faceArr[0].score <= 50) {
                        Logging.i(VideoCaptureCamera.TAG, "face score = " + faceArr[0].score);
                        return;
                    }
                    try {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new Camera.Area(faceArr[0].rect, 1000));
                        if (camera.getParameters().getMaxNumFocusAreas() > 0) {
                            camera.getParameters().setFocusAreas(arrayList);
                        }
                        if (camera.getParameters().getMaxNumMeteringAreas() > 0) {
                            camera.getParameters().setMeteringAreas(arrayList);
                        }
                        VideoCaptureCamera.this.notifyCameraFocusAreaChanged(faceArr[0].rect);
                        camera.autoFocus(new Camera.AutoFocusCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera.2.1
                            @Override // android.hardware.Camera.AutoFocusCallback
                            public void onAutoFocus(boolean z, Camera camera2) {
                                Logging.d(VideoCaptureCamera.TAG, "auto face focus called api1 every 3 seconds");
                                if (camera2 != null) {
                                    try {
                                        camera2.cancelAutoFocus();
                                    } catch (RuntimeException e) {
                                        Logging.w(VideoCaptureCamera.TAG, "Exception in cancelAutoFocus: " + Log.getStackTraceString(e));
                                    }
                                }
                            }
                        });
                        this.mLastFocusedTs = System.currentTimeMillis();
                    } catch (RuntimeException e) {
                        Logging.w(VideoCaptureCamera.TAG, "Exception in onFaceDetection callback: " + Log.getStackTraceString(e));
                    }
                }
            });
            Logging.i(TAG, "enable face detection");
            this.mCamera.startFaceDetection();
            this.isFaceDetectionStarted = true;
        }
        this.mPreviewBufferLock.lock();
        this.mExpectedFrameSize = bitsPerPixel;
        this.isCaptureRunning = true;
        this.mPreviewBufferLock.unlock();
        Logging.e(TAG, "Params: " + this.mCamera.getParameters().flatten());
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCameraFocusAreaChanged(Rect rect) {
        RectF rectFNormalizedFaceRect = CoordinatesTransform.normalizedFaceRect(rect, 0, this.mId == 1);
        float f = rectFNormalizedFaceRect.left;
        float f2 = rectFNormalizedFaceRect.top;
        float fWidth = rectFNormalizedFaceRect.width();
        float fHeight = rectFNormalizedFaceRect.height();
        Logging.d(TAG, "auto face focus left =" + rectFNormalizedFaceRect.left + " top = " + rectFNormalizedFaceRect.top + " right = " + rectFNormalizedFaceRect.right + " bottom = " + rectFNormalizedFaceRect.bottom);
        NotifyCameraFocusAreaChanged(f, f2, fWidth, fHeight, this.mNativeVideoCaptureDeviceAndroid);
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setZoom(float f) {
        int i = (int) ((f * 100.0f) + 0.5f);
        List<Integer> zoomRatios = getZoomRatios();
        if (zoomRatios == null) {
            return -1;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= zoomRatios.size()) {
                i2 = 0;
                break;
            }
            if (i <= zoomRatios.get(i2).intValue()) {
                break;
            }
            i2++;
        }
        if (this.mCamera != null) {
            Camera.Parameters cameraParameters = getCameraParameters();
            if (isZoomSupported(cameraParameters)) {
                if (i2 > cameraParameters.getMaxZoom()) {
                    Logging.w(TAG, "zoom value is larger than maxZoom value");
                    return -1;
                }
                cameraParameters.setZoom(i2);
                this.mCamera.setParameters(cameraParameters);
            }
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public float getMaxZoom() {
        if (this.mCamera == null) {
            return -1.0f;
        }
        Camera.Parameters cameraParameters = getCameraParameters();
        int maxZoom = isZoomSupported(cameraParameters) ? cameraParameters.getMaxZoom() : 0;
        List<Integer> zoomRatios = getZoomRatios();
        if (zoomRatios == null || zoomRatios.size() <= maxZoom) {
            return -1.0f;
        }
        return zoomRatios.get(maxZoom).intValue() / 100.0f;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setTorchMode(boolean z) {
        Camera.Parameters cameraParameters;
        if (this.mCamera == null || (cameraParameters = getCameraParameters()) == null) {
            return -2;
        }
        List<String> supportedFlashModes = cameraParameters.getSupportedFlashModes();
        if (supportedFlashModes == null || !supportedFlashModes.contains("torch")) {
            return -1;
        }
        if (z) {
            cameraParameters.setFlashMode("torch");
        } else {
            cameraParameters.setFlashMode("off");
        }
        this.mCamera.setParameters(cameraParameters);
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setFocus(float f, float f2, boolean z) {
        Logging.d(TAG, "setFocus called camera api1");
        if (this.mCamera == null) {
            return -1;
        }
        if (f < 0.0f || f > 1.0f || f2 < 0.0f || f2 > 1.0f) {
            Logging.e(TAG, "set focus unreasonable inputs");
            return -1;
        }
        Rect rectCalculateTapArea = calculateTapArea(f, f2, 1.0f);
        Rect rectCalculateTapArea2 = calculateTapArea(f, f2, 1.5f);
        this.mCamera.cancelAutoFocus();
        Camera.Parameters cameraParameters = getCameraParameters();
        if (cameraParameters == null) {
            return -1;
        }
        if (cameraParameters.getMaxNumFocusAreas() > 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Camera.Area(rectCalculateTapArea, 800));
            cameraParameters.setFocusAreas(arrayList);
        } else {
            Logging.i(TAG, "focus areas not supported");
        }
        if (cameraParameters.getMaxNumMeteringAreas() > 0) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new Camera.Area(rectCalculateTapArea2, 800));
            cameraParameters.setMeteringAreas(arrayList2);
        } else {
            Logging.i(TAG, "metering areas not supported");
        }
        final String focusMode = cameraParameters.getFocusMode();
        if (isSupported("macro", cameraParameters.getSupportedFocusModes())) {
            cameraParameters.setFocusMode("macro");
            synchronized (this.mObjectLock) {
                this.mCamera.setParameters(cameraParameters);
            }
        } else {
            Logging.i("focus", "FOCUS_MODE_MACRO is not supported");
        }
        this.mCamera.autoFocus(new Camera.AutoFocusCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera.3
            @Override // android.hardware.Camera.AutoFocusCallback
            public void onAutoFocus(boolean z2, Camera camera) {
                Camera.Parameters parameters = camera.getParameters();
                parameters.setFocusMode(focusMode);
                synchronized (VideoCaptureCamera.this.mObjectLock) {
                    camera.setParameters(parameters);
                }
            }
        });
        long j = this.mNativeVideoCaptureDeviceAndroid;
        if (j == 0) {
            return 0;
        }
        NotifyCameraFocusAreaChanged(f, f2, 0.0f, 0.0f, j);
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setExposure(float f, float f2, boolean z) {
        Logging.d(TAG, "setExposure called camera api1 x = " + f + " y = " + f2);
        if (this.mCamera == null) {
            return -1;
        }
        if (f < 0.0f || f > 1.0f || f2 < 0.0f || f2 > 1.0f) {
            Logging.e(TAG, "set exposure unreasonable inputs");
            return -1;
        }
        Rect rectCalculateTapArea = calculateTapArea(f, f2, 1.5f);
        if (this.mCamera != null) {
            Camera.Parameters cameraParameters = getCameraParameters();
            if (cameraParameters == null) {
                return -1;
            }
            if (cameraParameters.getMaxNumMeteringAreas() > 0) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new Camera.Area(rectCalculateTapArea, 800));
                cameraParameters.setMeteringAreas(arrayList);
            } else {
                Logging.i(TAG, "metering areas not supported");
            }
            this.mCamera.setParameters(cameraParameters);
            this.mCamera.startPreview();
        }
        long j = this.mNativeVideoCaptureDeviceAndroid;
        if (j == 0) {
            return 0;
        }
        NotifyCameraExposureAreaChanged(f, f2, 0.0f, 0.0f, j);
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setAutoFaceFocus(boolean z) {
        this.mIsAutoFaceFocusEnabled = z;
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int startCapture(int i, int i2, int i3) throws IOException {
        int iTryStartCapture = -1;
        if (this.mCamera == null) {
            Logging.e(TAG, "startCapture: camera is null!!");
            return -1;
        }
        this.mLocalPreview = ViERenderer.GetLocalRenderer();
        SurfaceHolder surfaceHolder = this.mLocalPreview;
        if (surfaceHolder != null) {
            if (surfaceHolder.getSurface() != null && this.mLocalPreview.getSurface().isValid()) {
                surfaceCreated(this.mLocalPreview);
            }
            this.mLocalPreview.addCallback(this);
        } else {
            this.mCaptureLock.lock();
            try {
                this.mDummySurfaceTexture = new SurfaceTexture(42);
                this.mCamera.setPreviewTexture(this.mDummySurfaceTexture);
                this.mCaptureLock.unlock();
            } catch (Exception unused) {
                Logging.e(TAG, "failed to startPreview, invalid surfaceTexture!");
                this.mDummySurfaceTexture = null;
                return -1;
            } finally {
            }
        }
        this.mCaptureLock.lock();
        this.isCaptureStarted = true;
        this.mCaptureWidth = i;
        this.mCaptureHeight = i2;
        this.mCaptureFps = i3;
        try {
            iTryStartCapture = tryStartCapture(i, i2, i3);
        } finally {
            try {
                return iTryStartCapture;
            } finally {
            }
        }
        return iTryStartCapture;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int stopCapture() {
        if (!this.isCaptureStarted) {
            Logging.w(TAG, "already stop capture");
            return 0;
        }
        try {
            if (this.isFaceDetectionStarted) {
                this.mCamera.stopFaceDetection();
                this.mCamera.setFaceDetectionListener(null);
                this.isFaceDetectionStarted = false;
            }
        } catch (RuntimeException e) {
            Logging.e(TAG, "Failed to stop face detection", e);
        }
        try {
            this.mPreviewBufferLock.lock();
            this.isCaptureRunning = false;
            this.mCamera.stopPreview();
            this.mPreviewBufferLock.unlock();
            this.mCamera.setErrorCallback(null);
            this.mCamera.setPreviewCallbackWithBuffer(null);
            this.isCaptureStarted = false;
            return 0;
        } catch (RuntimeException e2) {
            Logging.e(TAG, "Failed to stop camera", e2);
            return -1;
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isTorchSupported() {
        Camera.Parameters cameraParameters;
        if (this.mCamera == null || (cameraParameters = getCameraParameters()) == null) {
            return false;
        }
        return isSupported("torch", cameraParameters.getSupportedFlashModes());
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isFocusSupported() {
        Camera.Parameters cameraParameters;
        return this.mCamera != null && (cameraParameters = getCameraParameters()) != null && cameraParameters.getMaxNumFocusAreas() > 0 && isSupported("auto", cameraParameters.getSupportedFocusModes());
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isExposureSupported() {
        Camera.Parameters cameraParameters;
        return (this.mCamera == null || (cameraParameters = getCameraParameters()) == null || cameraParameters.getMaxNumMeteringAreas() <= 0) ? false : true;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isZoomSupported() {
        Camera.Parameters cameraParameters;
        if (this.mCamera == null || (cameraParameters = getCameraParameters()) == null) {
            return false;
        }
        return cameraParameters.isZoomSupported();
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isAutoFaceFocusSupported() {
        Camera.Parameters cameraParameters;
        return this.mCamera != null && (cameraParameters = getCameraParameters()) != null && cameraParameters.getMaxNumDetectedFaces() > 0 && cameraParameters.getMaxNumFocusAreas() > 0 && isSupported("auto", cameraParameters.getSupportedFocusModes());
    }

    @Override // io.agora.rtc.video.VideoCapture
    public void deallocate() {
        if (this.mCamera == null) {
            return;
        }
        synchronized (this.mRecoverThreadObjectLock) {
            this.mNativeVideoCaptureDeviceAndroid = 0L;
            stopCapture();
            this.mCaptureLock.lock();
            if (this.mCamera != null) {
                this.mCamera.release();
                this.mCamera = null;
            }
            this.mCaptureLock.unlock();
            if (this.mHandler != null) {
                this.mHandler.removeCallbacksAndMessages(null);
            }
            if (this.mCameraRecoverHandlerThread != null) {
                this.mCameraRecoverHandlerThread.quit();
                this.mCameraRecoverHandlerThread = null;
                this.mHandler = null;
            }
        }
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        boolean z;
        try {
            this.mPreviewBufferLock.lock();
            if (bArr != null && this.isCaptureRunning) {
                if (bArr.length == this.mExpectedFrameSize && this.mNativeVideoCaptureDeviceAndroid != 0) {
                    ProvideCameraFrame(bArr, this.mExpectedFrameSize, this.mNativeVideoCaptureDeviceAndroid);
                } else if (this.mNativeVideoCaptureDeviceAndroid == 0) {
                    Logging.w(TAG, "warning mNativeVideoCaptureDeviceAndroid = 0, error");
                }
                if (camera != null) {
                    if (z) {
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            this.mPreviewBufferLock.unlock();
            if (camera == null || !this.isCaptureRunning) {
                return;
            }
            camera.addCallbackBuffer(bArr);
        } finally {
            this.mPreviewBufferLock.unlock();
            if (camera != null && this.isCaptureRunning) {
                camera.addCallbackBuffer(bArr);
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) throws IOException {
        this.mCaptureLock.lock();
        try {
            if (this.mCamera != null) {
                this.mCamera.stopPreview();
                this.mCamera.setPreviewDisplay(surfaceHolder);
            }
        } catch (IOException e) {
            Logging.e(TAG, "Failed to set preview surface!", e);
        } catch (RuntimeException e2) {
            Logging.e(TAG, "Failed to stop preview!", e2);
        }
        this.mCaptureLock.unlock();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) throws IOException {
        this.mCaptureLock.lock();
        try {
            if (this.mCamera != null) {
                this.mCamera.setPreviewDisplay(null);
            }
        } catch (IOException e) {
            Logging.e(TAG, "Failed to clear preview surface!", e);
        }
        this.mCaptureLock.unlock();
    }

    private static boolean isSupported(String str, List<String> list) {
        return list != null && list.indexOf(str) >= 0;
    }

    private void setAdvancedCameraParameters(Camera.Parameters parameters) {
        if (isSupported("off", parameters.getSupportedFlashModes())) {
            Logging.i(TAG, "AgoraVideo set flash mode = FLASH_MODE_OFF");
            parameters.setFlashMode("off");
        }
        if (isSupported("auto", parameters.getSupportedWhiteBalance())) {
            Logging.i(TAG, "AgoraVideo set white blance = WHITE_BALANCE_AUTO");
            parameters.setWhiteBalance("auto");
        }
        if (isSupported("continuous-video", parameters.getSupportedFocusModes())) {
            Logging.i(TAG, "AgoraVideo set Focus mode = FOCUS_MODE_CONTINUOUS_VIDEO");
            parameters.setFocusMode("continuous-video");
        }
        if (isSupported("auto", parameters.getSupportedAntibanding())) {
            Logging.i(TAG, "AgoraVideo set anti-banding = ANTIBANDING_AUTO");
            parameters.setAntibanding("auto");
        }
        if (isSupported("auto", parameters.getSupportedSceneModes())) {
            Logging.i(TAG, "AgoraVideo set sence mode = auto");
            if (parameters.getSceneMode() != "auto") {
                parameters.setSceneMode("auto");
            }
        }
    }

    private void setDeviceSpecificParameters(Camera.Parameters parameters) throws Throwable {
        String deviceId = DeviceUtils.getDeviceId();
        String cpuName = DeviceUtils.getCpuName();
        String cpuABI = DeviceUtils.getCpuABI();
        int numberOfCPUCores = DeviceUtils.getNumberOfCPUCores();
        int cPUMaxFreqKHz = DeviceUtils.getCPUMaxFreqKHz();
        Logging.i(TAG, "Current Device: " + deviceId);
        Logging.i(TAG, "CPU name: " + cpuName + ", with " + numberOfCPUCores + " cores, arch: " + cpuABI + ", max Freq: " + cPUMaxFreqKHz);
        if (deviceId.contains("xiaomi/mi note")) {
            Logging.i(TAG, "set MiNote config");
            parameters.set("scene-detect", "on");
            parameters.set("xiaomi-still-beautify-values", "i:3");
            parameters.set("skinToneEnhancement", "enable");
            parameters.set("auto-exposure", "center-weighted");
        }
        if (deviceId.contains("oppo/r7c/r7c")) {
            Logging.i(TAG, "set oppo r7c config");
            parameters.set("skinToneEnhancement", 1);
            parameters.set("face-beautify", 100);
            parameters.set("auto-exposure", "center-weighted");
        }
    }

    public Camera.Parameters getCameraParameters() {
        try {
            return this.mCamera.getParameters();
        } catch (RuntimeException e) {
            Logging.e(TAG, "getCameraParameters: Camera.getParameters: ", e);
            Camera camera = this.mCamera;
            if (camera != null) {
                camera.release();
                this.mCamera = null;
            }
            return null;
        }
    }

    public int createCapabilities() {
        String str;
        Camera.Parameters cameraParameters = getCameraParameters();
        if (cameraParameters != null) {
            String str2 = "\"id\":" + this.mId + ",";
            List<Camera.Size> supportedPreviewSizes = cameraParameters.getSupportedPreviewSizes();
            String str3 = "";
            String str4 = "";
            for (int i = 0; i < supportedPreviewSizes.size(); i++) {
                String str5 = "{\"w\":" + supportedPreviewSizes.get(i).width + ",\"h\":" + supportedPreviewSizes.get(i).height + "}";
                str4 = i != supportedPreviewSizes.size() - 1 ? str4 + str5 + "," : str4 + str5;
            }
            List<Integer> supportedPreviewFormats = cameraParameters.getSupportedPreviewFormats();
            if (VideoCapture.isEmulator()) {
                supportedPreviewFormats.remove(Integer.valueOf(IjkMediaPlayer.SDL_FCC_YV12));
            }
            String str6 = "";
            for (int i2 = 0; i2 < supportedPreviewFormats.size(); i2++) {
                int iTranslateToEngineFormat = VideoCapture.translateToEngineFormat(supportedPreviewFormats.get(i2).intValue());
                str6 = i2 != supportedPreviewFormats.size() - 1 ? str6 + iTranslateToEngineFormat + "," : str6 + iTranslateToEngineFormat;
            }
            List<Integer> supportedPreviewFrameRates = cameraParameters.getSupportedPreviewFrameRates();
            for (int i3 = 0; i3 < supportedPreviewFrameRates.size(); i3++) {
                int iIntValue = supportedPreviewFrameRates.get(i3).intValue();
                str3 = i3 != supportedPreviewFrameRates.size() - 1 ? str3 + iIntValue + "," : str3 + iIntValue;
            }
            str = "{" + str2 + "\"resolution\":[" + str4 + "],\"format\":[" + str6 + "],\"fps\":[" + str3 + "]}";
        } else {
            str = null;
        }
        VideoCapture.cacheCapability(this.mId, this.mContext, str);
        return 0;
    }

    private List<Integer> getZoomRatios() {
        if (this.mCamera == null) {
            return null;
        }
        Camera.Parameters cameraParameters = getCameraParameters();
        if (isZoomSupported(cameraParameters)) {
            return cameraParameters.getZoomRatios();
        }
        return null;
    }

    private boolean isZoomSupported(Camera.Parameters parameters) {
        if (parameters != null) {
            if (parameters.isZoomSupported()) {
                return true;
            }
            Logging.w(TAG, "camera zoom is not supported ");
        }
        return false;
    }

    private static Rect calculateTapArea(float f, float f2, float f3) {
        int i = (int) ((f * 2000.0f) - 1000.0f);
        int i2 = (int) ((f2 * 2000.0f) - 1000.0f);
        int iIntValue = Float.valueOf(f3 * 300.0f).intValue() / 2;
        RectF rectF = new RectF(clamp(i - iIntValue, -1000, 1000), clamp(i2 - iIntValue, -1000, 1000), clamp(i + iIntValue, -1000, 1000), clamp(i2 + iIntValue, -1000, 1000));
        return new Rect(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
    }

    private static int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isForeground() {
        Context context = this.mContext;
        if (context != null) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses == null) {
                Logging.e(TAG, "List of RunningAppProcessInfo is null");
                return false;
            }
            for (int i = 0; i < runningAppProcesses.size(); i++) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = runningAppProcesses.get(i);
                if (runningAppProcessInfo == null) {
                    Logging.e(TAG, "ActivityManager.RunningAppProcessInfo is null");
                } else if (runningAppProcessInfo.processName.equals(this.mContext.getPackageName()) && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
        }
        return false;
    }
}
