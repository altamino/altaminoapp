package io.agora.rtc.mediaio;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.ImageFormat;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.Size;
import android.view.WindowManager;
import io.agora.rtc.internal.Logging;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(21)
public class AgoraBufferedCamera2 extends CameraSource {
    private static final int STATE_PREVIEW = 0;
    private static final int STATE_WAITING_LOCK = 1;
    private static final int STATE_WAITING_NON_PRECAPTURE = 3;
    private static final int STATE_WAITING_PRECAPTURE = 2;
    private static final String TAG = "AgoraBufferedCamera2";
    private int cameraOrientation;
    private boolean isCameraFrontFacing;
    private Handler mBackgroundHandler;
    private HandlerThread mBackgroundThread;
    private byte[] mBufferArrayData;
    private ByteBuffer mByteBufferData;
    private CameraDevice mCameraDevice;
    private String mCameraId;
    private CameraCaptureSession mCaptureSession;
    private CameraCharacteristics mCharacteristics;
    private Context mContext;
    private boolean mFlashSupported;
    private ImageReader mImageReader;
    private CaptureParameters mParameters;
    private CaptureRequest mPreviewRequest;
    private CaptureRequest.Builder mPreviewRequestBuilder;
    private int mState = 0;
    private Semaphore mCameraOpenCloseLock = new Semaphore(1);
    private final ImageReader.OnImageAvailableListener mOnImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.1
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader reader) {
            Image image = null;
            try {
                try {
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
                            AgoraBufferedCamera2.readImageIntoBuffer(imageAcquireLatestImage, AgoraBufferedCamera2.this.mBufferArrayData);
                            int frameOrientation = AgoraBufferedCamera2.this.getFrameOrientation();
                            AgoraBufferedCamera2 agoraBufferedCamera2 = AgoraBufferedCamera2.this;
                            if (agoraBufferedCamera2.consumer != null && agoraBufferedCamera2.mParameters.bufferType == MediaIO.BufferType.BYTE_ARRAY.intValue()) {
                                AgoraBufferedCamera2 agoraBufferedCamera3 = AgoraBufferedCamera2.this;
                                agoraBufferedCamera3.consumer.consumeByteArrayFrame(agoraBufferedCamera3.mBufferArrayData, AgoraBufferedCamera2.this.mParameters.pixelFormat, imageAcquireLatestImage.getWidth(), imageAcquireLatestImage.getHeight(), frameOrientation, System.currentTimeMillis());
                            } else {
                                AgoraBufferedCamera2 agoraBufferedCamera4 = AgoraBufferedCamera2.this;
                                if (agoraBufferedCamera4.consumer != null && agoraBufferedCamera4.mParameters.bufferType == MediaIO.BufferType.BYTE_BUFFER.intValue()) {
                                    AgoraBufferedCamera2.this.mByteBufferData.rewind();
                                    AgoraBufferedCamera2.this.mByteBufferData.put(AgoraBufferedCamera2.this.mBufferArrayData, 0, AgoraBufferedCamera2.this.mBufferArrayData.length);
                                    AgoraBufferedCamera2 agoraBufferedCamera5 = AgoraBufferedCamera2.this;
                                    agoraBufferedCamera5.consumer.consumeByteBufferFrame(agoraBufferedCamera5.mByteBufferData, AgoraBufferedCamera2.this.mParameters.pixelFormat, imageAcquireLatestImage.getWidth(), imageAcquireLatestImage.getHeight(), frameOrientation, System.currentTimeMillis());
                                }
                            }
                            imageAcquireLatestImage.close();
                            return;
                        }
                        throw new IllegalStateException("ImageReader size " + reader.getWidth() + "x" + reader.getHeight() + " did not match Image size: " + imageAcquireLatestImage.getWidth() + "x" + imageAcquireLatestImage.getHeight());
                    }
                    Logging.e(AgoraBufferedCamera2.TAG, "Unexpected image format: " + imageAcquireLatestImage.getFormat() + "or #planes:" + imageAcquireLatestImage.getPlanes().length);
                    imageAcquireLatestImage.close();
                } catch (IllegalStateException e) {
                    Log.e(AgoraBufferedCamera2.TAG, "acquireLastest Image():", e);
                    if (0 != 0) {
                        image.close();
                    }
                } catch (Exception unused) {
                    Log.e(AgoraBufferedCamera2.TAG, "fetch image failed...");
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
    };
    private final CameraDevice.StateCallback mStateCallback = new CameraDevice.StateCallback() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.2
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            AgoraBufferedCamera2.this.mCameraDevice = cameraDevice;
            AgoraBufferedCamera2.this.createCameraPreviewSession();
            AgoraBufferedCamera2.this.mCameraOpenCloseLock.release();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            cameraDevice.close();
            AgoraBufferedCamera2.this.mCameraDevice = null;
            AgoraBufferedCamera2.this.mCameraOpenCloseLock.release();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int error) {
            cameraDevice.close();
            AgoraBufferedCamera2.this.mCameraDevice = null;
            AgoraBufferedCamera2.this.mCameraOpenCloseLock.release();
        }
    };
    private CameraCaptureSession.CaptureCallback mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.3
        private void process(CaptureResult result) {
            Integer num;
            Integer num2;
            int i10 = AgoraBufferedCamera2.this.mState;
            if (i10 == 1) {
                Integer num3 = (Integer) result.get(CaptureResult.CONTROL_AF_STATE);
                if (num3 == null) {
                    return;
                }
                if ((4 == num3.intValue() || 5 == num3.intValue()) && (num = (Integer) result.get(CaptureResult.CONTROL_AE_STATE)) != null) {
                    num.intValue();
                    return;
                }
                return;
            }
            if (i10 != 2) {
                if (i10 == 3 && (num2 = (Integer) result.get(CaptureResult.CONTROL_AE_STATE)) != null) {
                    num2.intValue();
                    return;
                }
                return;
            }
            Integer num4 = (Integer) result.get(CaptureResult.CONTROL_AE_STATE);
            if (num4 == null || num4.intValue() == 5 || num4.intValue() == 4) {
                AgoraBufferedCamera2.this.mState = 3;
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

    static class CompareSizesByArea implements Comparator<Size> {
        CompareSizesByArea() {
        }

        @Override // java.util.Comparator
        public int compare(Size lhs, Size rhs) {
            return Long.signum((((long) lhs.getWidth()) * ((long) lhs.getHeight())) - (((long) rhs.getWidth()) * ((long) rhs.getHeight())));
        }
    }

    public AgoraBufferedCamera2(Context context) {
        this.mContext = context;
        CaptureParameters captureParameters = new CaptureParameters();
        this.mParameters = captureParameters;
        captureParameters.width = 640;
        captureParameters.height = 480;
        captureParameters.fps = 15;
        captureParameters.pixelFormat = MediaIO.PixelFormat.I420.intValue();
        this.mParameters.bufferType = MediaIO.BufferType.BYTE_BUFFER.intValue();
        this.mParameters.captureType = MediaIO.CaptureType.CAMERA.intValue();
        this.mParameters.contentHint = MediaIO.ContentHint.NONE.intValue();
    }

    public void useFrontCamera(boolean front) {
        this.isCameraFrontFacing = front;
    }

    private void allocateBuffer(int pixelFormat) {
        int bitsPerPixel;
        if (pixelFormat == MediaIO.PixelFormat.I420.intValue()) {
            CaptureParameters captureParameters = this.mParameters;
            bitsPerPixel = ((captureParameters.width * captureParameters.height) * ImageFormat.getBitsPerPixel(35)) / 8;
        } else {
            bitsPerPixel = 0;
        }
        if (this.mParameters.bufferType == MediaIO.BufferType.BYTE_ARRAY.intValue()) {
            this.mBufferArrayData = new byte[bitsPerPixel];
        } else if (this.mParameters.bufferType == MediaIO.BufferType.BYTE_BUFFER.intValue()) {
            this.mBufferArrayData = new byte[bitsPerPixel];
            this.mByteBufferData = ByteBuffer.allocateDirect(bitsPerPixel);
        }
    }

    private static Size chooseOptimalSize(Size[] choices, int textureViewWidth, int textureViewHeight, int maxWidth, int maxHeight, Size aspectRatio) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int width = aspectRatio.getWidth();
        int height = aspectRatio.getHeight();
        for (Size size : choices) {
            if (size.getWidth() <= maxWidth && size.getHeight() <= maxHeight && size.getHeight() == (size.getWidth() * height) / width) {
                if (size.getWidth() < textureViewWidth || size.getHeight() < textureViewHeight) {
                    arrayList2.add(size);
                } else {
                    arrayList.add(size);
                }
            }
        }
        if (arrayList.size() > 0) {
            return (Size) Collections.min(arrayList, new CompareSizesByArea());
        }
        if (arrayList2.size() > 0) {
            return (Size) Collections.max(arrayList2, new CompareSizesByArea());
        }
        Log.e(TAG, "Couldn't find any suitable preview size");
        return choices[0];
    }

    private void closeCamera() {
        try {
            try {
                this.mCameraOpenCloseLock.acquire();
                CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
                if (cameraCaptureSession != null) {
                    cameraCaptureSession.close();
                    this.mCaptureSession = null;
                }
                CameraDevice cameraDevice = this.mCameraDevice;
                if (cameraDevice != null) {
                    cameraDevice.close();
                    this.mCameraDevice = null;
                }
                ImageReader imageReader = this.mImageReader;
                if (imageReader != null) {
                    imageReader.close();
                    this.mImageReader = null;
                }
                this.mCameraOpenCloseLock.release();
            } catch (InterruptedException e) {
                throw new RuntimeException("Interrupted while trying to lock camera closing.", e);
            }
        } catch (Throwable th) {
            this.mCameraOpenCloseLock.release();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createCameraPreviewSession() {
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = this.mCameraDevice.createCaptureRequest(1);
            this.mPreviewRequestBuilder = builderCreateCaptureRequest;
            CaptureRequest.Key key = CaptureRequest.CONTROL_AE_MODE;
            builderCreateCaptureRequest.set(key, 1);
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_MODE, 1);
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.FALSE);
            if (this.mFlashSupported) {
                this.mPreviewRequestBuilder.set(key, 2);
            }
            this.mPreviewRequestBuilder.addTarget(this.mImageReader.getSurface());
            this.mCameraDevice.createCaptureSession(Arrays.asList(this.mImageReader.getSurface()), new CameraCaptureSession.StateCallback() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.4
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    if (AgoraBufferedCamera2.this.mCameraDevice == null) {
                        return;
                    }
                    AgoraBufferedCamera2.this.mCaptureSession = cameraCaptureSession;
                    try {
                        AgoraBufferedCamera2 agoraBufferedCamera2 = AgoraBufferedCamera2.this;
                        agoraBufferedCamera2.mPreviewRequest = agoraBufferedCamera2.mPreviewRequestBuilder.build();
                        AgoraBufferedCamera2.this.mCaptureSession.setRepeatingRequest(AgoraBufferedCamera2.this.mPreviewRequest, AgoraBufferedCamera2.this.mCaptureCallback, AgoraBufferedCamera2.this.mBackgroundHandler);
                    } catch (CameraAccessException | IllegalStateException e) {
                        e.printStackTrace();
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    Log.e(AgoraBufferedCamera2.TAG, "Configure camera failed");
                }
            }, null);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }

    private int getAndroidImageFormat(int mediaioFormat) {
        return mediaioFormat == MediaIO.PixelFormat.I420.intValue() ? 35 : 0;
    }

    private int getDeviceOrientation() {
        int rotation = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
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

    private void setUpCameraOutputs(int width, int height) {
        CameraManager cameraManager = (CameraManager) this.mContext.getSystemService("camera");
        try {
            for (String str : cameraManager.getCameraIdList()) {
                this.mCameraId = str;
                CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                this.mCharacteristics = cameraCharacteristics;
                this.cameraOrientation = ((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
                Boolean bool = (Boolean) this.mCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
                this.mFlashSupported = bool == null ? false : bool.booleanValue();
                if (!this.isCameraFrontFacing || ((Integer) this.mCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() == 0) {
                    break;
                    break;
                }
            }
            CaptureParameters captureParameters = this.mParameters;
            ImageReader imageReaderNewInstance = ImageReader.newInstance(captureParameters.width, captureParameters.height, getAndroidImageFormat(captureParameters.pixelFormat), 2);
            this.mImageReader = imageReaderNewInstance;
            imageReaderNewInstance.setOnImageAvailableListener(this.mOnImageAvailableListener, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        } catch (NullPointerException unused) {
        }
    }

    private void startBackgroundThread() {
        HandlerThread handlerThread = new HandlerThread("CameraBackground");
        this.mBackgroundThread = handlerThread;
        handlerThread.start();
        this.mBackgroundHandler = new Handler(this.mBackgroundThread.getLooper());
    }

    private void stopBackgroundThread() {
        HandlerThread handlerThread = this.mBackgroundThread;
        if (handlerThread == null) {
            return;
        }
        handlerThread.quitSafely();
        try {
            this.mBackgroundThread.join();
            this.mBackgroundThread = null;
            this.mBackgroundHandler = null;
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public int getBufferType() {
        return this.mParameters.bufferType;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public int getCaptureType() {
        return this.mParameters.captureType;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public int getContentHint() {
        return this.mParameters.contentHint;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public boolean onInitialize(IVideoFrameConsumer consumer) {
        this.consumer = consumer;
        allocateBuffer(this.mParameters.pixelFormat);
        return true;
    }

    private void doStop() {
        closeCamera();
        stopBackgroundThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFrameOrientation() {
        int deviceOrientation = getDeviceOrientation();
        if (!this.isCameraFrontFacing) {
            deviceOrientation = 360 - deviceOrientation;
        }
        return (this.cameraOrientation + deviceOrientation) % 360;
    }

    private void openCamera(int width, int height) {
        setUpCameraOutputs(width, height);
        CameraManager cameraManager = (CameraManager) this.mContext.getSystemService("camera");
        try {
            if (this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                cameraManager.openCamera(this.mCameraId, this.mStateCallback, this.mBackgroundHandler);
                return;
            }
            throw new RuntimeException("Time out waiting to lock camera opening.");
        } catch (CameraAccessException e) {
            Log.e(TAG, e.toString());
        } catch (InterruptedException e2) {
            throw new RuntimeException("Interrupted while trying to lock camera opening.", e2);
        } catch (SecurityException e6) {
            Log.e(TAG, e6.toString());
        }
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public void onDispose() {
        doStop();
        this.mBufferArrayData = null;
        this.mByteBufferData = null;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public boolean onStart() {
        startBackgroundThread();
        CaptureParameters captureParameters = this.mParameters;
        openCamera(captureParameters.width, captureParameters.height);
        return true;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public void onStop() {
        doStop();
    }

    public AgoraBufferedCamera2(Context context, CaptureParameters parameters) {
        this.mContext = context;
        if (parameters != null) {
            CaptureParameters captureParameters = new CaptureParameters();
            this.mParameters = captureParameters;
            captureParameters.width = parameters.width;
            captureParameters.height = parameters.height;
            captureParameters.fps = parameters.fps;
            captureParameters.pixelFormat = parameters.pixelFormat;
            captureParameters.bufferType = parameters.bufferType;
            captureParameters.captureType = parameters.captureType;
            captureParameters.contentHint = parameters.contentHint;
        }
    }
}
