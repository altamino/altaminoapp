package io.agora.rtc.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.Face;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.Size;
import com.narvii.scene.poll.ScenePollPlayView;
import io.agora.rtc.internal.Logging;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

@TargetApi(21)
/* loaded from: classes4.dex */
public class VideoCaptureCamera2 extends VideoCapture {
    private static final boolean DEBUG = false;
    private static final float DEFAULT_VALUE = -1.0f;
    private static final String TAG = "CAMERA2";
    private static final MeteringRectangle[] ZERO_WEIGHT_3A_REGION = {new MeteringRectangle(0, 0, 0, 0, 0)};
    private static final float ZOOM_UNSUPPORTED_DEFAULT_VALUE = 1.0f;
    private static final double kNanoSecondsToFps = 1.0E-9d;
    private MeteringRectangle[] mAFAERegions;
    private CameraCaptureSession.CaptureCallback mAfCaptureCallback;
    public CameraManager.AvailabilityCallback mAvailabilityCallback;
    private CameraDevice mCameraDevice;
    private CameraState mCameraState;
    private final Object mCameraStateLock;
    private final CameraCaptureSession.CaptureCallback mCaptureCallback;
    private byte[] mCaptureData;
    private int mCaptureFormat;
    private int mCaptureFps;
    private int mCaptureHeight;
    private CameraCaptureSession mCaptureSession;
    private int mCaptureWidth;
    private float mCurZoomRatio;
    private int mExpectedFrameSize;
    private int mFaceDetectMode;
    private boolean mFaceDetectSupported;
    private ImageReader mImageReader;
    private boolean mIsAutoFaceFocusEnabled;
    private float mLastZoomRatio;
    private Handler mMainHandler;
    private CameraManager mManager;
    private float mMaxZoom;
    private CaptureRequest.Builder mPreviewBuilder;
    private HandlerThread mPreviewThread;
    private Rect mSensorRect;

    private enum CameraState {
        OPENING,
        STARTED,
        EVICTED,
        STOPPED
    }

    private static CameraCharacteristics getCameraCharacteristics(Context context, int i) {
        try {
            return ((CameraManager) context.getSystemService("camera")).getCameraCharacteristics(Integer.toString(i));
        } catch (CameraAccessException e) {
            Logging.i(TAG, "getNumberOfCameras: getCameraIdList(): " + e);
            return null;
        } catch (Exception e2) {
            Logging.i(TAG, "getNumberOfCameras: got exception: " + e2);
            return null;
        }
    }

    static boolean isLegacyDevice(Context context, int i) {
        try {
            CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(context, i);
            if (cameraCharacteristics != null) {
                if (((Integer) cameraCharacteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)).intValue() == 2) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            Logging.w(TAG, "this is a legacy camera device");
            return true;
        }
    }

    static int getNumberOfCameras(Context context) {
        try {
            return ((CameraManager) context.getSystemService("camera")).getCameraIdList().length;
        } catch (Exception e) {
            Logging.e(TAG, "getNumberOfCameras: getCameraIdList(): ", e);
            return 0;
        }
    }

    static String getName(int i, Context context) {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(context, i);
        if (cameraCharacteristics == null) {
            return null;
        }
        int iIntValue = ((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue();
        StringBuilder sb = new StringBuilder();
        sb.append("camera2 ");
        sb.append(i);
        sb.append(", facing ");
        sb.append(iIntValue == 0 ? "front" : "back");
        return sb.toString();
    }

    static int getSensorOrientation(int i, Context context) {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(context, i);
        if (cameraCharacteristics == null) {
            return -1;
        }
        return ((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
    }

    VideoCaptureCamera2(Context context, int i, long j) {
        super(context, i, j);
        this.mCameraDevice = null;
        this.mPreviewBuilder = null;
        this.mCaptureSession = null;
        this.mImageReader = null;
        this.mCameraState = CameraState.STOPPED;
        this.mManager = null;
        this.mMainHandler = new Handler(this.mContext.getMainLooper());
        this.mPreviewThread = null;
        this.mCameraStateLock = new Object();
        this.mExpectedFrameSize = 0;
        this.mCaptureWidth = -1;
        this.mCaptureHeight = -1;
        this.mCaptureFps = -1;
        this.mCaptureFormat = 35;
        this.mIsAutoFaceFocusEnabled = false;
        this.mAFAERegions = ZERO_WEIGHT_3A_REGION;
        this.mLastZoomRatio = DEFAULT_VALUE;
        this.mCurZoomRatio = 1.0f;
        this.mMaxZoom = DEFAULT_VALUE;
        this.mSensorRect = null;
        this.mAvailabilityCallback = new CameraManager.AvailabilityCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera2.1
            @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
            public synchronized void onCameraAvailable(String str) {
                super.onCameraAvailable(str);
                if (VideoCaptureCamera2.this.mCameraState == CameraState.EVICTED && VideoCaptureCamera2.this.tryOpenCamera() != 0) {
                    Logging.e(VideoCaptureCamera2.TAG, "start capture failed");
                }
            }

            @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
            public synchronized void onCameraUnavailable(String str) {
                super.onCameraUnavailable(str);
                Logging.e(VideoCaptureCamera2.TAG, "Camera " + str + " unavailable");
            }
        };
        this.mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera2.2
            private long mLastFocusedTs;

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
            }

            private void notifyCameraFocusAreaChanged(Rect rect, Rect rect2) {
                Rect rectSensorToNormalizedPreview = CoordinatesTransform.sensorToNormalizedPreview(rect2, VideoCaptureCamera2.this.mCaptureWidth, VideoCaptureCamera2.this.mCaptureHeight, rect);
                Logging.d(VideoCaptureCamera2.TAG, "face bound = " + rect2.toString());
                Logging.d(VideoCaptureCamera2.TAG, "rect (-1000, 1000) = " + rectSensorToNormalizedPreview.toString());
                boolean z = VideoCaptureCamera2.this.mId == 1;
                RectF rectFNormalizedFaceRect = CoordinatesTransform.normalizedFaceRect(rectSensorToNormalizedPreview, 0, z);
                Logging.d(VideoCaptureCamera2.TAG, "preview size width = " + VideoCaptureCamera2.this.mCaptureWidth + " height = " + VideoCaptureCamera2.this.mCaptureHeight);
                Logging.d(VideoCaptureCamera2.TAG, "auto face focus left =" + rectFNormalizedFaceRect.left + " top = " + rectFNormalizedFaceRect.top + " right = " + rectFNormalizedFaceRect.right + " bottom = " + rectFNormalizedFaceRect.bottom + "isMirror =" + z);
                float f = rectFNormalizedFaceRect.left;
                float f2 = rectFNormalizedFaceRect.top;
                float fWidth = rectFNormalizedFaceRect.width();
                float fHeight = rectFNormalizedFaceRect.height();
                VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                long j2 = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
                if (j2 != 0) {
                    videoCaptureCamera2.NotifyCameraFocusAreaChanged(f, f2, fWidth, fHeight, j2);
                }
            }

            private void process(CaptureResult captureResult) throws CameraAccessException {
                Face[] faceArr = (Face[]) captureResult.get(CaptureResult.STATISTICS_FACES);
                if (faceArr == null || faceArr.length <= 0) {
                    VideoCaptureCamera2.this.mAFAERegions = VideoCaptureCamera2.ZERO_WEIGHT_3A_REGION;
                    return;
                }
                if (System.currentTimeMillis() - this.mLastFocusedTs < ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS) {
                    if (faceArr[0].getScore() > 20) {
                        notifyCameraFocusAreaChanged((Rect) captureResult.get(CaptureResult.SCALER_CROP_REGION), faceArr[0].getBounds());
                        return;
                    }
                    return;
                }
                if (faceArr[0].getScore() <= 50) {
                    return;
                }
                VideoCaptureCamera2.this.mAFAERegions = new MeteringRectangle[]{new MeteringRectangle(faceArr[0].getBounds(), 1000)};
                VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                videoCaptureCamera2.addRegionsToCaptureRequestBuilder(videoCaptureCamera2.mPreviewBuilder);
                if (VideoCaptureCamera2.this.mCameraState != CameraState.STARTED) {
                    return;
                }
                try {
                    Rect rect = (Rect) captureResult.get(CaptureResult.SCALER_CROP_REGION);
                    Logging.d(VideoCaptureCamera2.TAG, "cropRegion = " + rect.toString());
                    Logging.d(VideoCaptureCamera2.TAG, "capture size wxh = " + VideoCaptureCamera2.this.mCaptureWidth + " x " + VideoCaptureCamera2.this.mCaptureHeight);
                    notifyCameraFocusAreaChanged(rect, faceArr[0].getBounds());
                    VideoCaptureCamera2.this.mCaptureSession.capture(VideoCaptureCamera2.this.mPreviewBuilder.build(), VideoCaptureCamera2.this.mCaptureCallback, null);
                    VideoCaptureCamera2.this.createCaptureRequest();
                    this.mLastFocusedTs = System.currentTimeMillis();
                } catch (Exception e) {
                    Logging.e(VideoCaptureCamera2.TAG, "capture: " + e);
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) throws CameraAccessException {
                if (VideoCaptureCamera2.this.mIsAutoFaceFocusEnabled && VideoCaptureCamera2.this.isAutoFaceFocusSupported()) {
                    process(totalCaptureResult);
                }
            }
        };
        this.mAfCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera2.3
            private void process(CaptureResult captureResult) throws CameraAccessException {
                Integer num = (Integer) captureResult.get(CaptureResult.CONTROL_AF_STATE);
                if (num == null) {
                    return;
                }
                if (4 == num.intValue() || 5 == num.intValue()) {
                    VideoCaptureCamera2.this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
                    VideoCaptureCamera2.this.startNormalPreview();
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) throws CameraAccessException {
                process(captureResult);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) throws CameraAccessException {
                process(totalCaptureResult);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startNormalPreview() throws CameraAccessException {
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_MODE, 1);
        try {
            this.mCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, new Handler(this.mPreviewThread.getLooper()));
        } catch (CameraAccessException e) {
            Logging.e(TAG, "setRepeatingRequest failed, error message : " + e.getMessage());
        }
    }

    private class CrStateListener extends CameraDevice.StateCallback {
        private CrStateListener() {
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) throws CameraAccessException {
            VideoCaptureCamera2.this.mCameraDevice = cameraDevice;
            if (VideoCaptureCamera2.this.doStartCapture() < 0) {
                VideoCaptureCamera2.this.doStopCapture();
                if (VideoCaptureCamera2.this.mCameraState != CameraState.EVICTED) {
                    VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STOPPED);
                }
                Logging.e(VideoCaptureCamera2.TAG, "Camera startCapture failed!!");
                VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                long j = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
                if (j != 0) {
                    videoCaptureCamera2.onCameraError(j, "Error configuring camera");
                }
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            if (VideoCaptureCamera2.this.mCameraState != CameraState.STOPPED) {
                Logging.w(VideoCaptureCamera2.TAG, "camera client is evicted by other application");
                VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                long j = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
                if (j != 0) {
                    videoCaptureCamera2.onCameraError(j, "Camera device evicted by other application");
                }
                Logging.i(VideoCaptureCamera2.TAG, "Camera device enter state: EVICTED");
                if (VideoCaptureCamera2.this.mCameraDevice != null) {
                    VideoCaptureCamera2.this.mCameraDevice.close();
                    VideoCaptureCamera2.this.mCameraDevice = null;
                }
                VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.EVICTED);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            if (VideoCaptureCamera2.this.mCameraState == CameraState.EVICTED) {
                return;
            }
            if (VideoCaptureCamera2.this.mCameraDevice != null) {
                VideoCaptureCamera2.this.mCameraDevice.close();
                VideoCaptureCamera2.this.mCameraDevice = null;
            }
            VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STOPPED);
            Logging.e(VideoCaptureCamera2.TAG, "CameraDevice Error :" + Integer.toString(i));
            VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
            long j = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
            if (j != 0) {
                videoCaptureCamera2.onCameraError(j, "Camera device error" + Integer.toString(i));
            }
        }
    }

    private class CaptureSessionListener extends CameraCaptureSession.StateCallback {
        private CaptureSessionListener() {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            VideoCaptureCamera2.this.mCaptureSession = cameraCaptureSession;
            if (VideoCaptureCamera2.this.createCaptureRequest() != 0) {
                VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STOPPED);
                VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                long j = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
                if (j != 0) {
                    videoCaptureCamera2.onCameraError(j, "Fail to setup capture session");
                    return;
                }
                return;
            }
            VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STARTED);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            Logging.e(VideoCaptureCamera2.TAG, "onConfigureFailed");
            if (VideoCaptureCamera2.this.mCameraState != CameraState.EVICTED) {
                VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STOPPED);
            }
            VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
            long j = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
            if (j != 0) {
                videoCaptureCamera2.onCameraError(j, "Camera session configuration error");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeCameraStateAndNotify(CameraState cameraState) {
        synchronized (this.mCameraStateLock) {
            this.mCameraState = cameraState;
            this.mCameraStateLock.notifyAll();
        }
    }

    private class ImageReaderListener implements ImageReader.OnImageAvailableListener {
        private ImageReaderListener() {
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            Image image = null;
            try {
                try {
                    synchronized (VideoCaptureCamera2.this.mCameraStateLock) {
                        if (VideoCaptureCamera2.this.mCameraState == CameraState.STARTED && imageReader != null) {
                            Image imageAcquireLatestImage = imageReader.acquireLatestImage();
                            if (imageAcquireLatestImage == null) {
                                if (imageAcquireLatestImage != null) {
                                    imageAcquireLatestImage.close();
                                    return;
                                }
                                return;
                            }
                            if (imageAcquireLatestImage.getFormat() == 35 && imageAcquireLatestImage.getPlanes().length == 3) {
                                if (imageReader.getWidth() == imageAcquireLatestImage.getWidth() && imageReader.getHeight() == imageAcquireLatestImage.getHeight()) {
                                    VideoCaptureCamera2.readImageIntoBuffer(imageAcquireLatestImage, VideoCaptureCamera2.this.mCaptureData);
                                    if (VideoCaptureCamera2.this.mNativeVideoCaptureDeviceAndroid != 0) {
                                        VideoCaptureCamera2.this.ProvideCameraFrame(VideoCaptureCamera2.this.mCaptureData, VideoCaptureCamera2.this.mExpectedFrameSize, VideoCaptureCamera2.this.mNativeVideoCaptureDeviceAndroid);
                                    } else {
                                        Logging.w(VideoCaptureCamera2.TAG, "warning mNativeVideoCaptureDeviceAndroid = 0, error");
                                    }
                                    if (imageAcquireLatestImage != null) {
                                        imageAcquireLatestImage.close();
                                        return;
                                    }
                                    return;
                                }
                                throw new IllegalStateException("ImageReader size " + imageReader.getWidth() + "x" + imageReader.getHeight() + " did not match Image size: " + imageAcquireLatestImage.getWidth() + "x" + imageAcquireLatestImage.getHeight());
                            }
                            Logging.e(VideoCaptureCamera2.TAG, "Unexpected image format: " + imageAcquireLatestImage.getFormat() + "or #planes:" + imageAcquireLatestImage.getPlanes().length);
                            if (imageAcquireLatestImage != null) {
                                imageAcquireLatestImage.close();
                            }
                        }
                    }
                } catch (IllegalStateException e) {
                    Logging.e(VideoCaptureCamera2.TAG, "acquireLastest Image():", e);
                    if (0 != 0) {
                        image.close();
                    }
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    image.close();
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int createCaptureRequest() throws CameraAccessException {
        try {
            this.mCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, null);
            return 0;
        } catch (CameraAccessException e) {
            Logging.e(TAG, "setRepeatingRequest: ", e);
            return -1;
        } catch (IllegalArgumentException e2) {
            Logging.e(TAG, "setRepeatingRequest: ", e2);
            return -2;
        } catch (IllegalStateException e3) {
            Logging.e(TAG, "capture:" + e3);
            return -4;
        } catch (SecurityException e4) {
            Logging.e(TAG, "setRepeatingRequest: ", e4);
            return -3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readImageIntoBuffer(Image image, byte[] bArr) {
        int width = image.getWidth();
        int height = image.getHeight();
        Image.Plane[] planes = image.getPlanes();
        int i = 0;
        int i2 = 0;
        while (i < planes.length) {
            ByteBuffer buffer = planes[i].getBuffer();
            if (buffer == null) {
                Logging.e(TAG, "plane " + i + " buffer is null ");
                return;
            }
            int rowStride = planes[i].getRowStride();
            int pixelStride = planes[i].getPixelStride();
            int i3 = i == 0 ? width : width / 2;
            int i4 = i == 0 ? height : height / 2;
            if (pixelStride == 1 && rowStride == i3) {
                int i5 = i3 * i4;
                buffer.get(bArr, i2, i5);
                i2 += i5;
            } else {
                byte[] bArr2 = new byte[rowStride];
                int i6 = i2;
                int i7 = 0;
                while (i7 < i4 - 1) {
                    buffer.get(bArr2, 0, rowStride);
                    int i8 = i6;
                    int i9 = 0;
                    while (i9 < i3) {
                        bArr[i8] = bArr2[i9 * pixelStride];
                        i9++;
                        i8++;
                    }
                    i7++;
                    i6 = i8;
                }
                buffer.get(bArr2, 0, Math.min(rowStride, buffer.remaining()));
                int i10 = 0;
                while (i10 < i3) {
                    bArr[i6] = bArr2[i10 * pixelStride];
                    i10++;
                    i6++;
                }
                i2 = i6;
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int tryOpenCamera() throws CameraAccessException {
        try {
            this.mManager.openCamera(Integer.toString(this.mId), new CrStateListener(), this.mMainHandler);
            return 0;
        } catch (CameraAccessException e) {
            Logging.e(TAG, "allocate: manager.openCamera: ", e);
            return -1;
        } catch (IllegalArgumentException e2) {
            Logging.e(TAG, "allocate: manager.openCamera: ", e2);
            return -2;
        } catch (SecurityException e3) {
            Logging.e(TAG, "allocate: manager.openCamera: ", e3);
            return -3;
        } catch (Exception e4) {
            Logging.e(TAG, "unknown error", e4);
            return -4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRegionsToCaptureRequestBuilder(CaptureRequest.Builder builder) {
        builder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
        builder.set(CaptureRequest.CONTROL_AE_REGIONS, this.mAFAERegions);
        builder.set(CaptureRequest.CONTROL_AF_REGIONS, this.mAFAERegions);
        builder.set(CaptureRequest.CONTROL_AF_MODE, 1);
        builder.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
        builder.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doStartCapture() throws CameraAccessException {
        this.mExpectedFrameSize = ((this.mCaptureWidth * this.mCaptureHeight) * ImageFormat.getBitsPerPixel(this.mCaptureFormat)) / 8;
        this.mCaptureData = new byte[this.mExpectedFrameSize];
        this.mImageReader = ImageReader.newInstance(this.mCaptureWidth, this.mCaptureHeight, this.mCaptureFormat, 2);
        if (this.mPreviewThread == null) {
            this.mPreviewThread = new HandlerThread("CameraPreview");
            this.mPreviewThread.start();
        }
        Handler handler = new Handler(this.mPreviewThread.getLooper());
        this.mImageReader.setOnImageAvailableListener(new ImageReaderListener(), handler);
        try {
            this.mPreviewBuilder = this.mCameraDevice.createCaptureRequest(1);
            CaptureRequest.Builder builder = this.mPreviewBuilder;
            if (builder == null) {
                Logging.e(TAG, "mPreviewBuilder error");
                return -4;
            }
            builder.addTarget(this.mImageReader.getSurface());
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_MODE, 1);
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_MODE, 1);
            setFaceDetect(this.mPreviewBuilder, this.mFaceDetectMode);
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(this.mImageReader.getSurface());
            try {
                this.mCameraDevice.createCaptureSession(arrayList, new CaptureSessionListener(), null);
                return 0;
            } catch (CameraAccessException e) {
                Logging.e(TAG, "createCaptureSession :", e);
                return -1;
            } catch (IllegalArgumentException e2) {
                Logging.e(TAG, "createCaptureSession :", e2);
                return -2;
            } catch (SecurityException e3) {
                Logging.e(TAG, "createCaptureSession :", e3);
                return -3;
            }
        } catch (CameraAccessException e4) {
            Logging.e(TAG, "createCaptureRequest: ", e4);
            return -1;
        } catch (IllegalArgumentException e5) {
            Logging.e(TAG, "createCaptureRequest: ", e5);
            return -2;
        } catch (SecurityException e6) {
            Logging.e(TAG, "createCaptureRequest ", e6);
            return -3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doStopCapture() throws CameraAccessException {
        HandlerThread handlerThread = this.mPreviewThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.mPreviewThread = null;
        }
        CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
        if (cameraCaptureSession != null) {
            try {
                cameraCaptureSession.abortCaptures();
                this.mCaptureSession = null;
            } catch (CameraAccessException e) {
                Logging.e(TAG, "abortCaptures: ", e);
                return -1;
            } catch (IllegalStateException e2) {
                Logging.e(TAG, "abortCaptures: ", e2);
                return -1;
            }
        }
        ImageReader imageReader = this.mImageReader;
        if (imageReader != null) {
            imageReader.setOnImageAvailableListener(null, null);
            this.mImageReader.close();
            this.mImageReader = null;
        }
        CameraDevice cameraDevice = this.mCameraDevice;
        if (cameraDevice == null) {
            return 0;
        }
        cameraDevice.close();
        this.mCameraDevice = null;
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int UnRegisterNativeHandle() {
        this.mNativeVideoCaptureDeviceAndroid = 0L;
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int allocate() {
        synchronized (this.mCameraStateLock) {
            if (this.mCameraState == CameraState.OPENING) {
                Logging.e(TAG, "allocate() invoked while Camera is busy opening/configuring");
                return -1;
            }
            CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
            if (cameraCharacteristics == null) {
                return -1;
            }
            if (VideoCapture.fetchCapability(this.mId, this.mContext) == null) {
                createCapabilities(this.mId, this.mContext);
            }
            long j = this.mNativeVideoCaptureDeviceAndroid;
            if (j != 0) {
                this.mIsAutoFaceFocusEnabled = isAutoFaceFocusEnabled(j);
            }
            this.mCameraNativeOrientation = ((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
            this.mManager = (CameraManager) this.mContext.getSystemService("camera");
            int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES);
            int iIntValue = ((Integer) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT)).intValue();
            if (iArr.length > 1 && iIntValue > 0) {
                this.mFaceDetectSupported = true;
                int i = 0;
                for (int i2 : iArr) {
                    i += i2;
                }
                if (i % 2 != 0) {
                    this.mFaceDetectMode = 1;
                } else {
                    this.mFaceDetectMode = 2;
                }
            }
            Logging.i(TAG, "allocate() face detection: " + this.mFaceDetectMode + " " + iIntValue + " " + this.mFaceDetectSupported);
            this.mManager.registerAvailabilityCallback(this.mAvailabilityCallback, this.mMainHandler);
            return 0;
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setCaptureFormat(int i) {
        if (VideoCapture.translateToAndroidFormat(i) == this.mCaptureFormat) {
            return 0;
        }
        Logging.e(TAG, "For camera2 api, only YUV_420_888 format are supported");
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int startCapture(int i, int i2, int i3) throws CameraAccessException {
        Logging.d(TAG, "startCapture, w=" + i + ", h=" + i2 + ", fps=" + i3);
        this.mCaptureWidth = i;
        this.mCaptureHeight = i2;
        this.mCaptureFps = i3;
        synchronized (this.mCameraStateLock) {
            while (this.mCameraState != CameraState.STARTED && this.mCameraState != CameraState.EVICTED && this.mCameraState != CameraState.STOPPED) {
                try {
                    this.mCameraStateLock.wait();
                } catch (InterruptedException e) {
                    Logging.e(TAG, "CaptureStartedEvent: ", e);
                }
            }
            if (this.mCameraState == CameraState.STARTED) {
                return 0;
            }
            changeCameraStateAndNotify(CameraState.OPENING);
            int iTryOpenCamera = tryOpenCamera();
            if (iTryOpenCamera != 0) {
                changeCameraStateAndNotify(CameraState.STOPPED);
            }
            return iTryOpenCamera;
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int stopCapture() {
        synchronized (this.mCameraStateLock) {
            while (this.mCameraState != CameraState.STARTED && this.mCameraState != CameraState.EVICTED && this.mCameraState != CameraState.STOPPED) {
                try {
                    this.mCameraStateLock.wait();
                } catch (InterruptedException e) {
                    Logging.e(TAG, "CaptureStartedEvent: ", e);
                }
            }
            if (this.mCameraState == CameraState.EVICTED) {
                this.mCameraState = CameraState.STOPPED;
            }
            if (this.mCameraState == CameraState.STOPPED) {
                return 0;
            }
            doStopCapture();
            this.mCameraState = CameraState.STOPPED;
            this.mCameraStateLock.notifyAll();
            return 0;
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isTorchSupported() {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            Logging.w(TAG, "warning cameraCharacteristics is null");
            return false;
        }
        Boolean bool = (Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isFocusSupported() {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            Logging.w(TAG, "warning cameraCharacteristics is null");
            return false;
        }
        int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
        if (iArr != null) {
            for (int i = 0; i < iArr.length; i++) {
                if (1 == i) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isExposureSupported() {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            Logging.w(TAG, "warning cameraCharacteristics is null");
            return false;
        }
        int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
        if (iArr != null) {
            for (int i = 0; i < iArr.length; i++) {
                Logging.d(TAG, "isExposureSupported AE mode = " + iArr[i]);
                if (1 == i) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isZoomSupported() {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics != null) {
            return ((Float) cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue() > 1.0f;
        }
        Logging.w(TAG, "warning cameraCharacteristics is null");
        return false;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isAutoFaceFocusSupported() {
        if (!isFocusSupported()) {
            return false;
        }
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics != null) {
            return ((Integer) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT)).intValue() > 0;
        }
        Logging.w(TAG, "warning cameraCharacteristics is null");
        return false;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setZoom(float f) throws CameraAccessException {
        Log.d("zoom", "setCameraZoom api2 called zoomValue =" + f);
        if (this.mPreviewBuilder == null) {
            Logging.d(TAG, "setZoom mPreviewBuilder is null");
            return -1;
        }
        if (this.mSensorRect == null) {
            CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
            if (cameraCharacteristics == null) {
                Logging.w(TAG, "warning cameraCharacteristics is null");
                return -1;
            }
            this.mSensorRect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
            this.mMaxZoom = ((Float) cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue();
        }
        if (Math.abs(this.mMaxZoom - 1.0f) < 0.001f) {
            Logging.w(TAG, "Camera " + this.mId + " does not support camera zoom");
            return -1;
        }
        this.mCurZoomRatio = f;
        float f2 = this.mCurZoomRatio;
        if (!(f2 > 1.0f && f2 <= this.mMaxZoom && f2 != this.mLastZoomRatio)) {
            return -2;
        }
        this.mPreviewBuilder.set(CaptureRequest.SCALER_CROP_REGION, cropRegionForZoom(this.mCurZoomRatio));
        this.mLastZoomRatio = this.mCurZoomRatio;
        HandlerThread handlerThread = this.mPreviewThread;
        if (handlerThread != null) {
            Handler handler = new Handler(handlerThread.getLooper());
            CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
            if (cameraCaptureSession != null) {
                try {
                    cameraCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, handler);
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                    return -3;
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                    return -4;
                }
            }
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public float getMaxZoom() {
        if (this.mMaxZoom <= 0.0f) {
            CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
            if (cameraCharacteristics == null) {
                Logging.w(TAG, "warning cameraCharacteristics is null");
                return DEFAULT_VALUE;
            }
            this.mMaxZoom = ((Float) cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue();
        }
        return this.mMaxZoom;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setTorchMode(boolean z) throws CameraAccessException {
        Log.d("flash", "setFlashMode isTorchOn " + z);
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            Logging.w(TAG, "warning cameraCharacteristics is null");
            return -1;
        }
        Boolean bool = (Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
        if (bool == null ? false : bool.booleanValue()) {
            HandlerThread handlerThread = this.mPreviewThread;
            if (handlerThread != null && this.mPreviewBuilder != null) {
                Handler handler = new Handler(handlerThread.getLooper());
                if (z) {
                    this.mPreviewBuilder.set(CaptureRequest.FLASH_MODE, 2);
                } else {
                    this.mPreviewBuilder.set(CaptureRequest.FLASH_MODE, 0);
                }
                CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
                if (cameraCaptureSession != null) {
                    try {
                        cameraCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), null, handler);
                        return 0;
                    } catch (CameraAccessException e) {
                        e.printStackTrace();
                    } catch (IllegalStateException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        } else {
            Logging.w(TAG, "flash is not supported");
        }
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setFocus(float f, float f2, boolean z) throws CameraAccessException {
        int i;
        int i2;
        if (f < 0.0f || f > 1.0f || f2 < 0.0f || f2 > 1.0f) {
            Logging.e(TAG, "set focus unreasonable inputs");
            return -1;
        }
        CaptureRequest.Builder builder = this.mPreviewBuilder;
        if (builder == null) {
            Logging.d(TAG, "setFocus mPreviewBuilder is null");
            return -1;
        }
        double d = f;
        double d2 = f2;
        Rect rect = (Rect) builder.get(CaptureRequest.SCALER_CROP_REGION);
        if (rect == null) {
            return -1;
        }
        int iWidth = rect.width();
        int iHeight = rect.height();
        Log.d("test", "crop width = " + iWidth + " crop height = " + iHeight + " capture width = " + this.mCaptureWidth + " capture height = " + this.mCaptureHeight);
        int i3 = this.mCaptureHeight;
        int i4 = iWidth * i3;
        int i5 = this.mCaptureWidth;
        if (i4 > iHeight * i5) {
            double d3 = (iWidth - r12) / 2.0f;
            double d4 = (i5 * iHeight) / i3;
            Double.isNaN(d);
            Double.isNaN(d4);
            Double.isNaN(d3);
            i = (int) (d3 + (d * d4));
            double d5 = iHeight;
            Double.isNaN(d2);
            Double.isNaN(d5);
            i2 = (int) (d2 * d5);
        } else {
            double d6 = iWidth;
            Double.isNaN(d);
            Double.isNaN(d6);
            i = (int) (d * d6);
            double d7 = (iHeight - r7) / 2.0f;
            double d8 = (i3 * iWidth) / i5;
            Double.isNaN(d2);
            Double.isNaN(d8);
            Double.isNaN(d7);
            i2 = (int) (d7 + (d2 * d8));
        }
        Rect rect2 = new Rect();
        double d9 = i;
        double d10 = iWidth;
        Double.isNaN(d10);
        double d11 = d10 * 0.05d;
        Double.isNaN(d9);
        rect2.left = clamp((int) (d9 - d11), 0, iWidth);
        Double.isNaN(d9);
        rect2.right = clamp((int) (d9 + d11), 0, iWidth);
        double d12 = i2;
        double d13 = iHeight;
        Double.isNaN(d13);
        double d14 = 0.05d * d13;
        Double.isNaN(d12);
        rect2.top = clamp((int) (d12 - d14), 0, iHeight);
        Double.isNaN(d12);
        rect2.bottom = clamp((int) (d12 + d14), 0, iHeight);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_REGIONS, new MeteringRectangle[]{new MeteringRectangle(rect2, 1000)});
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_REGIONS, new MeteringRectangle[]{new MeteringRectangle(rect2, 1000)});
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 1);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
        HandlerThread handlerThread = this.mPreviewThread;
        if (handlerThread != null) {
            Handler handler = new Handler(handlerThread.getLooper());
            CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
            if (cameraCaptureSession != null) {
                try {
                    cameraCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mAfCaptureCallback, handler);
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                    return -1;
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                    return -1;
                }
            }
            long j = this.mNativeVideoCaptureDeviceAndroid;
            if (j != 0) {
                NotifyCameraFocusAreaChanged(f, f2, 0.0f, 0.0f, j);
            }
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setExposure(float f, float f2, boolean z) throws CameraAccessException {
        int i;
        int i2;
        Logging.d(TAG, "setExposure called camera api2");
        if (f < 0.0f || f > 1.0f || f2 < 0.0f || f2 > 1.0f) {
            Logging.e(TAG, "set exposure unreasonable inputs");
            return -1;
        }
        CaptureRequest.Builder builder = this.mPreviewBuilder;
        if (builder == null) {
            Logging.d(TAG, "setExposure mPreviewBuilder is null");
            return -1;
        }
        double d = f;
        double d2 = f2;
        Rect rect = (Rect) builder.get(CaptureRequest.SCALER_CROP_REGION);
        if (rect == null) {
            return -1;
        }
        int iWidth = rect.width();
        int iHeight = rect.height();
        Logging.d(TAG, "crop width = " + iWidth + " crop height = " + iHeight + " capture width = " + this.mCaptureWidth + " capture height = " + this.mCaptureHeight);
        int i3 = this.mCaptureHeight;
        int i4 = iWidth * i3;
        int i5 = this.mCaptureWidth;
        if (i4 > iHeight * i5) {
            double d3 = (iWidth - r12) / 2.0f;
            double d4 = (i5 * iHeight) / i3;
            Double.isNaN(d);
            Double.isNaN(d4);
            Double.isNaN(d3);
            i2 = (int) (d3 + (d * d4));
            double d5 = iHeight;
            Double.isNaN(d2);
            Double.isNaN(d5);
            i = (int) (d2 * d5);
        } else {
            double d6 = iWidth;
            Double.isNaN(d);
            Double.isNaN(d6);
            int i6 = (int) (d * d6);
            double d7 = (iHeight - r1) / 2.0f;
            double d8 = (i3 * iWidth) / i5;
            Double.isNaN(d2);
            Double.isNaN(d8);
            Double.isNaN(d7);
            i = (int) (d7 + (d2 * d8));
            i2 = i6;
        }
        Rect rect2 = new Rect();
        double d9 = i2;
        double d10 = iWidth;
        Double.isNaN(d10);
        double d11 = d10 * 0.05d;
        Double.isNaN(d9);
        rect2.left = clamp((int) (d9 - d11), 0, iWidth);
        Double.isNaN(d9);
        rect2.right = clamp((int) (d9 + d11), 0, iWidth);
        double d12 = i;
        double d13 = iHeight;
        Double.isNaN(d13);
        double d14 = d13 * 0.05d;
        Double.isNaN(d12);
        rect2.top = clamp((int) (d12 - d14), 0, iHeight);
        Double.isNaN(d12);
        rect2.bottom = clamp((int) (d12 + d14), 0, iHeight);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_REGIONS, new MeteringRectangle[]{new MeteringRectangle(rect2, 1000)});
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
        CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
        if (cameraCaptureSession != null) {
            try {
                cameraCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), null, null);
            } catch (CameraAccessException e) {
                e.printStackTrace();
                return -1;
            } catch (IllegalStateException e2) {
                e2.printStackTrace();
                return -1;
            }
        }
        long j = this.mNativeVideoCaptureDeviceAndroid;
        if (j != 0) {
            NotifyCameraExposureAreaChanged(f, f2, 0.0f, 0.0f, j);
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setAutoFaceFocus(boolean z) {
        this.mIsAutoFaceFocusEnabled = z;
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public void deallocate() {
        CameraManager cameraManager = this.mManager;
        if (cameraManager != null) {
            cameraManager.unregisterAvailabilityCallback(this.mAvailabilityCallback);
        }
    }

    private void setFaceDetect(CaptureRequest.Builder builder, int i) {
        if (this.mFaceDetectSupported) {
            builder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, Integer.valueOf(i));
        }
    }

    public static int createCapabilities(int i, Context context) {
        ArrayList arrayList;
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(context, i);
        if (cameraCharacteristics == null) {
            return -1;
        }
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            Logging.e(TAG, "Failed to create capabilities");
            return -1;
        }
        try {
            Logging.i(TAG, "dump configuration map:" + streamConfigurationMap.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        ArrayList arrayList2 = new ArrayList(Arrays.asList(streamConfigurationMap.getOutputSizes(35)));
        if ("SM-G9300".equals(Build.MODEL)) {
            arrayList = new ArrayList();
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                if (((Size) arrayList2.get(i2)).getHeight() >= 720) {
                    arrayList.add(arrayList2.get(i2));
                }
            }
        } else {
            arrayList = arrayList2;
        }
        String str = "\"id\":" + i + ",";
        String str2 = "";
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            String str3 = "{\"w\":" + ((Size) arrayList.get(i3)).getWidth() + ",\"h\":" + ((Size) arrayList.get(i3)).getHeight() + "}";
            str2 = i3 != arrayList.size() - 1 ? str2 + str3 + "," : str2 + str3;
        }
        VideoCapture.cacheCapability(i, context, "{" + str + "\"resolution\":[" + str2 + "],\"format\":[" + ("" + VideoCapture.translateToEngineFormat(35)) + "],\"fps\":[30]}");
        return 0;
    }

    private Rect cropRegionForZoom(float f) {
        int iWidth = this.mSensorRect.width() / 2;
        int iHeight = this.mSensorRect.height() / 2;
        int iWidth2 = (int) ((this.mSensorRect.width() * 0.5f) / f);
        int iHeight2 = (int) ((this.mSensorRect.height() * 0.5f) / f);
        return new Rect(iWidth - iWidth2, iHeight - iHeight2, iWidth + iWidth2, iHeight + iHeight2);
    }

    private static int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    private boolean isMeteringAreaAFSupported() {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics != null) {
            return ((Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF)).intValue() >= 1;
        }
        Logging.w(TAG, "warning cameraCharacteristics is null");
        return false;
    }
}
