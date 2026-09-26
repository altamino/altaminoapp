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
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import io.agora.rtc.internal.Logging;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(21)
public class VideoCaptureCamera2 extends VideoCapture {
    private static final boolean DEBUG = false;
    private static final int DEFAULT_MATCH_FPS = 15;
    private static final float DEFAULT_VALUE = -1.0f;
    private static final String TAG = "CAMERA2";
    private static final MeteringRectangle[] ZERO_WEIGHT_3A_REGION = {new MeteringRectangle(0, 0, 0, 0, 0)};
    private static final float ZOOM_UNSUPPORTED_DEFAULT_VALUE = 1.0f;
    private static final double kNanoSecondsToFps = 1.0E-9d;
    private int[] distanceArray;
    private boolean faceDistaneEnabled;
    private MeteringRectangle[] mAFAERegions;
    private CameraCaptureSession.CaptureCallback mAfCaptureCallback;
    private int mAntiBandingMode;
    public CameraManager.AvailabilityCallback mAvailabilityCallback;
    private CameraDevice mCameraDevice;
    private CameraState mCameraState;
    private final Object mCameraStateLock;
    private HandlerThread mCameraStateThread;
    private final CameraCaptureSession.CaptureCallback mCaptureCallback;
    private byte[] mCaptureData;
    private int mCaptureFormat;
    private int mCaptureFps;
    private int mCaptureHeight;
    private CameraCaptureSession mCaptureSession;
    private int mCaptureWidth;
    private float mCurZoomRatio;
    private int mEdgeEnhanceMode;
    private int mExpectedFrameSize;
    private int mFaceDetectMode;
    private boolean mFaceDetectSupported;
    private ImageReader mImageReader;
    private boolean mIsAutoFaceFocusEnabled;
    private float mLastZoomRatio;
    private CameraManager mManager;
    private float mMaxZoom;
    private int mNoiseReductionMode;
    private CaptureRequest.Builder mPreviewBuilder;
    private HandlerThread mPreviewThread;
    private Rect mSensorRect;
    private Handler mStateHandler;
    private int mVideoStabilityMode;
    private RectF[] rectArray;

    private enum CameraState {
        OPENING,
        STARTED,
        EVICTED,
        STOPPED
    }

    private class CaptureSessionListener extends CameraCaptureSession.StateCallback {
        private CaptureSessionListener() {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            Logging.e(VideoCaptureCamera2.TAG, "onConfigureFailed");
            if (VideoCaptureCamera2.this.mCameraState != CameraState.EVICTED) {
                VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STOPPED);
            }
            VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
            long j6 = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
            if (j6 != 0) {
                videoCaptureCamera2.onCameraError(j6, "Camera session configuration error");
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            VideoCaptureCamera2.this.mCaptureSession = cameraCaptureSession;
            if (VideoCaptureCamera2.this.createCaptureRequest() == 0) {
                VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STARTED);
                return;
            }
            VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STOPPED);
            VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
            long j6 = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
            if (j6 != 0) {
                videoCaptureCamera2.onCameraError(j6, "Fail to setup capture session");
            }
        }
    }

    private class CrStateListener extends CameraDevice.StateCallback {
        private CrStateListener() {
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            if (VideoCaptureCamera2.this.mCameraState != CameraState.STOPPED) {
                Logging.w(VideoCaptureCamera2.TAG, "camera client is evicted by other application");
                VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                long j6 = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
                if (j6 != 0) {
                    videoCaptureCamera2.onCameraError(j6, "Camera device evicted by other application");
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
        public void onError(CameraDevice cameraDevice, int error) {
            if (VideoCaptureCamera2.this.mCameraState == CameraState.EVICTED) {
                return;
            }
            if (VideoCaptureCamera2.this.mCameraDevice != null) {
                VideoCaptureCamera2.this.mCameraDevice.close();
                VideoCaptureCamera2.this.mCameraDevice = null;
            }
            VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STOPPED);
            Logging.e(VideoCaptureCamera2.TAG, "CameraDevice Error :" + Integer.toString(error));
            VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
            long j6 = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
            if (j6 != 0) {
                videoCaptureCamera2.onCameraError(j6, "Camera device error" + Integer.toString(error));
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            VideoCaptureCamera2.this.mCameraDevice = cameraDevice;
            if (VideoCaptureCamera2.this.doStartCapture() < 0) {
                VideoCaptureCamera2.this.doStopCapture();
                if (VideoCaptureCamera2.this.mCameraState != CameraState.EVICTED) {
                    VideoCaptureCamera2.this.changeCameraStateAndNotify(CameraState.STOPPED);
                }
                Logging.e(VideoCaptureCamera2.TAG, "Camera startCapture failed!!");
                VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                long j6 = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
                if (j6 != 0) {
                    videoCaptureCamera2.onCameraError(j6, "Error configuring camera");
                }
            }
        }
    }

    private class ImageReaderListener implements ImageReader.OnImageAvailableListener {
        private ImageReaderListener() {
        }

        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader reader) {
            Image image = null;
            try {
                try {
                    synchronized (VideoCaptureCamera2.this.mCameraStateLock) {
                        try {
                            if (VideoCaptureCamera2.this.mCameraState == CameraState.STARTED && reader != null) {
                                Image imageAcquireLatestImage = reader.acquireLatestImage();
                                if (imageAcquireLatestImage == null) {
                                    if (imageAcquireLatestImage != null) {
                                        imageAcquireLatestImage.close();
                                        return;
                                    }
                                    return;
                                }
                                if (imageAcquireLatestImage.getFormat() == 35 && imageAcquireLatestImage.getPlanes().length == 3) {
                                    if (reader.getWidth() == imageAcquireLatestImage.getWidth() && reader.getHeight() == imageAcquireLatestImage.getHeight()) {
                                        VideoCaptureCamera2.readImageIntoBuffer(imageAcquireLatestImage, VideoCaptureCamera2.this.mCaptureData);
                                        VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                                        if (videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid != 0) {
                                            videoCaptureCamera2.ProvideCameraFrame(videoCaptureCamera2.mCaptureData, VideoCaptureCamera2.this.mExpectedFrameSize, VideoCaptureCamera2.this.mNativeVideoCaptureDeviceAndroid);
                                        } else {
                                            Logging.w(VideoCaptureCamera2.TAG, "warning mNativeVideoCaptureDeviceAndroid = 0, error");
                                        }
                                        imageAcquireLatestImage.close();
                                        return;
                                    }
                                    throw new IllegalStateException("ImageReader size " + reader.getWidth() + "x" + reader.getHeight() + " did not match Image size: " + imageAcquireLatestImage.getWidth() + "x" + imageAcquireLatestImage.getHeight());
                                }
                                Logging.e(VideoCaptureCamera2.TAG, "Unexpected image format: " + imageAcquireLatestImage.getFormat() + "or #planes:" + imageAcquireLatestImage.getPlanes().length);
                                imageAcquireLatestImage.close();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (IllegalStateException e) {
                    Logging.e(VideoCaptureCamera2.TAG, "acquireLastest Image():", e);
                    if (0 != 0) {
                        image.close();
                    }
                }
            } catch (Throwable th2) {
                if (0 != 0) {
                    image.close();
                }
                throw th2;
            }
        }
    }

    private static CameraCharacteristics getCameraCharacteristics(Context appContext, int id) {
        if (id != 0 && id != 1 && id != 2) {
            Logging.i(TAG, "getCameraCharacteristics error,  camera id: " + id);
            return null;
        }
        try {
            return ((CameraManager) appContext.getSystemService("camera")).getCameraCharacteristics(Integer.toString(id));
        } catch (CameraAccessException e) {
            Logging.i(TAG, "getNumberOfCameras: getCameraIdList(): " + e);
            return null;
        } catch (Exception e2) {
            Logging.i(TAG, "getNumberOfCameras: got exception: " + e2);
            return null;
        }
    }

    static String getCaptureName() {
        return "camera2";
    }

    static boolean isLegacyDevice(Context appContext, int id) {
        try {
            CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(appContext, id);
            return cameraCharacteristics == null || ((Integer) cameraCharacteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)).intValue() == 2;
        } catch (Throwable unused) {
            Logging.w(TAG, "this is a legacy camera device");
            return true;
        }
    }

    private static boolean isSupported(int value, int[] supported) {
        if (supported == null) {
            return false;
        }
        for (int i10 : supported) {
            if (i10 == value) {
                return true;
            }
        }
        return false;
    }

    private int toCamera2ABMode(int mode) {
        if (mode < 0 || mode > 3) {
            return 3;
        }
        return mode;
    }

    private int toCamera2EdgeEnhanceMode(int mode) {
        if (mode < 0 || mode > 3) {
            return 0;
        }
        return mode;
    }

    private int toCamera2NoiseMode(int mode) {
        if (mode < 0 || mode > 4) {
            return 0;
        }
        return mode;
    }

    private int toCamera2VideoStabilityMode(int mode) {
        if (mode < 0 || mode > 1) {
            return 0;
        }
        return mode;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int UnRegisterNativeHandle() {
        this.mNativeVideoCaptureDeviceAndroid = 0L;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRegionsToCaptureRequestBuilder(CaptureRequest.Builder builder) {
        CaptureRequest.Key key = CaptureRequest.CONTROL_AF_TRIGGER;
        builder.set(key, 2);
        builder.set(CaptureRequest.CONTROL_AE_REGIONS, this.mAFAERegions);
        builder.set(CaptureRequest.CONTROL_AF_REGIONS, this.mAFAERegions);
        builder.set(CaptureRequest.CONTROL_AF_MODE, 1);
        builder.set(key, 0);
        builder.set(key, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeCameraStateAndNotify(CameraState state) {
        synchronized (this.mCameraStateLock) {
            this.mCameraState = state;
            this.mCameraStateLock.notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int createCaptureRequest() {
        try {
            this.mCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, null);
            return 0;
        } catch (CameraAccessException e) {
            Logging.e(TAG, "setRepeatingRequest: ", e);
            return -1;
        } catch (IllegalArgumentException e2) {
            Logging.e(TAG, "setRepeatingRequest: ", e2);
            return -2;
        } catch (IllegalStateException e6) {
            Logging.e(TAG, "capture:" + e6);
            return -4;
        } catch (SecurityException e7) {
            Logging.e(TAG, "setRepeatingRequest: ", e7);
            return -3;
        }
    }

    private Rect cropRegionForZoom(float ratio) {
        int iWidth = this.mSensorRect.width() / 2;
        int iHeight = this.mSensorRect.height() / 2;
        int iWidth2 = (int) ((this.mSensorRect.width() * 0.5f) / ratio);
        int iHeight2 = (int) ((this.mSensorRect.height() * 0.5f) / ratio);
        return new Rect(iWidth - iWidth2, iHeight - iHeight2, iWidth + iWidth2, iHeight + iHeight2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doStartCapture() {
        Range[] rangeArr;
        int bitsPerPixel = ((this.mCaptureWidth * this.mCaptureHeight) * ImageFormat.getBitsPerPixel(this.mCaptureFormat)) / 8;
        this.mExpectedFrameSize = bitsPerPixel;
        this.mCaptureData = new byte[bitsPerPixel];
        this.mImageReader = ImageReader.newInstance(this.mCaptureWidth, this.mCaptureHeight, this.mCaptureFormat, 2);
        if (this.mPreviewThread == null) {
            HandlerThread handlerThread = new HandlerThread("CameraPreview");
            this.mPreviewThread = handlerThread;
            handlerThread.start();
        }
        this.mImageReader.setOnImageAvailableListener(new ImageReaderListener(), new Handler(this.mPreviewThread.getLooper()));
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = this.mCameraDevice.createCaptureRequest(1);
            this.mPreviewBuilder = builderCreateCaptureRequest;
            if (builderCreateCaptureRequest == null) {
                Logging.e(TAG, "mPreviewBuilder error");
                return -4;
            }
            CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
            if (cameraCharacteristics != null && (rangeArr = (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES)) != null) {
                if (this.mPQFirst < 1) {
                    Arrays.sort(rangeArr, new Comparator<Range<Integer>>() { // from class: io.agora.rtc.video.VideoCaptureCamera2.4
                        @Override // java.util.Comparator
                        public int compare(Range<Integer> o1, Range<Integer> o5) {
                            return ((Integer) o1.getLower()).intValue() - ((Integer) o5.getLower()).intValue();
                        }
                    });
                    Logging.i(TAG, "sorted fps Ranges List:" + Arrays.toString(rangeArr));
                    int length = rangeArr.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        Range range = rangeArr[i10];
                        if (((Integer) range.getLower()).intValue() >= Math.max(this.mCaptureFps, 15)) {
                            Logging.i(TAG, "set fps :" + range.toString() + " to camera2::fps first, request:" + this.mCaptureFps);
                            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
                            break;
                        }
                    }
                } else {
                    Arrays.sort(rangeArr, new Comparator<Range<Integer>>() { // from class: io.agora.rtc.video.VideoCaptureCamera2.5
                        @Override // java.util.Comparator
                        public int compare(Range<Integer> o1, Range<Integer> o5) {
                            return ((Integer) o1.getUpper()).intValue() - ((Integer) o5.getUpper()).intValue();
                        }
                    });
                    Logging.i(TAG, "sorted fps Ranges List:" + Arrays.toString(rangeArr));
                    int length2 = rangeArr.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        Range range2 = rangeArr[i11];
                        if (((Integer) range2.getUpper()).intValue() >= this.mCaptureFps) {
                            Logging.i(TAG, "set fps :" + range2.toString() + " to camera2::PQ first, request:" + this.mCaptureFps);
                            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range2);
                            break;
                        }
                    }
                }
            }
            this.mPreviewBuilder.addTarget(this.mImageReader.getSurface());
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_MODE, 1);
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_MODE, 1);
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, Integer.valueOf(this.mAntiBandingMode));
            if (isSupported(this.mNoiseReductionMode, (int[]) cameraCharacteristics.get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES))) {
                this.mPreviewBuilder.set(CaptureRequest.NOISE_REDUCTION_MODE, Integer.valueOf(this.mNoiseReductionMode));
            }
            if (isSupported(this.mEdgeEnhanceMode, (int[]) cameraCharacteristics.get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES))) {
                this.mPreviewBuilder.set(CaptureRequest.EDGE_MODE, Integer.valueOf(this.mEdgeEnhanceMode));
            }
            if (isSupported(this.mVideoStabilityMode, (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES))) {
                this.mPreviewBuilder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, Integer.valueOf(this.mVideoStabilityMode));
            }
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
            } catch (SecurityException e6) {
                Logging.e(TAG, "createCaptureSession :", e6);
                return -3;
            }
        } catch (CameraAccessException e7) {
            Logging.e(TAG, "createCaptureRequest: ", e7);
            return -1;
        } catch (IllegalArgumentException e10) {
            Logging.e(TAG, "createCaptureRequest: ", e10);
            return -2;
        } catch (SecurityException e11) {
            Logging.e(TAG, "createCaptureRequest ", e11);
            return -3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doStopCapture() {
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

    public static int getFrontCameraIndex(Context appContext) {
        CameraManager cameraManager = (CameraManager) appContext.getSystemService("camera");
        try {
            for (String str : cameraManager.getCameraIdList()) {
                Integer num = (Integer) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING);
                if (num != null && num.intValue() == 0) {
                    Logging.d(TAG, "getFrontCameraIndex str= " + str + ", int = " + Integer.parseInt(str));
                    return Integer.parseInt(str);
                }
            }
        } catch (Exception e) {
            Logging.e(TAG, "getFrontCameraIndex: ", e);
        }
        return 0;
    }

    static int getNumberOfCameras(Context appContext) {
        try {
            int length = ((CameraManager) appContext.getSystemService("camera")).getCameraIdList().length;
            Logging.i(TAG, "VideoCaptureCamera2 listCount:" + length);
            return length;
        } catch (Exception e) {
            Logging.e(TAG, "getNumberOfCameras: getCameraIdList(): ", e);
            return 0;
        }
    }

    private boolean isMeteringAreaAFSupported() {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics != null) {
            return ((Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF)).intValue() >= 1;
        }
        Logging.w(TAG, "warning cameraCharacteristics is null");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readImageIntoBuffer(Image image, byte[] data) {
        int width = image.getWidth();
        int height = image.getHeight();
        Image.Plane[] planes = image.getPlanes();
        int i10 = 0;
        int i11 = 0;
        while (i10 < planes.length) {
            ByteBuffer buffer = planes[i10].getBuffer();
            if (buffer == null) {
                Logging.e(TAG, "plane " + i10 + " buffer is null ");
                return;
            }
            int rowStride = planes[i10].getRowStride();
            int pixelStride = planes[i10].getPixelStride();
            int i12 = i10 == 0 ? width : width / 2;
            int i13 = i10 == 0 ? height : height / 2;
            if (pixelStride == 1 && rowStride == i12) {
                int i14 = i12 * i13;
                buffer.get(data, i11, i14);
                i11 += i14;
            } else {
                byte[] bArr = new byte[rowStride];
                for (int i15 = 0; i15 < i13 - 1; i15++) {
                    buffer.get(bArr, 0, rowStride);
                    int i16 = 0;
                    while (i16 < i12) {
                        data[i11] = bArr[i16 * pixelStride];
                        i16++;
                        i11++;
                    }
                }
                buffer.get(bArr, 0, Math.min(rowStride, buffer.remaining()));
                int i17 = 0;
                while (i17 < i12) {
                    data[i11] = bArr[i17 * pixelStride];
                    i17++;
                    i11++;
                }
            }
            i10++;
        }
    }

    private void setExposureCompensation_l(int value) {
        Logging.i(TAG, "setExposureCompensation:" + value);
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            return;
        }
        Rational rational = (Rational) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
        Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
        int iIntValue = ((Integer) range.getUpper()).intValue();
        int iIntValue2 = ((Integer) range.getLower()).intValue();
        Logging.i(TAG, "compensation step=" + rational + ", min=" + iIntValue2 + ", max=" + iIntValue);
        if (value > iIntValue) {
            value = iIntValue;
        }
        if (value >= iIntValue2) {
            iIntValue2 = value;
        }
        if (this.mPreviewThread == null || this.mPreviewBuilder == null) {
            return;
        }
        Handler handler = new Handler(this.mPreviewThread.getLooper());
        CaptureRequest.Builder builder = this.mPreviewBuilder;
        CaptureRequest.Key key = CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION;
        Logging.i(TAG, "bf cur index=" + ((Integer) builder.get(key)).intValue());
        this.mPreviewBuilder.set(key, Integer.valueOf(iIntValue2));
        CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
        if (cameraCaptureSession != null) {
            try {
                cameraCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, handler);
                int iIntValue3 = ((Integer) this.mPreviewBuilder.get(key)).intValue();
                Logging.i(TAG, "af cur index=" + iIntValue3 + ", ev=" + ((iIntValue3 * rational.getNumerator()) / rational.getDenominator()));
            } catch (CameraAccessException e) {
                e.printStackTrace();
            } catch (IllegalStateException e2) {
                e2.printStackTrace();
            }
        }
    }

    private void setFaceDetect(CaptureRequest.Builder requestBuilder, int faceDetectMode) {
        if (this.mFaceDetectSupported) {
            if (this.mIsAutoFaceFocusEnabled || this.faceDistaneEnabled) {
                requestBuilder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, Integer.valueOf(faceDetectMode));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startNormalPreview() {
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_MODE, 1);
        try {
            this.mCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, new Handler(this.mPreviewThread.getLooper()));
        } catch (CameraAccessException e) {
            Logging.e(TAG, "setRepeatingRequest failed, error message : " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int tryOpenCamera() {
        try {
            this.mManager.openCamera(Integer.toString(this.mId), new CrStateListener(), this.mStateHandler);
            return 0;
        } catch (CameraAccessException e) {
            Logging.e(TAG, "allocate: manager.openCamera: ", e);
            return -1;
        } catch (IllegalArgumentException e2) {
            Logging.e(TAG, "allocate: manager.openCamera: ", e2);
            return -2;
        } catch (SecurityException e6) {
            Logging.e(TAG, "allocate: manager.openCamera: ", e6);
            return -3;
        } catch (Exception e7) {
            Logging.e(TAG, "unknown error", e7);
            return -4;
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int allocate() {
        synchronized (this.mCameraStateLock) {
            try {
                if (this.mCameraState == CameraState.OPENING) {
                    Logging.e(TAG, "allocate() invoked while Camera is busy opening/configuring");
                    return -1;
                }
                CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
                if (cameraCharacteristics == null) {
                    return -1;
                }
                if (VideoCapture.fetchCapability(this.mId, this.mContext, getCaptureName()) == null) {
                    createCapabilities(this.mId, this.mContext);
                }
                long j6 = this.mNativeVideoCaptureDeviceAndroid;
                if (j6 != 0) {
                    this.mIsAutoFaceFocusEnabled = isAutoFaceFocusEnabled(j6);
                    this.faceDistaneEnabled = isFaceDetectionEnabled(this.mNativeVideoCaptureDeviceAndroid);
                }
                this.mCameraNativeOrientation = ((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
                this.mManager = (CameraManager) this.mContext.getSystemService("camera");
                int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES);
                int iIntValue = ((Integer) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT)).intValue();
                if (iArr.length > 1 && iIntValue > 0) {
                    this.mFaceDetectSupported = true;
                    int i10 = 0;
                    for (int i11 : iArr) {
                        i10 += i11;
                    }
                    if (i10 % 2 != 0) {
                        this.mFaceDetectMode = 1;
                    } else {
                        this.mFaceDetectMode = 2;
                    }
                }
                Logging.i(TAG, "allocate() face detection: " + this.mFaceDetectMode + " " + iIntValue + " " + this.mFaceDetectSupported);
                if (this.mCameraStateThread == null) {
                    HandlerThread handlerThread = new HandlerThread("CameraCallbackThread");
                    this.mCameraStateThread = handlerThread;
                    handlerThread.start();
                    this.mStateHandler = new Handler(this.mCameraStateThread.getLooper());
                }
                this.mManager.registerAvailabilityCallback(this.mAvailabilityCallback, this.mStateHandler);
                return 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public void deallocate() {
        CameraManager cameraManager = this.mManager;
        if (cameraManager != null) {
            cameraManager.unregisterAvailabilityCallback(this.mAvailabilityCallback);
            HandlerThread handlerThread = this.mCameraStateThread;
            if (handlerThread != null) {
                handlerThread.quitSafely();
                this.mCameraStateThread = null;
                this.mStateHandler = null;
            }
        }
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
    public boolean isExposureSupported() {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            Logging.w(TAG, "warning cameraCharacteristics is null");
            return false;
        }
        int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
        if (iArr != null) {
            for (int i10 = 0; i10 < iArr.length; i10++) {
                Logging.d(TAG, "isExposureSupported AE mode = " + iArr[i10]);
                if (1 == i10) {
                    return true;
                }
            }
        }
        return false;
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
            for (int i10 = 0; i10 < iArr.length; i10++) {
                if (1 == i10) {
                    return true;
                }
            }
        }
        return false;
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
    public boolean isZoomSupported() {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics != null) {
            return ((Float) cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM)).floatValue() > 1.0f;
        }
        Logging.w(TAG, "warning cameraCharacteristics is null");
        return false;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setAutoFaceFocus(boolean enable) {
        boolean z6 = this.mIsAutoFaceFocusEnabled != enable;
        this.mIsAutoFaceFocusEnabled = enable;
        if (!this.mFaceDetectSupported || !z6) {
            Logging.w(TAG, "face detect no change");
        } else if (this.mPreviewThread != null && this.mPreviewBuilder != null) {
            Handler handler = new Handler(this.mPreviewThread.getLooper());
            if (this.mIsAutoFaceFocusEnabled) {
                this.mPreviewBuilder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, Integer.valueOf(this.mFaceDetectMode));
            } else {
                if (this.faceDistaneEnabled) {
                    Logging.w(TAG, "face detect did not turn off due to faceDistance on");
                    return 0;
                }
                this.mPreviewBuilder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 0);
            }
            CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
            if (cameraCaptureSession != null) {
                try {
                    cameraCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, handler);
                    return 0;
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setExposure(float valX, float valY, boolean inPreview) {
        int i10;
        int i11;
        Logging.d(TAG, "setExposure called camera api2");
        if (valX < 0.0f || valX > 1.0f || valY < 0.0f || valY > 1.0f) {
            Logging.e(TAG, "set exposure unreasonable inputs");
            return -1;
        }
        CaptureRequest.Builder builder = this.mPreviewBuilder;
        if (builder == null) {
            Logging.d(TAG, "setExposure mPreviewBuilder is null");
            return -1;
        }
        double d = valX;
        double d2 = valY;
        Rect rect = (Rect) builder.get(CaptureRequest.SCALER_CROP_REGION);
        if (rect == null) {
            return -1;
        }
        int iWidth = rect.width();
        int iHeight = rect.height();
        Logging.d(TAG, "crop width = " + iWidth + " crop height = " + iHeight + " capture width = " + this.mCaptureWidth + " capture height = " + this.mCaptureHeight);
        int i12 = this.mCaptureHeight;
        int i13 = iWidth * i12;
        int i14 = this.mCaptureWidth;
        if (i13 > iHeight * i14) {
            int i15 = (i14 * iHeight) / i12;
            i11 = (int) (((double) ((iWidth - i15) / 2.0f)) + (d * ((double) i15)));
            i10 = (int) (d2 * ((double) iHeight));
        } else {
            int i16 = (i12 * iWidth) / i14;
            int i17 = (int) (d * ((double) iWidth));
            i10 = (int) (((double) ((iHeight - i16) / 2.0f)) + (d2 * ((double) i16)));
            i11 = i17;
        }
        Rect rect2 = new Rect();
        double d6 = i11;
        double d7 = ((double) iWidth) * 0.05d;
        rect2.left = clamp((int) (d6 - d7), 0, iWidth);
        rect2.right = clamp((int) (d6 + d7), 0, iWidth);
        double d10 = i10;
        double d11 = ((double) iHeight) * 0.05d;
        rect2.top = clamp((int) (d10 - d11), 0, iHeight);
        rect2.bottom = clamp((int) (d10 + d11), 0, iHeight);
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
        long j6 = this.mNativeVideoCaptureDeviceAndroid;
        if (j6 != 0) {
            NotifyCameraExposureAreaChanged(valX, valY, 0.0f, 0.0f, j6);
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setFaceDetection(boolean enable) {
        boolean z6 = this.faceDistaneEnabled != enable;
        this.faceDistaneEnabled = enable;
        if (!this.mFaceDetectSupported || !z6) {
            Logging.w(TAG, "face detect no change");
        } else if (this.mPreviewThread != null && this.mPreviewBuilder != null) {
            Handler handler = new Handler(this.mPreviewThread.getLooper());
            if (this.faceDistaneEnabled) {
                this.mPreviewBuilder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, Integer.valueOf(this.mFaceDetectMode));
            } else {
                if (this.mIsAutoFaceFocusEnabled) {
                    Logging.w(TAG, "face detect did not turn off due to autoFocus on");
                    return 0;
                }
                this.mPreviewBuilder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 0);
            }
            CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
            if (cameraCaptureSession != null) {
                try {
                    cameraCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, handler);
                    return 0;
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setFocus(float valX, float valY, boolean inPreview) {
        int i10;
        int i11;
        if (valX < 0.0f || valX > 1.0f || valY < 0.0f || valY > 1.0f) {
            Logging.e(TAG, "set focus unreasonable inputs");
            return -1;
        }
        CaptureRequest.Builder builder = this.mPreviewBuilder;
        if (builder == null) {
            Logging.d(TAG, "setFocus mPreviewBuilder is null");
            return -1;
        }
        double d = valX;
        double d2 = valY;
        Rect rect = (Rect) builder.get(CaptureRequest.SCALER_CROP_REGION);
        if (rect == null) {
            return -1;
        }
        int iWidth = rect.width();
        int iHeight = rect.height();
        Log.d("test", "crop width = " + iWidth + " crop height = " + iHeight + " capture width = " + this.mCaptureWidth + " capture height = " + this.mCaptureHeight);
        int i12 = this.mCaptureHeight;
        int i13 = iWidth * i12;
        int i14 = this.mCaptureWidth;
        if (i13 > iHeight * i14) {
            int i15 = (i14 * iHeight) / i12;
            i11 = (int) (((double) ((iWidth - i15) / 2.0f)) + (d * ((double) i15)));
            i10 = (int) (d2 * ((double) iHeight));
        } else {
            int i16 = (i12 * iWidth) / i14;
            int i17 = (int) (d * ((double) iWidth));
            i10 = (int) (((double) ((iHeight - i16) / 2.0f)) + (d2 * ((double) i16)));
            i11 = i17;
        }
        Rect rect2 = new Rect();
        double d6 = i11;
        double d7 = ((double) iWidth) * 0.05d;
        rect2.left = clamp((int) (d6 - d7), 0, iWidth);
        rect2.right = clamp((int) (d6 + d7), 0, iWidth);
        double d10 = i10;
        double d11 = ((double) iHeight) * 0.05d;
        rect2.top = clamp((int) (d10 - d11), 0, iHeight);
        rect2.bottom = clamp((int) (d10 + d11), 0, iHeight);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_REGIONS, new MeteringRectangle[]{new MeteringRectangle(rect2, 1000)});
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_REGIONS, new MeteringRectangle[]{new MeteringRectangle(rect2, 1000)});
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 1);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
        if (this.mPreviewThread != null) {
            Handler handler = new Handler(this.mPreviewThread.getLooper());
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
            long j6 = this.mNativeVideoCaptureDeviceAndroid;
            if (j6 != 0) {
                NotifyCameraFocusAreaChanged(valX, valY, 0.0f, 0.0f, j6);
            }
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setTorchMode(boolean isTorchOn) {
        Log.d("flash", "setFlashMode isTorchOn " + isTorchOn);
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            Logging.w(TAG, "warning cameraCharacteristics is null");
            return -1;
        }
        Boolean bool = (Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
        if (bool == null || !bool.booleanValue()) {
            Logging.w(TAG, "flash is not supported");
        } else if (this.mPreviewThread != null && this.mPreviewBuilder != null) {
            Handler handler = new Handler(this.mPreviewThread.getLooper());
            if (isTorchOn) {
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
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setZoom(float zoomValue) {
        Log.d("zoom", "setCameraZoom api2 called zoomValue =" + zoomValue);
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
        this.mCurZoomRatio = zoomValue;
        if (zoomValue < 1.0f || zoomValue > this.mMaxZoom || zoomValue == this.mLastZoomRatio) {
            return -2;
        }
        this.mPreviewBuilder.set(CaptureRequest.SCALER_CROP_REGION, cropRegionForZoom(zoomValue));
        this.mLastZoomRatio = this.mCurZoomRatio;
        if (this.mPreviewThread == null) {
            return 0;
        }
        Handler handler = new Handler(this.mPreviewThread.getLooper());
        CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
        if (cameraCaptureSession == null) {
            return 0;
        }
        try {
            cameraCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, handler);
            return 0;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return -3;
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            return -4;
        }
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int startCapture(int width, int height, int frameRate) {
        CameraState cameraState;
        CameraState cameraState2;
        Logging.d(TAG, "startCapture, w=" + width + ", h=" + height + ", fps=" + frameRate);
        this.mCaptureWidth = width;
        this.mCaptureHeight = height;
        this.mCaptureFps = frameRate;
        synchronized (this.mCameraStateLock) {
            while (true) {
                try {
                    cameraState = this.mCameraState;
                    cameraState2 = CameraState.STARTED;
                    if (cameraState == cameraState2 || cameraState == CameraState.EVICTED || cameraState == CameraState.STOPPED) {
                        break;
                    }
                    try {
                        this.mCameraStateLock.wait();
                    } catch (InterruptedException e) {
                        Logging.e(TAG, "CaptureStartedEvent: ", e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (cameraState == cameraState2) {
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
        CameraState cameraState;
        synchronized (this.mCameraStateLock) {
            while (true) {
                try {
                    cameraState = this.mCameraState;
                    if (cameraState == CameraState.STARTED || cameraState == CameraState.EVICTED || cameraState == CameraState.STOPPED) {
                        break;
                    }
                    try {
                        this.mCameraStateLock.wait();
                    } catch (InterruptedException e) {
                        Logging.e(TAG, "CaptureStartedEvent: ", e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (cameraState == CameraState.EVICTED) {
                this.mCameraState = CameraState.STOPPED;
            }
            CameraState cameraState2 = this.mCameraState;
            CameraState cameraState3 = CameraState.STOPPED;
            if (cameraState2 == cameraState3) {
                return 0;
            }
            doStopCapture();
            this.mCameraState = cameraState3;
            this.mCameraStateLock.notifyAll();
            return 0;
        }
    }

    VideoCaptureCamera2(Context context, int id, long nativeVideoCaptureDeviceAndroid, int pqFirst) {
        super(context, id, nativeVideoCaptureDeviceAndroid, pqFirst);
        this.mCameraDevice = null;
        this.mPreviewBuilder = null;
        this.mCaptureSession = null;
        this.mImageReader = null;
        this.mCameraState = CameraState.STOPPED;
        this.mManager = null;
        this.mStateHandler = null;
        this.mCameraStateThread = null;
        this.mPreviewThread = null;
        this.mCameraStateLock = new Object();
        this.mExpectedFrameSize = 0;
        this.mCaptureWidth = -1;
        this.mCaptureHeight = -1;
        this.mCaptureFps = -1;
        this.mCaptureFormat = 35;
        this.mIsAutoFaceFocusEnabled = false;
        this.rectArray = null;
        this.distanceArray = null;
        this.faceDistaneEnabled = false;
        this.mAFAERegions = ZERO_WEIGHT_3A_REGION;
        this.mLastZoomRatio = DEFAULT_VALUE;
        this.mCurZoomRatio = 1.0f;
        this.mMaxZoom = DEFAULT_VALUE;
        this.mSensorRect = null;
        this.mAntiBandingMode = 3;
        this.mNoiseReductionMode = 0;
        this.mEdgeEnhanceMode = 0;
        this.mVideoStabilityMode = 0;
        this.mAvailabilityCallback = new CameraManager.AvailabilityCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera2.1
            @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
            public synchronized void onCameraAvailable(String cameraId) {
                try {
                    super.onCameraAvailable(cameraId);
                    if (VideoCaptureCamera2.this.mCameraState == CameraState.EVICTED) {
                        if (VideoCaptureCamera2.this.tryOpenCamera() == 0) {
                            VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                            long j6 = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
                            if (j6 != 0) {
                                videoCaptureCamera2.onCameraError(j6, "no error");
                            }
                        } else {
                            Logging.e(VideoCaptureCamera2.TAG, "start capture failed");
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }

            @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
            public synchronized void onCameraUnavailable(String cameraId) {
                super.onCameraUnavailable(cameraId);
                Logging.e(VideoCaptureCamera2.TAG, "Camera " + cameraId + " unavailable");
            }
        };
        this.mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera2.2
            private long mLastFocusedTs;

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureProgressed(CameraCaptureSession session, CaptureRequest request, CaptureResult partialResult) {
            }

            private void notifyCameraFocusAreaChanged(Rect cropRegion, Rect faceRect) {
                Rect rectSensorToNormalizedPreview = CoordinatesTransform.sensorToNormalizedPreview(faceRect, VideoCaptureCamera2.this.mCaptureWidth, VideoCaptureCamera2.this.mCaptureHeight, cropRegion);
                Logging.d(VideoCaptureCamera2.TAG, "face bound = " + faceRect.toString());
                Logging.d(VideoCaptureCamera2.TAG, "rect (-1000, 1000) = " + rectSensorToNormalizedPreview.toString());
                boolean z6 = VideoCaptureCamera2.this.mId == 1;
                RectF rectFNormalizedFaceRect = CoordinatesTransform.normalizedFaceRect(rectSensorToNormalizedPreview, 0, z6);
                Logging.d(VideoCaptureCamera2.TAG, "preview size width = " + VideoCaptureCamera2.this.mCaptureWidth + " height = " + VideoCaptureCamera2.this.mCaptureHeight);
                Logging.d(VideoCaptureCamera2.TAG, "auto face focus left =" + rectFNormalizedFaceRect.left + " top = " + rectFNormalizedFaceRect.top + " right = " + rectFNormalizedFaceRect.right + " bottom = " + rectFNormalizedFaceRect.bottom + "isMirror =" + z6);
                float f = rectFNormalizedFaceRect.left;
                float f6 = rectFNormalizedFaceRect.top;
                float fWidth = rectFNormalizedFaceRect.width();
                float fHeight = rectFNormalizedFaceRect.height();
                VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                long j6 = videoCaptureCamera2.mNativeVideoCaptureDeviceAndroid;
                if (j6 != 0) {
                    videoCaptureCamera2.NotifyCameraFocusAreaChanged(f, f6, fWidth, fHeight, j6);
                }
            }

            private void notifyFaceDetection(Rect cropRegion, Face[] faces) {
                VideoCaptureCamera2.this.rectArray = null;
                VideoCaptureCamera2 videoCaptureCamera2 = VideoCaptureCamera2.this;
                boolean z6 = videoCaptureCamera2.mId == 1;
                if (faces == null || faces.length <= 0) {
                    return;
                }
                int length = faces.length;
                videoCaptureCamera2.rectArray = new RectF[length];
                VideoCaptureCamera2.this.distanceArray = new int[length];
                for (int i10 = 0; i10 < length; i10++) {
                    VideoCaptureCamera2.this.rectArray[i10] = CoordinatesTransform.normalizedFaceRect(CoordinatesTransform.sensorToNormalizedPreview(faces[i10].getBounds(), VideoCaptureCamera2.this.mCaptureWidth, VideoCaptureCamera2.this.mCaptureHeight, cropRegion), 0, z6);
                    VideoCaptureCamera2.this.distanceArray[i10] = 5;
                }
                Logging.d(VideoCaptureCamera2.TAG, "before notify face");
                VideoCaptureCamera2 videoCaptureCamera3 = VideoCaptureCamera2.this;
                videoCaptureCamera3.NotifyFaceDetection(videoCaptureCamera3.mCaptureWidth, VideoCaptureCamera2.this.mCaptureHeight, VideoCaptureCamera2.this.rectArray, length, VideoCaptureCamera2.this.mNativeVideoCaptureDeviceAndroid);
            }

            private void process(CaptureResult result) {
                Face[] faceArr = (Face[]) result.get(CaptureResult.STATISTICS_FACES);
                if (faceArr == null || faceArr.length <= 0) {
                    VideoCaptureCamera2.this.mAFAERegions = VideoCaptureCamera2.ZERO_WEIGHT_3A_REGION;
                    return;
                }
                if (System.currentTimeMillis() - this.mLastFocusedTs < 3000) {
                    if (faceArr[0].getScore() > 20) {
                        notifyCameraFocusAreaChanged((Rect) result.get(CaptureResult.SCALER_CROP_REGION), faceArr[0].getBounds());
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
                    Rect rect = (Rect) result.get(CaptureResult.SCALER_CROP_REGION);
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
            public void onCaptureCompleted(CameraCaptureSession session, CaptureRequest request, TotalCaptureResult result) {
                if (VideoCaptureCamera2.this.mIsAutoFaceFocusEnabled && VideoCaptureCamera2.this.isAutoFaceFocusSupported()) {
                    process(result);
                }
                if (VideoCaptureCamera2.this.faceDistaneEnabled) {
                    notifyFaceDetection((Rect) result.get(CaptureResult.SCALER_CROP_REGION), (Face[]) result.get(CaptureResult.STATISTICS_FACES));
                }
            }
        };
        this.mAfCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: io.agora.rtc.video.VideoCaptureCamera2.3
            private void process(CaptureResult result) {
                Integer num = (Integer) result.get(CaptureResult.CONTROL_AF_STATE);
                if (num == null) {
                    return;
                }
                if (4 == num.intValue() || 5 == num.intValue()) {
                    VideoCaptureCamera2.this.mPreviewBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
                    VideoCaptureCamera2.this.startNormalPreview();
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession session, CaptureRequest request, TotalCaptureResult result) {
                process(result);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureProgressed(CameraCaptureSession session, CaptureRequest request, CaptureResult partialResult) {
                process(partialResult);
            }
        };
    }

    private static int clamp(int val, int min, int max) {
        return Math.max(min, Math.min(max, val));
    }

    public static int createCapabilities(int id, Context context) {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(context, id);
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
        ArrayList arrayList = new ArrayList(Arrays.asList(streamConfigurationMap.getOutputSizes(35)));
        if ("SM-G9300".equals(Build.MODEL)) {
            ArrayList arrayList2 = new ArrayList();
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                if (((Size) arrayList.get(i10)).getHeight() >= 720) {
                    arrayList2.add(arrayList.get(i10));
                }
            }
            arrayList = arrayList2;
        }
        String str = "\"id\":" + id + ",";
        String strValueOf = String.valueOf(15);
        Range[] rangeArr = (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        if (rangeArr != null) {
            ArrayList arrayList3 = new ArrayList();
            for (Range range : rangeArr) {
                arrayList3.add(range.getUpper());
            }
            StringBuilder sb = new StringBuilder();
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                sb.append(((Integer) it.next()) + ",");
            }
            if (arrayList3.size() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            strValueOf = sb.toString();
        }
        String str2 = "";
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            int width = ((Size) arrayList.get(i11)).getWidth();
            int height = ((Size) arrayList.get(i11)).getHeight();
            if (width >= 240 && height >= 240 && (width >= 320 || height >= 320)) {
                String str3 = "{\"w\":" + width + ",\"h\":" + height + "}";
                if (!str2.isEmpty()) {
                    str2 = str2 + "," + str3;
                } else {
                    str2 = str3;
                }
            }
        }
        VideoCapture.cacheCapability(id, context, "{" + str + "\"resolution\":[" + str2 + "],\"format\":[" + ("" + VideoCapture.translateToEngineFormat(35)) + "],\"fps\":[" + strValueOf + "]}", getCaptureName());
        return 0;
    }

    static String getName(int id, Context appContext) {
        String str;
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(appContext, id);
        if (cameraCharacteristics == null) {
            return null;
        }
        int iIntValue = ((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue();
        StringBuilder sb = new StringBuilder();
        sb.append("camera2 ");
        sb.append(id);
        sb.append(", facing ");
        if (iIntValue == 0) {
            str = "front";
        } else {
            str = "back";
        }
        sb.append(str);
        return sb.toString();
    }

    static int getSensorOrientation(int id, Context appContext) {
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(appContext, id);
        if (cameraCharacteristics == null) {
            return -1;
        }
        return ((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
    }

    @Override // io.agora.rtc.video.VideoCapture
    public boolean isAutoFaceFocusSupported() {
        if (!isFocusSupported()) {
            return false;
        }
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            Logging.w(TAG, "warning cameraCharacteristics is null");
            return false;
        }
        if (((Integer) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_MAX_FACE_COUNT)).intValue() <= 0) {
            return false;
        }
        return true;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setAntiBandingMode(int mode) {
        this.mAntiBandingMode = toCamera2ABMode(mode);
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            return -1;
        }
        int i10 = this.mAntiBandingMode;
        int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_ANTIBANDING_MODES);
        if (iArr.length > 0) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    if (this.mPreviewThread != null && this.mPreviewBuilder != null) {
                        Handler handler = new Handler(this.mPreviewThread.getLooper());
                        this.mPreviewBuilder.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, Integer.valueOf(i10));
                        CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
                        if (cameraCaptureSession != null) {
                            try {
                                cameraCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, handler);
                                return 0;
                            } catch (CameraAccessException e) {
                                e.printStackTrace();
                            } catch (IllegalStateException e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                    Logging.i(TAG, "AgoraVideo set anti-banding = " + i10);
                    return 0;
                }
            }
        }
        Logging.i(TAG, "not supported anti-banding = " + i10);
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setCaptureFormat(int format) {
        if (VideoCapture.translateToAndroidFormat(format) != this.mCaptureFormat) {
            Logging.e(TAG, "For camera2 api, only YUV_420_888 format are supported");
            return -1;
        }
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setEdgeEnhanceMode(int mode) {
        this.mEdgeEnhanceMode = toCamera2EdgeEnhanceMode(mode);
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            return -1;
        }
        if (isSupported(this.mEdgeEnhanceMode, (int[]) cameraCharacteristics.get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES)) && this.mPreviewThread != null && this.mPreviewBuilder != null) {
            Handler handler = new Handler(this.mPreviewThread.getLooper());
            this.mPreviewBuilder.set(CaptureRequest.EDGE_MODE, Integer.valueOf(this.mEdgeEnhanceMode));
            if (this.mCaptureSession != null) {
                try {
                    Logging.i(TAG, "setEdgeEnhanceMode = " + mode);
                    this.mCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, handler);
                    return 0;
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                }
            }
        }
        Logging.e(TAG, "not supported EdgeEnhance Mode = " + mode);
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setExposureCompensation(int value) {
        setExposureCompensation_l(value);
        return 0;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setNoiseReductionMode(int mode) {
        this.mNoiseReductionMode = toCamera2NoiseMode(mode);
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            return -1;
        }
        if (isSupported(this.mNoiseReductionMode, (int[]) cameraCharacteristics.get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES)) && this.mPreviewThread != null && this.mPreviewBuilder != null) {
            Handler handler = new Handler(this.mPreviewThread.getLooper());
            this.mPreviewBuilder.set(CaptureRequest.NOISE_REDUCTION_MODE, Integer.valueOf(this.mNoiseReductionMode));
            if (this.mCaptureSession != null) {
                try {
                    Logging.i(TAG, "setNoiseReductionMode = " + mode);
                    this.mCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, handler);
                    return 0;
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                }
            }
        }
        Logging.e(TAG, "not supported NoiseReductionMode = " + mode);
        return -1;
    }

    @Override // io.agora.rtc.video.VideoCapture
    public int setVideoStabilityMode(int mode) {
        this.mVideoStabilityMode = toCamera2VideoStabilityMode(mode);
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(this.mContext, this.mId);
        if (cameraCharacteristics == null) {
            return -1;
        }
        if (isSupported(this.mVideoStabilityMode, (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES)) && this.mPreviewThread != null && this.mPreviewBuilder != null) {
            Handler handler = new Handler(this.mPreviewThread.getLooper());
            this.mPreviewBuilder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, Integer.valueOf(this.mVideoStabilityMode));
            if (this.mCaptureSession != null) {
                try {
                    Logging.i(TAG, "setVideoStabilityMode = " + mode);
                    this.mCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, handler);
                    return 0;
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                } catch (IllegalStateException e2) {
                    e2.printStackTrace();
                }
            }
        }
        Logging.e(TAG, "not supported VideoStability Mode = " + mode);
        return -1;
    }
}
