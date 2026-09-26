package io.agora.rtc.mediaio;

import android.content.Context;
import android.hardware.Camera;
import android.util.Log;
import android.view.WindowManager;
import io.agora.rtc.gl.RendererCommon;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class AgoraTextureCamera extends TextureSource {
    private static final String TAG = "AgoraTextureCamera";
    private Camera camera;
    private Camera.CameraInfo info;
    private Context mContext;

    public AgoraTextureCamera(Context context, int width, int height) {
        super(null, width, height);
        this.mContext = context;
    }

    @Override // io.agora.rtc.mediaio.TextureSource, io.agora.rtc.mediaio.SurfaceTextureHelper.OnTextureFrameAvailableListener
    public void onTextureFrameAvailable(int oesTextureId, float[] transformMatrix, long timestampNs) {
        IVideoFrameConsumer iVideoFrameConsumer;
        super.onTextureFrameAvailable(oesTextureId, transformMatrix, timestampNs);
        int frameOrientation = getFrameOrientation();
        if (this.info.facing == 1) {
            transformMatrix = RendererCommon.multiplyMatrices(transformMatrix, RendererCommon.horizontalFlipMatrix());
        }
        float[] fArr = transformMatrix;
        WeakReference<IVideoFrameConsumer> weakReference = this.mConsumer;
        if (weakReference == null || (iVideoFrameConsumer = weakReference.get()) == null) {
            return;
        }
        iVideoFrameConsumer.consumeTextureFrame(oesTextureId, MediaIO.PixelFormat.TEXTURE_OES.intValue(), this.mWidth, this.mHeight, frameOrientation, System.currentTimeMillis(), fArr);
    }

    public AgoraTextureCamera(Context context, int width, int height, boolean copyOesTo2DTex) {
        super(null, width, height, copyOesTo2DTex);
        this.mContext = context;
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

    private void openCamera() {
        if (this.camera != null) {
            throw new RuntimeException("camera already initialized");
        }
        this.info = new Camera.CameraInfo();
        int numberOfCameras = Camera.getNumberOfCameras();
        for (int i10 = 0; i10 < numberOfCameras; i10++) {
            Camera.getCameraInfo(i10, this.info);
            if (this.info.facing == 1) {
                this.camera = Camera.open(i10);
                break;
            }
        }
        if (this.camera == null) {
            Log.d(TAG, "No front-facing camera found; opening default");
            this.camera = Camera.open();
        }
        Camera camera = this.camera;
        if (camera == null) {
            throw new RuntimeException("Unable to open camera");
        }
        Camera.Parameters parameters = camera.getParameters();
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        parameters.setPreviewFpsRange(supportedPreviewFpsRange.get(supportedPreviewFpsRange.size() - 1)[0], supportedPreviewFpsRange.get(supportedPreviewFpsRange.size() - 1)[1]);
        parameters.setPreviewSize(this.mWidth, this.mHeight);
        parameters.setRecordingHint(true);
        this.camera.setParameters(parameters);
        Camera.Size previewSize = parameters.getPreviewSize();
        String str = previewSize.width + "x" + previewSize.height;
        Log.i(TAG, "Camera config: " + str);
    }

    private void releaseCamera() {
        Camera camera = this.camera;
        if (camera != null) {
            camera.stopPreview();
            try {
                this.camera.setPreviewTexture(null);
            } catch (Exception unused) {
                Log.e(TAG, "failed to set Preview Texture");
            }
            this.camera.release();
            this.camera = null;
            Log.d(TAG, "releaseCamera -- done");
        }
    }

    @Override // io.agora.rtc.mediaio.TextureSource
    protected boolean onCapturerStarted() {
        this.camera.startPreview();
        return true;
    }

    @Override // io.agora.rtc.mediaio.TextureSource
    protected void onCapturerStopped() {
        this.camera.stopPreview();
    }

    private int getFrameOrientation() {
        int deviceOrientation = getDeviceOrientation();
        Camera.CameraInfo cameraInfo = this.info;
        if (cameraInfo.facing == 0) {
            deviceOrientation = 360 - deviceOrientation;
        }
        return (cameraInfo.orientation + deviceOrientation) % 360;
    }

    @Override // io.agora.rtc.mediaio.TextureSource
    protected void onCapturerClosed() {
        releaseCamera();
    }

    @Override // io.agora.rtc.mediaio.TextureSource
    protected boolean onCapturerOpened() {
        try {
            openCamera();
            this.camera.setPreviewTexture(getSurfaceTexture());
            this.camera.startPreview();
            return true;
        } catch (IOException unused) {
            Log.e(TAG, "initialize: failed to initalize camera device");
            return false;
        }
    }

    @Override // io.agora.rtc.mediaio.TextureSource, io.agora.rtc.mediaio.SurfaceTextureHelper.OnTextureFrameAvailableListener
    public void onTextureFrameAvailable(int texId, MediaIO.PixelFormat format, float[] transformMatrix, long timestampNs) {
        IVideoFrameConsumer iVideoFrameConsumer;
        super.onTextureFrameAvailable(texId, format, transformMatrix, timestampNs);
        int frameOrientation = getFrameOrientation();
        if (this.info.facing == 1) {
            transformMatrix = RendererCommon.multiplyMatrices(transformMatrix, RendererCommon.horizontalFlipMatrix());
        }
        float[] fArr = transformMatrix;
        WeakReference<IVideoFrameConsumer> weakReference = this.mConsumer;
        if (weakReference == null || (iVideoFrameConsumer = weakReference.get()) == null) {
            return;
        }
        iVideoFrameConsumer.consumeTextureFrame(texId, format.intValue(), this.mWidth, this.mHeight, frameOrientation, System.currentTimeMillis(), fArr);
    }
}
