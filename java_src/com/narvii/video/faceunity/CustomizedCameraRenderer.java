package com.narvii.video.faceunity;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.util.AttributeSet;
import android.util.Log;
import android.view.WindowManager;
import com.narvii.video.R;
import com.narvii.video.gles.OESTexture;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Locale;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes3.dex */
public class CustomizedCameraRenderer extends GLSurfaceView implements GLSurfaceView.Renderer, SurfaceTexture.OnFrameAvailableListener {
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CustomizedRenderer";
    private Camera mCamera;
    private int mCameraIndex;
    private int mCameraPreviewHeight;
    private int mCameraPreviewWidth;
    private int mCameraRotation;
    private TextureRenderer mCameraToFbo;
    private Context mContext;
    private int mDstTexture;
    private EGLContext mEGLCurrentContext;
    private int mFbo;
    private TextureRenderer mFboToView;
    private ByteBuffer mFullQuadVertices;
    private final Shader mOffscreenShader;
    private OnEGLContextListener mOnEGLContextHandler;
    private OnFrameAvailableListener mOnFrameAvailableHandler;
    private float[] mOrientationM;
    private boolean mPreviewing;
    private float[] mRatio;
    public final OESTexture mSrcTexture;
    private volatile SurfaceTexture mSurfaceTexture;
    private volatile boolean mUpdateTexture;
    private int mViewHeight;
    private int mViewWidth;

    public interface OnEGLContextListener {
        void onEGLContextReady(EGLContext eGLContext);
    }

    public interface OnFrameAvailableListener {
        void onFrameAvailable(int i, EGLContext eGLContext, int i2);
    }

    private static class MyContextFactory implements GLSurfaceView.EGLContextFactory {
        private static int EGL_CONTEXT_CLIENT_VERSION = 12440;
        private CustomizedCameraRenderer mRenderer;

        public MyContextFactory(CustomizedCameraRenderer customizedCameraRenderer) {
            Log.d(CustomizedCameraRenderer.LOG_TAG, "MyContextFactory " + customizedCameraRenderer);
            this.mRenderer = customizedCameraRenderer;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            EGLContext eGLContext;
            Log.d(CustomizedCameraRenderer.LOG_TAG, "createContext " + egl10 + " " + eGLDisplay + " " + eGLConfig);
            checkEglError("before createContext", egl10);
            int[] iArr = {EGL_CONTEXT_CLIENT_VERSION, 2, 12344};
            if (this.mRenderer.mEGLCurrentContext == null) {
                this.mRenderer.mEGLCurrentContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, iArr);
                eGLContext = this.mRenderer.mEGLCurrentContext;
            } else {
                eGLContext = this.mRenderer.mEGLCurrentContext;
            }
            checkEglError("after createContext", egl10);
            return eGLContext;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            Log.d(CustomizedCameraRenderer.LOG_TAG, "destroyContext " + egl10 + " " + eGLDisplay + " " + eGLContext + " " + this.mRenderer.mEGLCurrentContext);
            if (this.mRenderer.mEGLCurrentContext == null) {
                egl10.eglDestroyContext(eGLDisplay, eGLContext);
            }
        }

        private static void checkEglError(String str, EGL10 egl10) {
            while (true) {
                int iEglGetError = egl10.eglGetError();
                if (iEglGetError == 12288) {
                    return;
                } else {
                    Log.d(CustomizedCameraRenderer.LOG_TAG, String.format(Locale.US, "%s: EGL error: 0x%x", str, Integer.valueOf(iEglGetError)));
                }
            }
        }
    }

    public CustomizedCameraRenderer(Context context) {
        super(context);
        this.mCameraIndex = 0;
        this.mCameraRotation = 0;
        this.mSrcTexture = new OESTexture();
        this.mOffscreenShader = new Shader();
        this.mUpdateTexture = false;
        this.mOrientationM = new float[16];
        this.mRatio = new float[2];
        this.mPreviewing = false;
        this.mCameraPreviewWidth = 1080;
        this.mCameraPreviewHeight = 720;
        this.mFbo = 0;
        this.mDstTexture = 0;
        this.mContext = context;
        init();
    }

    public CustomizedCameraRenderer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCameraIndex = 0;
        this.mCameraRotation = 0;
        this.mSrcTexture = new OESTexture();
        this.mOffscreenShader = new Shader();
        this.mUpdateTexture = false;
        this.mOrientationM = new float[16];
        this.mRatio = new float[2];
        this.mPreviewing = false;
        this.mCameraPreviewWidth = 1080;
        this.mCameraPreviewHeight = 720;
        this.mFbo = 0;
        this.mDstTexture = 0;
        this.mContext = context;
        init();
    }

    private void init() {
        this.mFullQuadVertices = ByteBuffer.allocateDirect(8);
        this.mFullQuadVertices.put(new byte[]{-1, 1, -1, -1, 1, 1, 1, -1}).position(0);
        setEGLContextFactory(new MyContextFactory(this));
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(this);
        setRenderMode(0);
        setDebugFlags(2);
    }

    public void setOnEGLContextHandler(OnEGLContextListener onEGLContextListener) {
        this.mOnEGLContextHandler = onEGLContextListener;
    }

    public void setOnFrameAvailableHandler(OnFrameAvailableListener onFrameAvailableListener) {
        this.mOnFrameAvailableHandler = onFrameAvailableListener;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public synchronized void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.mUpdateTexture = true;
        requestRender();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        initCameraTexture();
        Log.d(LOG_TAG, "onSurfaceCreated " + gl10 + " end");
    }

    public void initCameraTexture() {
        EGLContext eGLContext;
        try {
            this.mOffscreenShader.setProgram(R.raw.vshader, R.raw.fshader, this.mContext);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.mCamera == null) {
            this.mCamera = Camera.open(this.mCameraIndex);
        }
        OnEGLContextListener onEGLContextListener = this.mOnEGLContextHandler;
        if (onEGLContextListener != null && (eGLContext = this.mEGLCurrentContext) != null) {
            onEGLContextListener.onEGLContextReady(eGLContext);
        }
        this.mSrcTexture.init();
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        this.mSurfaceTexture = new SurfaceTexture(this.mSrcTexture.getTextureId());
        this.mSurfaceTexture.setOnFrameAvailableListener(this);
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    @SuppressLint({"NewApi"})
    public synchronized void onSurfaceChanged(GL10 gl10, int i, int i2) {
        this.mViewWidth = i;
        this.mViewHeight = i2;
        if (this.mPreviewing) {
            this.mCamera.stopPreview();
        }
        try {
            this.mCamera.setPreviewTexture(this.mSurfaceTexture);
        } catch (IOException e) {
            Log.w(LOG_TAG, "setPreviewTexture " + Log.getStackTraceString(e));
        }
        Camera.Parameters parameters = this.mCamera.getParameters();
        if (parameters.getSupportedPreviewSizes().size() > 0) {
            this.mCameraPreviewWidth = 1280;
            this.mCameraPreviewHeight = 720;
            List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
            for (int[] iArr : supportedPreviewFpsRange) {
                Log.d(LOG_TAG, "supported fps range " + iArr[0] + " " + iArr[1]);
            }
            int i3 = (supportedPreviewFpsRange.get(0)[1] + supportedPreviewFpsRange.get(0)[1]) / 2;
            if (supportedPreviewFpsRange.size() > 0) {
                if (i3 > supportedPreviewFpsRange.get(0)[1]) {
                    i3 = supportedPreviewFpsRange.get(0)[1];
                }
                Log.d(LOG_TAG, "setPreviewFpsRange " + supportedPreviewFpsRange.get(0)[0] + " " + i3);
                parameters.setPreviewFpsRange(supportedPreviewFpsRange.get(0)[0], i3);
            }
            Log.d(LOG_TAG, "setPreviewSize " + this.mCameraPreviewWidth + " " + this.mCameraPreviewHeight);
            parameters.setPreviewSize(this.mCameraPreviewWidth, this.mCameraPreviewHeight);
        }
        if (this.mContext.getResources().getConfiguration().orientation == 1) {
            Matrix.setRotateM(this.mOrientationM, 0, 90.0f, 0.0f, 0.0f, 1.0f);
            float f = 0 * 1.0f;
            this.mRatio[1] = f / i2;
            this.mRatio[0] = f / i;
        } else {
            Matrix.setRotateM(this.mOrientationM, 0, 0.0f, 0.0f, 0.0f, 1.0f);
            float f2 = 0 * 1.0f;
            this.mRatio[1] = f2 / i2;
            this.mRatio[0] = f2 / i;
        }
        this.mCamera.setParameters(parameters);
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(this.mCameraIndex, cameraInfo);
        this.mCameraRotation = cameraInfo.orientation;
        this.mCamera.startPreview();
        String strFlatten = this.mCamera.getParameters().flatten();
        this.mPreviewing = true;
        Log.d(LOG_TAG, "onSurfaceChanged end " + gl10 + " " + strFlatten + " " + this.mCameraRotation + " " + this.mPreviewing);
    }

    public int getDisplayRotation() {
        int rotation = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 0) {
            return 0;
        }
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public synchronized void onDrawFrame(GL10 gl10) {
        int i;
        if (this.mFbo == 0) {
            createFbo(1080, 1920);
        }
        if (this.mCameraToFbo == null) {
            this.mCameraToFbo = new TextureRenderer(true);
        }
        if (this.mFboToView == null) {
            this.mFboToView = new TextureRenderer(false);
        }
        int displayRotation = getDisplayRotation();
        if (this.mUpdateTexture) {
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES20.glClear(16640);
            this.mSurfaceTexture.updateTexImage();
            GLES20.glFinish();
            GLES20.glViewport(0, 0, 1080, 1920);
            GLES20.glBindFramebuffer(36160, this.mFbo);
            this.mCameraToFbo.rotate(this.mCameraRotation);
            this.mCameraToFbo.draw(this.mSrcTexture.getTextureId());
            GLES20.glBindFramebuffer(36160, 0);
            int i2 = (int) ((((this.mCameraPreviewHeight * this.mViewHeight) * 100.0f) / this.mCameraPreviewWidth) / 100.0f);
            int i3 = this.mViewHeight;
            if (this.mCameraIndex == 1) {
                i = ((-displayRotation) + 180) % 360;
            } else {
                i = (displayRotation + 180) % 360;
            }
            GLES20.glViewport((this.mViewWidth - i2) / 2, 0, i2, i3);
            this.mFboToView.rotate(i);
            this.mFboToView.draw(this.mDstTexture);
            this.mUpdateTexture = false;
            if (this.mOnFrameAvailableHandler != null) {
                this.mOnFrameAvailableHandler.onFrameAvailable(this.mDstTexture, this.mEGLCurrentContext, i);
            }
        }
    }

    private int createFbo(int i, int i2) {
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        GLES20.glGenFramebuffers(1, iArr2, 0);
        GLES20.glGenTextures(1, iArr, 0);
        this.mFbo = iArr2[0];
        this.mDstTexture = iArr[0];
        GLES20.glBindTexture(3553, this.mDstTexture);
        GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glBindFramebuffer(36160, this.mFbo);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.mDstTexture, 0);
        if (GLES20.glCheckFramebufferStatus(36160) != 36053) {
            Log.e(LOG_TAG, "Failed to create framebuffer!!!");
        }
        return 0;
    }

    @TargetApi(14)
    public void onDestroy() {
        this.mUpdateTexture = false;
        this.mSurfaceTexture.release();
        this.mPreviewing = false;
        this.mEGLCurrentContext = null;
        Camera camera = this.mCamera;
        if (camera != null) {
            camera.stopPreview();
            this.mCamera.setPreviewCallback(null);
            this.mCamera.release();
        }
        this.mCamera = null;
    }
}
