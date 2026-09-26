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
import io.agora.rtc.internal.DeviceUtils;
import io.agora.rtc.internal.Logging;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
public class VideoCaptureCamera extends VideoCapture implements Camera.PreviewCallback, SurfaceHolder.Callback {
    private static final long CAMERA_OPEN_REQUEST_INTERVAL = 2000;
    private static final boolean DEBUG = false;
    private static final String TAG = "CAMERA1";
    private int[] distanceArray;
    private boolean faceDetectEnabled;
    private boolean isCaptureRunning;
    private boolean isCaptureStarted;
    private boolean isFaceDetectionStarted;
    private boolean isSurfaceReady;
    private String mAntiBandingMode;
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
    private RectF[] rectArray;

    protected static Camera.CameraInfo getCameraInfo(int id) {
        if (id >= 0 && id <= Camera.getNumberOfCameras() - 1) {
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            try {
                Camera.getCameraInfo(id, cameraInfo);
                return cameraInfo;
            } catch (RuntimeException e) {
                Logging.e(TAG, "getCameraInfo: Camera.getCameraInfo: ", e);
            }
        }
        return null;
    }

    static String getCaptureName() {
        return "camera1";
    }

    public static int getFrontCameraIndex() {
        try {
            return Camera.getNumberOfCameras() > 1 ? 1 : 0;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    private static boolean isSupported(String value, List<String> supported) {
        return supported != null && supported.indexOf(value) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFaceDetection(Camera.Face[] faces) {
        this.rectArray = null;
        boolean z6 = this.mId == 1;
        if (faces == null || faces.length <= 0) {
            return;
        }
        int length = faces.length;
        this.rectArray = new RectF[length];
        this.distanceArray = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.rectArray[i10] = CoordinatesTransform.normalizedFaceRect(faces[i10].rect, 0, z6);
            this.distanceArray[i10] = 5;
        }
        NotifyFaceDetection(this.mCaptureWidth, this.mCaptureHeight, this.rectArray, length, this.mNativeVideoCaptureDeviceAndroid);
    }

    private String toCamera1ABMode(int mode) {
        if (mode == 0) {
            return "off";
        }
        if (mode != 1) {
            return mode != 2 ? "auto" : "60hz";
        }
        return "50hz";
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
    public int setZoom(float zoomValue) {
        if (zoomValue < 0.0f) {
            return -1;
        }
        int i10 = (int) ((zoomValue * 100.0f) + 0.5f);
        List<Integer> zoomRatios = getZoomRatios();
        if (zoomRatios == null) {
            return -1;
        }
        int i11 = 0;
        while (true) {
            if (i11 >= zoomRatios.size()) {
                i11 = 0;
                break;
            }
            if (i10 <= zoomRatios.get(i11).intValue()) {
                break;
            }
            i11++;
        }
        if (this.mCamera != null) {
            Camera.Parameters cameraParameters = getCameraParameters();
            if (isZoomSupported(cameraParameters)) {
                if (i11 > cameraParameters.getMaxZoom()) {
                    Logging.w(TAG, "zoom value is larger than maxZoom value");
                    return -1;
                }
                cameraParameters.setZoom(i11);
                try {
                    this.mCamera.setParameters(cameraParameters);
                } catch (Exception e) {
                    Logging.w(TAG, "setParameters failed, zoomLevel: " + i11 + ", " + e);
                }
            }
        }
        return 0;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
    }

    private static Rect calculateTapArea(float x6, float y6, float coefficient) {
        int i10 = (int) ((x6 * 2000.0f) - 1000.0f);
        int i11 = (int) ((y6 * 2000.0f) - 1000.0f);
        int iIntValue = Float.valueOf(coefficient * 300.0f).intValue() / 2;
        RectF rectF = new RectF(clamp(i10 - iIntValue, -1000, 1000), clamp(i11 - iIntValue, -1000, 1000), clamp(i10 + iIntValue, -1000, 1000), clamp(i11 + iIntValue, -1000, 1000));
        return new Rect(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
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

    private boolean isFaceDetectedSupported() {
        Camera.Parameters cameraParameters;
        return this.mCamera != null && (cameraParameters = getCameraParameters()) != null && cameraParameters.getMaxNumDetectedFaces() > 0 && cameraParameters.getMaxNumFocusAreas() > 0;
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
            for (int i10 = 0; i10 < runningAppProcesses.size(); i10++) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = runningAppProcesses.get(i10);
                if (runningAppProcessInfo == null) {
                    Logging.e(TAG, "ActivityManager.RunningAppProcessInfo is null");
                } else if (runningAppProcessInfo.processName.equals(this.mContext.getPackageName()) && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCameraFocusAreaChanged(Rect faceRect) {
        RectF rectFNormalizedFaceRect = CoordinatesTransform.normalizedFaceRect(faceRect, 0, this.mId == 1);
        float f = rectFNormalizedFaceRect.left;
        float f6 = rectFNormalizedFaceRect.top;
        float fWidth = rectFNormalizedFaceRect.width();
        float fHeight = rectFNormalizedFaceRect.height();
        Logging.d(TAG, "auto face focus left =" + rectFNormalizedFaceRect.left + " top = " + rectFNormalizedFaceRect.top + " right = " + rectFNormalizedFaceRect.right + " bottom = " + rectFNormalizedFaceRect.bottom);
        NotifyCameraFocusAreaChanged(f, f6, fWidth, fHeight, this.mNativeVideoCaptureDeviceAndroid);
    }

    private void setExposureCompensation_l(int value) {
        Camera.Parameters parameters;
        Logging.i(TAG, "setExposureCompensation:" + value);
        Camera camera = this.mCamera;
        if (camera == null || (parameters = camera.getParameters()) == null) {
            return;
        }
        float exposureCompensationStep = parameters.getExposureCompensationStep();
        int minExposureCompensation = parameters.getMinExposureCompensation();
        int maxExposureCompensation = parameters.getMaxExposureCompensation();
        Logging.i(TAG, "compensation step=" + exposureCompensationStep + ", min=" + minExposureCompensation + ", max=" + maxExposureCompensation + ", cur index=" + parameters.getExposureCompensation());
        if (value > maxExposureCompensation) {
            value = maxExposureCompensation;
        }
        if (value >= minExposureCompensation) {
            minExposureCompensation = value;
        }
        parameters.setExposureCompensation(minExposureCompensation);
        try {
            this.mCamera.setParameters(parameters);
        } catch (Exception e) {
            Logging.e(TAG, "exposure compensation got exception:" + e);
        }
        int exposureCompensation = parameters.getExposureCompensation();
        Logging.i(TAG, "cur index=" + exposureCompensation + ", ev=" + (exposureCompensationStep * exposureCompensation));
    }

    private void startFaceDetection() {
        if (this.mCamera == null) {
            return;
        }
        try {
            Logging.i(TAG, "enable face detection");
            this.mCamera.startFaceDetection();
            this.isFaceDetectionStarted = true;
        } catch (Exception e) {
            Logging.e(TAG, "start face detection failed:" + e);
            this.mCamera.stopFaceDetection();
            this.isFaceDetectionStarted = false;
        }
    }

    private void stopFaceDetection() {
        if (this.mCamera == null) {
            return;
        }
        Logging.i(TAG, "disable face detection");
        this.mCamera.stopFaceDetection();
        this.isFaceDetectionStarted = false;
    }

    private int tryStartCapture(int width, int height, int frameRate) throws Throwable {
        if (this.mCamera == null) {
            Logging.e(TAG, "Camera not initialized %d" + this.mId);
            return -1;
        }
        Logging.i(TAG, "tryStartCapture: " + width + "*" + height + ", frameRate: " + frameRate + ", isCaptureRunning: " + this.isCaptureRunning + ", isSurfaceReady: " + this.isSurfaceReady + ", isCaptureStarted: " + this.isCaptureStarted);
        if (this.isCaptureRunning || !this.isCaptureStarted) {
            Logging.w(TAG, "tryStartCapture return");
            return 0;
        }
        Camera.Parameters parameters = this.mCamera.getParameters();
        parameters.setPreviewSize(width, height);
        parameters.setPreviewFormat(this.mCaptureFormat);
        if (this.mPQFirst < 1) {
            Logging.i(TAG, "camera1::fps first");
            List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
            if (supportedPreviewFpsRange.size() <= 0) {
                parameters.setPreviewFrameRate(frameRate);
            } else {
                int i10 = 0;
                while (i10 < supportedPreviewFpsRange.size()) {
                    if (supportedPreviewFpsRange.get(i10)[0] >= frameRate * 1000) {
                        parameters.setPreviewFpsRange(supportedPreviewFpsRange.get(i10)[0], supportedPreviewFpsRange.get(i10)[1]);
                        break;
                    }
                    i10++;
                }
                if (i10 == supportedPreviewFpsRange.size()) {
                    int i11 = i10 - 1;
                    parameters.setPreviewFpsRange(supportedPreviewFpsRange.get(i11)[0], supportedPreviewFpsRange.get(i11)[1]);
                }
            }
        } else {
            Logging.i(TAG, "camera1::PQ first");
            parameters.setPreviewFrameRate(frameRate);
        }
        if (this.mId == 0) {
            parameters.setRecordingHint(true);
        }
        setAdvancedCameraParameters(parameters);
        setDeviceSpecificParameters(parameters);
        this.mCamera.setParameters(parameters);
        int bitsPerPixel = (((width * height) * ImageFormat.getBitsPerPixel(this.mCaptureFormat)) / 8) + 4096;
        for (int i12 = 0; i12 < 3; i12++) {
            this.mCamera.addCallbackBuffer(new byte[bitsPerPixel]);
        }
        this.mCamera.setPreviewCallbackWithBuffer(this);
        this.mOwnsBuffers = true;
        this.mCamera.setErrorCallback(new Camera.ErrorCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera.1
            @Override // android.hardware.Camera.ErrorCallback
            public void onError(int error, Camera camera) {
                Logging.e(VideoCaptureCamera.TAG, "onError: error code" + error);
                if (error == 2 || error == 100 || error == 1) {
                    VideoCaptureCamera videoCaptureCamera = VideoCaptureCamera.this;
                    if (videoCaptureCamera.mCamera != null) {
                        videoCaptureCamera.stopCapture();
                        VideoCaptureCamera.this.mCaptureLock.lock();
                        try {
                            try {
                                Camera camera2 = VideoCaptureCamera.this.mCamera;
                                if (camera2 != null) {
                                    camera2.release();
                                    VideoCaptureCamera.this.mCamera = null;
                                }
                            } catch (Exception e) {
                                Logging.e(VideoCaptureCamera.TAG, "Camera release failed, " + e);
                            }
                            VideoCaptureCamera.this.mCaptureLock.unlock();
                        } catch (Throwable th) {
                            VideoCaptureCamera.this.mCaptureLock.unlock();
                            throw th;
                        }
                    }
                    synchronized (VideoCaptureCamera.this.mRecoverThreadObjectLock) {
                        try {
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
                                            try {
                                                Logging.i(VideoCaptureCamera.TAG, "native handle = " + VideoCaptureCamera.this.mNativeVideoCaptureDeviceAndroid);
                                                if (VideoCaptureCamera.this.isForeground()) {
                                                    VideoCaptureCamera videoCaptureCamera2 = VideoCaptureCamera.this;
                                                    if (videoCaptureCamera2.mCamera == null && videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid != 0) {
                                                        videoCaptureCamera2.allocate();
                                                        VideoCaptureCamera videoCaptureCamera3 = VideoCaptureCamera.this;
                                                        videoCaptureCamera3.startCapture(videoCaptureCamera3.mCaptureWidth, VideoCaptureCamera.this.mCaptureHeight, VideoCaptureCamera.this.mCaptureFps);
                                                        return;
                                                    }
                                                }
                                                if (VideoCaptureCamera.this.mHandler != null) {
                                                    VideoCaptureCamera.this.mHandler.postDelayed(this, 2000L);
                                                }
                                            } catch (Throwable th2) {
                                                throw th2;
                                            }
                                        }
                                    }
                                }, 2000L);
                            }
                        } catch (Throwable th2) {
                            throw th2;
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
                public void onFaceDetection(Camera.Face[] faces, Camera camera) {
                    if (VideoCaptureCamera.this.faceDetectEnabled) {
                        VideoCaptureCamera.this.notifyFaceDetection(faces);
                    }
                    if (faces == null || faces.length == 0 || camera == null || !VideoCaptureCamera.this.mIsAutoFaceFocusEnabled) {
                        return;
                    }
                    if (System.currentTimeMillis() - this.mLastFocusedTs < 3000) {
                        Camera.Face face = faces[0];
                        if (face.score > 20) {
                            VideoCaptureCamera.this.notifyCameraFocusAreaChanged(face.rect);
                            return;
                        }
                        return;
                    }
                    if (faces[0].score <= 50) {
                        Logging.i(VideoCaptureCamera.TAG, "face score = " + faces[0].score);
                        return;
                    }
                    try {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new Camera.Area(faces[0].rect, 1000));
                        if (camera.getParameters().getMaxNumFocusAreas() > 0) {
                            camera.getParameters().setFocusAreas(arrayList);
                        }
                        if (camera.getParameters().getMaxNumMeteringAreas() > 0) {
                            camera.getParameters().setMeteringAreas(arrayList);
                        }
                        VideoCaptureCamera.this.notifyCameraFocusAreaChanged(faces[0].rect);
                        camera.autoFocus(new Camera.AutoFocusCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera.2.1
                            @Override // android.hardware.Camera.AutoFocusCallback
                            public void onAutoFocus(boolean success, Camera camera2) {
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
            if (this.mIsAutoFaceFocusEnabled || this.faceDetectEnabled) {
                startFaceDetection();
            }
        } else if (isFaceDetectedSupported()) {
            this.mCamera.setFaceDetectionListener(new Camera.FaceDetectionListener() { // from class: io.agora.rtc.video.VideoCaptureCamera.3
                @Override // android.hardware.Camera.FaceDetectionListener
                public void onFaceDetection(Camera.Face[] faces, Camera camera) {
                    if (VideoCaptureCamera.this.faceDetectEnabled) {
                        VideoCaptureCamera.this.notifyFaceDetection(faces);
                    }
                }
            });
            if (this.faceDetectEnabled) {
                startFaceDetection();
            }
        }
        this.mPreviewBufferLock.lock();
        this.mExpectedFrameSize = bitsPerPixel;
        this.isCaptureRunning = true;
        this.mPreviewBufferLock.unlock();
        Logging.i(TAG, "Params: " + this.mCamera.getParameters().flatten());
        return 0;
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
            if (VideoCapture.fetchCapability(this.mId, this.mContext, getCaptureName()) == null) {
                createCapabilities();
            }
            this.mCameraNativeOrientation = cameraInfo.orientation;
            long j6 = this.mNativeVideoCaptureDeviceAndroid;
            if (j6 != 0) {
                this.mIsAutoFaceFocusEnabled = isAutoFaceFocusEnabled(j6);
            }
            this.faceDetectEnabled = isFaceDetectionEnabled(this.mNativeVideoCaptureDeviceAndroid);
            return 0;
        } catch (RuntimeException e) {
            Logging.e(TAG, "allocate: Camera.open: ", e);
            return -1;
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public void deallocate() {
        if (this.mCamera == null) {
            return;
        }
        synchronized (this.mRecoverThreadObjectLock) {
            try {
                this.mNativeVideoCaptureDeviceAndroid = 0L;
                stopCapture();
                this.mCaptureLock.lock();
                Camera camera = this.mCamera;
                if (camera != null) {
                    camera.release();
                    this.mCamera = null;
                }
                this.mCaptureLock.unlock();
                Handler handler = this.mHandler;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                HandlerThread handlerThread = this.mCameraRecoverHandlerThread;
                if (handlerThread != null) {
                    handlerThread.quit();
                    this.mCameraRecoverHandlerThread = null;
                    this.mHandler = null;
                }
            } catch (Throwable th) {
                throw th;
            }
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
    public boolean isAutoFaceFocusSupported() {
        Camera.Parameters cameraParameters;
        return this.mCamera != null && (cameraParameters = getCameraParameters()) != null && cameraParameters.getMaxNumDetectedFaces() > 0 && cameraParameters.getMaxNumFocusAreas() > 0 && isSupported("auto", cameraParameters.getSupportedFocusModes());
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isExposureSupported() {
        Camera.Parameters cameraParameters;
        return (this.mCamera == null || (cameraParameters = getCameraParameters()) == null || cameraParameters.getMaxNumMeteringAreas() <= 0) ? false : true;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isFocusSupported() {
        Camera.Parameters cameraParameters;
        return this.mCamera != null && (cameraParameters = getCameraParameters()) != null && cameraParameters.getMaxNumFocusAreas() > 0 && isSupported("auto", cameraParameters.getSupportedFocusModes());
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isTorchSupported() {
        Camera.Parameters cameraParameters;
        if (this.mCamera == null || (cameraParameters = getCameraParameters()) == null) {
            return false;
        }
        return isSupported("torch", cameraParameters.getSupportedFlashModes());
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001f A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:2:0x0000, B:4:0x0007, B:7:0x000c, B:9:0x0013, B:11:0x0019, B:14:0x001f, B:16:0x0025), top: B:35:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0025 A[Catch: all -> 0x001d, TRY_LEAVE, TryCatch #0 {all -> 0x001d, blocks: (B:2:0x0000, B:4:0x0007, B:7:0x000c, B:9:0x0013, B:11:0x0019, B:14:0x001f, B:16:0x0025), top: B:35:0x0000 }] */
    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] data, Camera camera) {
        try {
            this.mPreviewBufferLock.lock();
            if (data != null && this.isCaptureRunning) {
                int length = data.length;
                int i10 = this.mExpectedFrameSize;
                if (length == i10) {
                    long j6 = this.mNativeVideoCaptureDeviceAndroid;
                    if (j6 != 0) {
                        ProvideCameraFrame(data, i10, j6);
                    } else if (this.mNativeVideoCaptureDeviceAndroid == 0) {
                        Logging.w(TAG, "warning mNativeVideoCaptureDeviceAndroid = 0, error");
                    }
                } else if (this.mNativeVideoCaptureDeviceAndroid == 0) {
                    Logging.w(TAG, "warning mNativeVideoCaptureDeviceAndroid = 0, error");
                }
            }
        } finally {
            if (camera != null && this.isCaptureRunning) {
                camera.addCallbackBuffer(data);
            }
            this.mPreviewBufferLock.unlock();
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setAutoFaceFocus(boolean enable) {
        Logging.d(TAG, "setAutoFaceFocus: " + enable);
        boolean z6 = this.mIsAutoFaceFocusEnabled != enable;
        this.mIsAutoFaceFocusEnabled = enable;
        if (isAutoFaceFocusSupported() && z6) {
            boolean z10 = this.mIsAutoFaceFocusEnabled;
            if (z10 && !this.isFaceDetectionStarted) {
                startFaceDetection();
            } else if (!z10 && this.isFaceDetectionStarted && !this.faceDetectEnabled) {
                stopFaceDetection();
            }
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setCaptureFormat(int format) {
        Logging.d(TAG, "setCaptureFormat: " + format);
        int iTranslateToAndroidFormat = VideoCapture.translateToAndroidFormat(format);
        this.mCaptureFormat = iTranslateToAndroidFormat;
        if (iTranslateToAndroidFormat != 0) {
            return 0;
        }
        Logging.e(TAG, "setCaptureFormat failed, unkonwn format: " + format);
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setEdgeEnhanceMode(int mode) {
        Logging.e(TAG, "EdgeEnhancement not supported in camera1 ");
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setExposure(float x6, float y6, boolean inPreview) {
        Logging.d(TAG, "setExposure called camera api1 x = " + x6 + " y = " + y6);
        if (this.mCamera == null) {
            return -1;
        }
        if (x6 < 0.0f || x6 > 1.0f || y6 < 0.0f || y6 > 1.0f) {
            Logging.e(TAG, "set exposure unreasonable inputs");
            return -1;
        }
        Rect rectCalculateTapArea = calculateTapArea(x6, y6, 1.5f);
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
            try {
                this.mCamera.setParameters(cameraParameters);
                this.mCamera.startPreview();
            } catch (Exception e) {
                Logging.e(TAG, "setExposure failed, " + e);
                return -1;
            }
        }
        long j6 = this.mNativeVideoCaptureDeviceAndroid;
        if (j6 == 0) {
            return 0;
        }
        NotifyCameraExposureAreaChanged(x6, y6, 0.0f, 0.0f, j6);
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setFaceDetection(boolean enable) {
        Logging.d(TAG, "setFaceDetection: " + enable);
        boolean z6 = this.faceDetectEnabled != enable;
        this.faceDetectEnabled = enable;
        if (isFaceDetectedSupported() && z6) {
            boolean z10 = this.faceDetectEnabled;
            if (z10 && !this.isFaceDetectionStarted) {
                startFaceDetection();
            } else if (!z10 && this.isFaceDetectionStarted && !this.mIsAutoFaceFocusEnabled) {
                stopFaceDetection();
            }
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setFocus(float x6, float y6, boolean inPreview) {
        Logging.d(TAG, "setFocus called camera api1");
        if (this.mCamera == null) {
            return -1;
        }
        if (x6 < 0.0f || x6 > 1.0f || y6 < 0.0f || y6 > 1.0f) {
            Logging.e(TAG, "set focus unreasonable inputs");
            return -1;
        }
        Rect rectCalculateTapArea = calculateTapArea(x6, y6, 1.0f);
        Rect rectCalculateTapArea2 = calculateTapArea(x6, y6, 1.5f);
        try {
            this.mCamera.cancelAutoFocus();
        } catch (RuntimeException e) {
            Logging.w(TAG, "Failed to cancle AutoFocus" + e);
        }
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
        try {
            this.mCamera.autoFocus(new Camera.AutoFocusCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera.4
                @Override // android.hardware.Camera.AutoFocusCallback
                public void onAutoFocus(boolean success, Camera camera) {
                    if (VideoCaptureCamera.this.mCamera == null) {
                        return;
                    }
                    Camera.Parameters parameters = camera.getParameters();
                    parameters.setFocusMode(focusMode);
                    synchronized (VideoCaptureCamera.this.mObjectLock) {
                        camera.setParameters(parameters);
                    }
                }
            });
            long j6 = this.mNativeVideoCaptureDeviceAndroid;
            if (j6 == 0) {
                return 0;
            }
            NotifyCameraFocusAreaChanged(x6, y6, 0.0f, 0.0f, j6);
            return 0;
        } catch (Exception e2) {
            Logging.w(TAG, "mCamera.autoFocus Exception: " + e2);
            return -1;
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setNoiseReductionMode(int mode) {
        Logging.e(TAG, "NoiseReduction not supported in camera1 ");
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setTorchMode(boolean isTorchOn) {
        Camera.Parameters cameraParameters;
        if (this.mCamera == null || (cameraParameters = getCameraParameters()) == null) {
            return -2;
        }
        List<String> supportedFlashModes = cameraParameters.getSupportedFlashModes();
        if (supportedFlashModes == null || !supportedFlashModes.contains("torch")) {
            return -1;
        }
        if (isTorchOn) {
            cameraParameters.setFlashMode("torch");
        } else {
            cameraParameters.setFlashMode("off");
        }
        this.mCamera.setParameters(cameraParameters);
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setVideoStabilityMode(int mode) {
        Logging.e(TAG, "VideoStability not supported in camera1 ");
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int startCapture(int width, int height, int frameRate) {
        int iTryStartCapture = -1;
        if (this.mCamera == null) {
            Logging.e(TAG, "startCapture: camera is null!!");
            return -1;
        }
        SurfaceHolder surfaceHolderGetLocalRenderer = ViERenderer.GetLocalRenderer();
        this.mLocalPreview = surfaceHolderGetLocalRenderer;
        if (surfaceHolderGetLocalRenderer != null) {
            if (surfaceHolderGetLocalRenderer.getSurface() != null && this.mLocalPreview.getSurface().isValid()) {
                surfaceCreated(this.mLocalPreview);
            }
            this.mLocalPreview.addCallback(this);
        } else {
            this.mCaptureLock.lock();
            try {
                try {
                    SurfaceTexture surfaceTexture = new SurfaceTexture(42);
                    this.mDummySurfaceTexture = surfaceTexture;
                    this.mCamera.setPreviewTexture(surfaceTexture);
                    this.mCaptureLock.unlock();
                } catch (Throwable th) {
                    this.mCaptureLock.unlock();
                    throw th;
                }
            } catch (Exception unused) {
                Logging.e(TAG, "failed to startPreview, invalid surfaceTexture!");
                this.mDummySurfaceTexture = null;
                this.mCaptureLock.unlock();
                return -1;
            }
        }
        this.mCaptureLock.lock();
        this.isCaptureStarted = true;
        this.mCaptureWidth = width;
        this.mCaptureHeight = height;
        this.mCaptureFps = frameRate;
        try {
            iTryStartCapture = tryStartCapture(width, height, frameRate);
        } catch (Throwable th2) {
            try {
                Logging.e(TAG, "try start capture failed " + th2);
            } finally {
                this.mCaptureLock.unlock();
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
                stopFaceDetection();
                this.mCamera.setFaceDetectionListener(null);
            }
        } catch (RuntimeException e) {
            Logging.e(TAG, "Failed to stop face detection", e);
        }
        try {
            this.mCamera.cancelAutoFocus();
        } catch (RuntimeException e2) {
            Logging.e(TAG, "Failed to cancle AutoFocus", e2);
        }
        try {
            this.mPreviewBufferLock.lock();
            this.isCaptureRunning = false;
            this.mCamera.stopPreview();
            this.mCamera.setErrorCallback(null);
            this.mCamera.setPreviewCallbackWithBuffer(null);
            this.mPreviewBufferLock.unlock();
            this.isCaptureStarted = false;
            return 0;
        } catch (RuntimeException e6) {
            Logging.e(TAG, "Failed to stop camera", e6);
            return -1;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder holder) {
        this.mCaptureLock.lock();
        try {
            Camera camera = this.mCamera;
            if (camera != null) {
                camera.stopPreview();
                this.mCamera.setPreviewDisplay(holder);
            }
        } catch (IOException e) {
            Logging.e(TAG, "Failed to set preview surface!", e);
        } catch (RuntimeException e2) {
            Logging.e(TAG, "Failed to stop preview!", e2);
        }
        this.mCaptureLock.unlock();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
        this.mCaptureLock.lock();
        try {
            Camera camera = this.mCamera;
            if (camera != null) {
                camera.setPreviewDisplay(null);
            }
        } catch (IOException e) {
            Logging.e(TAG, "Failed to clear preview surface!", e);
        }
        this.mCaptureLock.unlock();
    }

    VideoCaptureCamera(Context context, int id, long nativeVideoCaptureDeviceAndroid, int pqFirst) {
        super(context, id, nativeVideoCaptureDeviceAndroid, pqFirst);
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
        this.rectArray = null;
        this.distanceArray = null;
        this.faceDetectEnabled = false;
        this.mAntiBandingMode = "auto";
    }

    private static int clamp(int val, int min, int max) {
        return Math.max(min, Math.min(max, val));
    }

    static String getName(int id) {
        String str;
        Camera.CameraInfo cameraInfo = getCameraInfo(id);
        if (cameraInfo == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("camera ");
        sb.append(id);
        sb.append(", facing ");
        if (cameraInfo.facing == 1) {
            str = "front";
        } else {
            str = "back";
        }
        sb.append(str);
        return sb.toString();
    }

    static int getNumberOfCameras() {
        int numberOfCameras = Camera.getNumberOfCameras();
        Logging.e(TAG, "camera1 listCount:" + numberOfCameras);
        return numberOfCameras;
    }

    static int getSensorOrientation(int id) {
        Camera.CameraInfo cameraInfo = getCameraInfo(id);
        if (cameraInfo == null) {
            return -1;
        }
        return cameraInfo.orientation;
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
        String str = this.mAntiBandingMode;
        if (isSupported(str, parameters.getSupportedAntibanding())) {
            Logging.i(TAG, "AgoraVideo set anti-banding = " + this.mAntiBandingMode);
            parameters.setAntibanding(str);
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

    public int createCapabilities() {
        String str;
        Camera.Parameters cameraParameters = getCameraParameters();
        if (cameraParameters != null) {
            String str2 = "\"id\":" + this.mId + ",";
            List<Camera.Size> supportedPreviewSizes = cameraParameters.getSupportedPreviewSizes();
            String str3 = "";
            String str4 = "";
            for (int i10 = 0; i10 < supportedPreviewSizes.size(); i10++) {
                int i11 = supportedPreviewSizes.get(i10).width;
                int i12 = supportedPreviewSizes.get(i10).height;
                if (i11 >= 240 && i12 >= 240 && (i11 >= 320 || i12 >= 320)) {
                    String str5 = "{\"w\":" + i11 + ",\"h\":" + i12 + "}";
                    if (!str4.isEmpty()) {
                        str4 = str4 + "," + str5;
                    } else {
                        str4 = str5;
                    }
                }
            }
            List<Integer> supportedPreviewFormats = cameraParameters.getSupportedPreviewFormats();
            if (VideoCapture.isEmulator()) {
                supportedPreviewFormats.remove((Object) 842094169);
            }
            String str6 = "";
            for (int i13 = 0; i13 < supportedPreviewFormats.size(); i13++) {
                int iTranslateToEngineFormat = VideoCapture.translateToEngineFormat(supportedPreviewFormats.get(i13).intValue());
                if (i13 != supportedPreviewFormats.size() - 1) {
                    str6 = str6 + iTranslateToEngineFormat + ",";
                } else {
                    str6 = str6 + iTranslateToEngineFormat;
                }
            }
            List<Integer> supportedPreviewFrameRates = cameraParameters.getSupportedPreviewFrameRates();
            for (int i14 = 0; i14 < supportedPreviewFrameRates.size(); i14++) {
                int iIntValue = supportedPreviewFrameRates.get(i14).intValue();
                if (i14 != supportedPreviewFrameRates.size() - 1) {
                    str3 = str3 + iIntValue + ",";
                } else {
                    str3 = str3 + iIntValue;
                }
            }
            str = "{" + str2 + "\"resolution\":[" + str4 + "],\"format\":[" + str6 + "],\"fps\":[" + str3 + "]}";
        } else {
            str = null;
        }
        VideoCapture.cacheCapability(this.mId, this.mContext, str, getCaptureName());
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setAntiBandingMode(int mode) {
        Camera.Parameters parameters;
        this.mAntiBandingMode = toCamera1ABMode(mode);
        Camera camera = this.mCamera;
        if (camera == null || (parameters = camera.getParameters()) == null) {
            return -1;
        }
        String str = this.mAntiBandingMode;
        if (isSupported(str, parameters.getSupportedAntibanding())) {
            Logging.i(TAG, "AgoraVideo set anti-banding = " + str);
            parameters.setAntibanding(str);
            try {
                this.mCamera.setParameters(parameters);
                return 0;
            } catch (Exception e) {
                Logging.e(TAG, "anti banding got exception:" + e);
                return 0;
            }
        }
        Logging.i(TAG, "not supported anti-banding = " + str);
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setExposureCompensation(int value) {
        setExposureCompensation_l(value);
        return 0;
    }
}
