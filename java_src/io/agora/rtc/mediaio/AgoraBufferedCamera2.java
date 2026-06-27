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
import com.tonyodev.fetch.FetchService;
import io.agora.rtc.internal.Logging;
import io.agora.rtc.mediaio.MediaIO;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

@TargetApi(21)
/* loaded from: classes4.dex */
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
    private Semaphore mCameraOpenCloseLock;
    private CameraCaptureSession.CaptureCallback mCaptureCallback;
    private CameraCaptureSession mCaptureSession;
    private CameraCharacteristics mCharacteristics;
    private Context mContext;
    private boolean mFlashSupported;
    private ImageReader mImageReader;
    private final ImageReader.OnImageAvailableListener mOnImageAvailableListener;
    private CaptureParameters mParameters;
    private CaptureRequest mPreviewRequest;
    private CaptureRequest.Builder mPreviewRequestBuilder;
    private int mState;
    private final CameraDevice.StateCallback mStateCallback;

    public AgoraBufferedCamera2(Context context) {
        this.mState = 0;
        this.mCameraOpenCloseLock = new Semaphore(1);
        this.mOnImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.1
            @Override // android.media.ImageReader.OnImageAvailableListener
            public void onImageAvailable(ImageReader imageReader) {
                Image image = null;
                try {
                    try {
                        try {
                            Image imageAcquireLatestImage = imageReader.acquireLatestImage();
                            if (imageAcquireLatestImage == null) {
                                if (imageAcquireLatestImage != null) {
                                    imageAcquireLatestImage.close();
                                    return;
                                }
                                return;
                            }
                            if (imageAcquireLatestImage.getFormat() == 35 && imageAcquireLatestImage.getPlanes().length == 3) {
                                if (imageReader.getWidth() != imageAcquireLatestImage.getWidth() || imageReader.getHeight() != imageAcquireLatestImage.getHeight()) {
                                    throw new IllegalStateException("ImageReader size " + imageReader.getWidth() + "x" + imageReader.getHeight() + " did not match Image size: " + imageAcquireLatestImage.getWidth() + "x" + imageAcquireLatestImage.getHeight());
                                }
                                AgoraBufferedCamera2.readImageIntoBuffer(imageAcquireLatestImage, AgoraBufferedCamera2.this.mBufferArrayData);
                                int frameOrientation = AgoraBufferedCamera2.this.getFrameOrientation();
                                if (AgoraBufferedCamera2.this.consumer != null && AgoraBufferedCamera2.this.mParameters.bufferType == MediaIO.BufferType.BYTE_ARRAY.intValue()) {
                                    AgoraBufferedCamera2.this.consumer.consumeByteArrayFrame(AgoraBufferedCamera2.this.mBufferArrayData, AgoraBufferedCamera2.this.mParameters.pixelFormat, imageAcquireLatestImage.getWidth(), imageAcquireLatestImage.getHeight(), frameOrientation, System.currentTimeMillis());
                                } else if (AgoraBufferedCamera2.this.consumer != null && AgoraBufferedCamera2.this.mParameters.bufferType == MediaIO.BufferType.BYTE_BUFFER.intValue()) {
                                    AgoraBufferedCamera2.this.mByteBufferData.rewind();
                                    AgoraBufferedCamera2.this.mByteBufferData.put(AgoraBufferedCamera2.this.mBufferArrayData, 0, AgoraBufferedCamera2.this.mBufferArrayData.length);
                                    AgoraBufferedCamera2.this.consumer.consumeByteBufferFrame(AgoraBufferedCamera2.this.mByteBufferData, AgoraBufferedCamera2.this.mParameters.pixelFormat, imageAcquireLatestImage.getWidth(), imageAcquireLatestImage.getHeight(), frameOrientation, System.currentTimeMillis());
                                }
                                if (imageAcquireLatestImage != null) {
                                    imageAcquireLatestImage.close();
                                    return;
                                }
                                return;
                            }
                            Logging.e(AgoraBufferedCamera2.TAG, "Unexpected image format: " + imageAcquireLatestImage.getFormat() + "or #planes:" + imageAcquireLatestImage.getPlanes().length);
                            if (imageAcquireLatestImage != null) {
                                imageAcquireLatestImage.close();
                            }
                        } catch (IllegalStateException e) {
                            Log.e(AgoraBufferedCamera2.TAG, "acquireLastest Image():", e);
                            if (0 != 0) {
                                image.close();
                            }
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
        this.mStateCallback = new CameraDevice.StateCallback() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.2
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) throws CameraAccessException {
                AgoraBufferedCamera2.this.mCameraOpenCloseLock.release();
                AgoraBufferedCamera2.this.mCameraDevice = cameraDevice;
                AgoraBufferedCamera2.this.createCameraPreviewSession();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                AgoraBufferedCamera2.this.mCameraOpenCloseLock.release();
                cameraDevice.close();
                AgoraBufferedCamera2.this.mCameraDevice = null;
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i) {
                AgoraBufferedCamera2.this.mCameraOpenCloseLock.release();
                cameraDevice.close();
                AgoraBufferedCamera2.this.mCameraDevice = null;
            }
        };
        this.mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.3
            private void process(CaptureResult captureResult) {
                Integer num;
                Integer num2;
                int i = AgoraBufferedCamera2.this.mState;
                if (i != 0) {
                    if (i == 1) {
                        Integer num3 = (Integer) captureResult.get(CaptureResult.CONTROL_AF_STATE);
                        if (num3 == null) {
                            return;
                        }
                        if ((4 == num3.intValue() || 5 == num3.intValue()) && (num = (Integer) captureResult.get(CaptureResult.CONTROL_AE_STATE)) != null) {
                            num.intValue();
                            return;
                        }
                        return;
                    }
                    if (i != 2) {
                        if (i == 3 && (num2 = (Integer) captureResult.get(CaptureResult.CONTROL_AE_STATE)) != null) {
                            num2.intValue();
                            return;
                        }
                        return;
                    }
                    Integer num4 = (Integer) captureResult.get(CaptureResult.CONTROL_AE_STATE);
                    if (num4 == null || num4.intValue() == 5 || num4.intValue() == 4) {
                        AgoraBufferedCamera2.this.mState = 3;
                    }
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
                process(captureResult);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                process(totalCaptureResult);
            }
        };
        this.mContext = context;
        this.mParameters = new CaptureParameters();
        CaptureParameters captureParameters = this.mParameters;
        captureParameters.width = 640;
        captureParameters.height = FetchService.QUERY_SINGLE;
        captureParameters.fps = 15;
        captureParameters.pixelFormat = MediaIO.PixelFormat.I420.intValue();
        this.mParameters.bufferType = MediaIO.BufferType.BYTE_BUFFER.intValue();
    }

    public AgoraBufferedCamera2(Context context, CaptureParameters captureParameters) {
        this.mState = 0;
        this.mCameraOpenCloseLock = new Semaphore(1);
        this.mOnImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.1
            @Override // android.media.ImageReader.OnImageAvailableListener
            public void onImageAvailable(ImageReader imageReader) {
                Image image = null;
                try {
                    try {
                        try {
                            Image imageAcquireLatestImage = imageReader.acquireLatestImage();
                            if (imageAcquireLatestImage == null) {
                                if (imageAcquireLatestImage != null) {
                                    imageAcquireLatestImage.close();
                                    return;
                                }
                                return;
                            }
                            if (imageAcquireLatestImage.getFormat() == 35 && imageAcquireLatestImage.getPlanes().length == 3) {
                                if (imageReader.getWidth() != imageAcquireLatestImage.getWidth() || imageReader.getHeight() != imageAcquireLatestImage.getHeight()) {
                                    throw new IllegalStateException("ImageReader size " + imageReader.getWidth() + "x" + imageReader.getHeight() + " did not match Image size: " + imageAcquireLatestImage.getWidth() + "x" + imageAcquireLatestImage.getHeight());
                                }
                                AgoraBufferedCamera2.readImageIntoBuffer(imageAcquireLatestImage, AgoraBufferedCamera2.this.mBufferArrayData);
                                int frameOrientation = AgoraBufferedCamera2.this.getFrameOrientation();
                                if (AgoraBufferedCamera2.this.consumer != null && AgoraBufferedCamera2.this.mParameters.bufferType == MediaIO.BufferType.BYTE_ARRAY.intValue()) {
                                    AgoraBufferedCamera2.this.consumer.consumeByteArrayFrame(AgoraBufferedCamera2.this.mBufferArrayData, AgoraBufferedCamera2.this.mParameters.pixelFormat, imageAcquireLatestImage.getWidth(), imageAcquireLatestImage.getHeight(), frameOrientation, System.currentTimeMillis());
                                } else if (AgoraBufferedCamera2.this.consumer != null && AgoraBufferedCamera2.this.mParameters.bufferType == MediaIO.BufferType.BYTE_BUFFER.intValue()) {
                                    AgoraBufferedCamera2.this.mByteBufferData.rewind();
                                    AgoraBufferedCamera2.this.mByteBufferData.put(AgoraBufferedCamera2.this.mBufferArrayData, 0, AgoraBufferedCamera2.this.mBufferArrayData.length);
                                    AgoraBufferedCamera2.this.consumer.consumeByteBufferFrame(AgoraBufferedCamera2.this.mByteBufferData, AgoraBufferedCamera2.this.mParameters.pixelFormat, imageAcquireLatestImage.getWidth(), imageAcquireLatestImage.getHeight(), frameOrientation, System.currentTimeMillis());
                                }
                                if (imageAcquireLatestImage != null) {
                                    imageAcquireLatestImage.close();
                                    return;
                                }
                                return;
                            }
                            Logging.e(AgoraBufferedCamera2.TAG, "Unexpected image format: " + imageAcquireLatestImage.getFormat() + "or #planes:" + imageAcquireLatestImage.getPlanes().length);
                            if (imageAcquireLatestImage != null) {
                                imageAcquireLatestImage.close();
                            }
                        } catch (IllegalStateException e) {
                            Log.e(AgoraBufferedCamera2.TAG, "acquireLastest Image():", e);
                            if (0 != 0) {
                                image.close();
                            }
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
        this.mStateCallback = new CameraDevice.StateCallback() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.2
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) throws CameraAccessException {
                AgoraBufferedCamera2.this.mCameraOpenCloseLock.release();
                AgoraBufferedCamera2.this.mCameraDevice = cameraDevice;
                AgoraBufferedCamera2.this.createCameraPreviewSession();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                AgoraBufferedCamera2.this.mCameraOpenCloseLock.release();
                cameraDevice.close();
                AgoraBufferedCamera2.this.mCameraDevice = null;
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i) {
                AgoraBufferedCamera2.this.mCameraOpenCloseLock.release();
                cameraDevice.close();
                AgoraBufferedCamera2.this.mCameraDevice = null;
            }
        };
        this.mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.3
            private void process(CaptureResult captureResult) {
                Integer num;
                Integer num2;
                int i = AgoraBufferedCamera2.this.mState;
                if (i != 0) {
                    if (i == 1) {
                        Integer num3 = (Integer) captureResult.get(CaptureResult.CONTROL_AF_STATE);
                        if (num3 == null) {
                            return;
                        }
                        if ((4 == num3.intValue() || 5 == num3.intValue()) && (num = (Integer) captureResult.get(CaptureResult.CONTROL_AE_STATE)) != null) {
                            num.intValue();
                            return;
                        }
                        return;
                    }
                    if (i != 2) {
                        if (i == 3 && (num2 = (Integer) captureResult.get(CaptureResult.CONTROL_AE_STATE)) != null) {
                            num2.intValue();
                            return;
                        }
                        return;
                    }
                    Integer num4 = (Integer) captureResult.get(CaptureResult.CONTROL_AE_STATE);
                    if (num4 == null || num4.intValue() == 5 || num4.intValue() == 4) {
                        AgoraBufferedCamera2.this.mState = 3;
                    }
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
                process(captureResult);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                process(totalCaptureResult);
            }
        };
        this.mContext = context;
        if (captureParameters != null) {
            this.mParameters = new CaptureParameters();
            CaptureParameters captureParameters2 = this.mParameters;
            captureParameters2.width = captureParameters.width;
            captureParameters2.height = captureParameters.height;
            captureParameters2.fps = captureParameters.fps;
            captureParameters2.pixelFormat = captureParameters.pixelFormat;
            captureParameters2.bufferType = captureParameters.bufferType;
        }
    }

    public void useFrontCamera(boolean z) {
        this.isCameraFrontFacing = z;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public boolean onInitialize(IVideoFrameConsumer iVideoFrameConsumer) {
        this.consumer = iVideoFrameConsumer;
        allocateBuffer(this.mParameters.pixelFormat);
        return true;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public boolean onStart() throws CameraAccessException {
        startBackgroundThread();
        CaptureParameters captureParameters = this.mParameters;
        openCamera(captureParameters.width, captureParameters.height);
        return true;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public void onStop() {
        doStop();
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public void onDispose() {
        doStop();
        this.mBufferArrayData = null;
        this.mByteBufferData = null;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public int getBufferType() {
        return this.mParameters.bufferType;
    }

    private void allocateBuffer(int i) {
        int bitsPerPixel;
        if (i == MediaIO.PixelFormat.I420.intValue()) {
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

    private void openCamera(int i, int i2) throws CameraAccessException {
        setUpCameraOutputs(i, i2);
        CameraManager cameraManager = (CameraManager) this.mContext.getSystemService("camera");
        try {
            if (!this.mCameraOpenCloseLock.tryAcquire(2500L, TimeUnit.MILLISECONDS)) {
                throw new RuntimeException("Time out waiting to lock camera opening.");
            }
            cameraManager.openCamera(this.mCameraId, this.mStateCallback, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            Log.e(TAG, e.toString());
        } catch (InterruptedException e2) {
            throw new RuntimeException("Interrupted while trying to lock camera opening.", e2);
        } catch (SecurityException e3) {
            Log.e(TAG, e3.toString());
        }
    }

    private void doStop() {
        closeCamera();
        stopBackgroundThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createCameraPreviewSession() throws CameraAccessException {
        try {
            this.mPreviewRequestBuilder = this.mCameraDevice.createCaptureRequest(1);
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AE_MODE, 1);
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_MODE, 1);
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AF_MODE, 3);
            this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AE_LOCK, false);
            if (this.mFlashSupported) {
                this.mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AE_MODE, 2);
            }
            this.mPreviewRequestBuilder.addTarget(this.mImageReader.getSurface());
            this.mCameraDevice.createCaptureSession(Arrays.asList(this.mImageReader.getSurface()), new CameraCaptureSession.StateCallback() { // from class: io.agora.rtc.mediaio.AgoraBufferedCamera2.4
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(CameraCaptureSession cameraCaptureSession) throws CameraAccessException {
                    if (AgoraBufferedCamera2.this.mCameraDevice == null) {
                        return;
                    }
                    AgoraBufferedCamera2.this.mCaptureSession = cameraCaptureSession;
                    try {
                        AgoraBufferedCamera2.this.mPreviewRequest = AgoraBufferedCamera2.this.mPreviewRequestBuilder.build();
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

    private void setUpCameraOutputs(int i, int i2) throws CameraAccessException {
        CameraManager cameraManager = (CameraManager) this.mContext.getSystemService("camera");
        try {
            for (String str : cameraManager.getCameraIdList()) {
                this.mCameraId = str;
                this.mCharacteristics = cameraManager.getCameraCharacteristics(str);
                this.cameraOrientation = ((Integer) this.mCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
                Boolean bool = (Boolean) this.mCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
                this.mFlashSupported = bool == null ? false : bool.booleanValue();
                if (!this.isCameraFrontFacing || ((Integer) this.mCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() == 0) {
                    break;
                }
            }
            this.mImageReader = ImageReader.newInstance(this.mParameters.width, this.mParameters.height, getAndroidImageFormat(this.mParameters.pixelFormat), 2);
            this.mImageReader.setOnImageAvailableListener(this.mOnImageAvailableListener, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        } catch (NullPointerException unused) {
        }
    }

    private int getAndroidImageFormat(int i) {
        return i == MediaIO.PixelFormat.I420.intValue() ? 35 : 0;
    }

    static class CompareSizesByArea implements Comparator<Size> {
        CompareSizesByArea() {
        }

        @Override // java.util.Comparator
        public int compare(Size size, Size size2) {
            return Long.signum((size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight()));
        }
    }

    private static Size chooseOptimalSize(Size[] sizeArr, int i, int i2, int i3, int i4, Size size) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int width = size.getWidth();
        int height = size.getHeight();
        for (Size size2 : sizeArr) {
            if (size2.getWidth() <= i3 && size2.getHeight() <= i4 && size2.getHeight() == (size2.getWidth() * height) / width) {
                if (size2.getWidth() >= i && size2.getHeight() >= i2) {
                    arrayList.add(size2);
                } else {
                    arrayList2.add(size2);
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
        return sizeArr[0];
    }

    private void closeCamera() {
        try {
            try {
                this.mCameraOpenCloseLock.acquire();
                if (this.mCaptureSession != null) {
                    this.mCaptureSession.close();
                    this.mCaptureSession = null;
                }
                if (this.mCameraDevice != null) {
                    this.mCameraDevice.close();
                    this.mCameraDevice = null;
                }
                if (this.mImageReader != null) {
                    this.mImageReader.close();
                    this.mImageReader = null;
                }
            } catch (InterruptedException e) {
                throw new RuntimeException("Interrupted while trying to lock camera closing.", e);
            }
        } finally {
            this.mCameraOpenCloseLock.release();
        }
    }

    private void startBackgroundThread() {
        this.mBackgroundThread = new HandlerThread("CameraBackground");
        this.mBackgroundThread.start();
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

    /* JADX INFO: Access modifiers changed from: private */
    public static void readImageIntoBuffer(Image image, byte[] bArr) {
        int width = image.getWidth();
        int height = image.getHeight();
        Image.Plane[] planes = image.getPlanes();
        int i = 0;
        int i2 = 0;
        while (i < planes.length) {
            ByteBuffer buffer = planes[i].getBuffer();
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
    public int getFrameOrientation() {
        int deviceOrientation = getDeviceOrientation();
        if (!this.isCameraFrontFacing) {
            deviceOrientation = 360 - deviceOrientation;
        }
        return (this.cameraOrientation + deviceOrientation) % 360;
    }
}
