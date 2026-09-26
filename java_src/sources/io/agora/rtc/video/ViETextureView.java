package io.agora.rtc.video;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.opengl.GLES20;
import android.view.Display;
import android.view.MotionEvent;
import android.view.WindowManager;
import com.narvii.video.SceneEditorFragment;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import io.agora.rtc.internal.Logging;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes5.dex */
public class ViETextureView extends GLTextureView implements GLTextureView.Renderer {
    private static final boolean DEBUG = false;
    private static String TAG = "ViETextureView";
    private int mLastRotation;
    private ReentrantLock nativeFunctionLock;
    private boolean nativeFunctionsRegisted;
    private int nativeGLPragram;
    private boolean nativeGLResourceUpdated;
    private int[] nativeGLTextureId;
    private long nativeObject;
    private boolean openGLCreated;
    private boolean surfaceCreated;
    private int viewHeight;
    private int viewWidth;

    private static class ConfigChooser implements GLTextureView.EGLConfigChooser {
        private static int EGL_OPENGL_ES2_BIT = 4;
        private static int[] s_configAttribs2 = {12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344};
        protected int mAlphaSize;
        protected int mBlueSize;
        protected int mDepthSize;
        protected int mGreenSize;
        protected int mRedSize;
        protected int mStencilSize;
        private int[] mValue = new int[1];

        private void printConfigs(EGL10 egl, EGLDisplay display, EGLConfig[] configs) {
            int length = configs.length;
            Logging.w(ViETextureView.TAG, String.format("%d configurations", Integer.valueOf(length)));
            for (int i10 = 0; i10 < length; i10++) {
                Logging.w(ViETextureView.TAG, String.format("Configuration %d:\n", Integer.valueOf(i10)));
                printConfig(egl, display, configs[i10]);
            }
        }

        @Override // io.agora.rtc.video.GLTextureView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display) {
            int[] iArr = new int[1];
            egl.eglChooseConfig(display, s_configAttribs2, null, 0, iArr);
            int i10 = iArr[0];
            if (i10 <= 0) {
                Logging.w(ViETextureView.TAG, "no configurations found");
                return null;
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i10];
            egl.eglChooseConfig(display, s_configAttribs2, eGLConfigArr, i10, iArr);
            return chooseConfig(egl, display, eGLConfigArr);
        }

        private int findConfigAttrib(EGL10 egl, EGLDisplay display, EGLConfig config, int attribute, int defaultValue) {
            return egl.eglGetConfigAttrib(display, config, attribute, this.mValue) ? this.mValue[0] : defaultValue;
        }

        private void printConfig(EGL10 egl, EGLDisplay display, EGLConfig config) {
            int[] iArr = {12320, 12321, 12322, 12323, 12324, 12325, 12326, 12327, 12328, 12329, 12330, 12331, 12332, 12333, 12334, 12335, 12336, 12337, 12338, 12339, 12340, 12343, 12342, 12341, SceneEditorFragment.REQUEST_CODE_BASIC_CROPPING, SceneEditorFragment.REQUEST_CODE_VIDEO_PIP, SceneEditorFragment.REQUEST_SELECT_PIP_VIDEO, 12348, 12349, 12350, 12351, 12352, 12354};
            String[] strArr = {"EGL_BUFFER_SIZE", "EGL_ALPHA_SIZE", "EGL_BLUE_SIZE", "EGL_GREEN_SIZE", "EGL_RED_SIZE", "EGL_DEPTH_SIZE", "EGL_STENCIL_SIZE", "EGL_CONFIG_CAVEAT", "EGL_CONFIG_ID", "EGL_LEVEL", "EGL_MAX_PBUFFER_HEIGHT", "EGL_MAX_PBUFFER_PIXELS", "EGL_MAX_PBUFFER_WIDTH", "EGL_NATIVE_RENDERABLE", "EGL_NATIVE_VISUAL_ID", "EGL_NATIVE_VISUAL_TYPE", "EGL_PRESERVED_RESOURCES", "EGL_SAMPLES", "EGL_SAMPLE_BUFFERS", "EGL_SURFACE_TYPE", "EGL_TRANSPARENT_TYPE", "EGL_TRANSPARENT_RED_VALUE", "EGL_TRANSPARENT_GREEN_VALUE", "EGL_TRANSPARENT_BLUE_VALUE", "EGL_BIND_TO_TEXTURE_RGB", "EGL_BIND_TO_TEXTURE_RGBA", "EGL_MIN_SWAP_INTERVAL", "EGL_MAX_SWAP_INTERVAL", "EGL_LUMINANCE_SIZE", "EGL_ALPHA_MASK_SIZE", "EGL_COLOR_BUFFER_TYPE", "EGL_RENDERABLE_TYPE", "EGL_CONFORMANT"};
            int[] iArr2 = new int[1];
            for (int i10 = 0; i10 < 33; i10++) {
                int i11 = iArr[i10];
                String str = strArr[i10];
                if (egl.eglGetConfigAttrib(display, config, i11, iArr2)) {
                    Logging.w(ViETextureView.TAG, String.format("  %s: %d\n", str, Integer.valueOf(iArr2[0])));
                } else {
                    while (egl.eglGetError() != 12288) {
                    }
                }
            }
        }

        public ConfigChooser(int r, int g, int b7, int a7, int depth, int stencil) {
            this.mRedSize = r;
            this.mGreenSize = g;
            this.mBlueSize = b7;
            this.mAlphaSize = a7;
            this.mDepthSize = depth;
            this.mStencilSize = stencil;
        }

        public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display, EGLConfig[] configs) {
            for (EGLConfig eGLConfig : configs) {
                int iFindConfigAttrib = findConfigAttrib(egl, display, eGLConfig, 12325, 0);
                int iFindConfigAttrib2 = findConfigAttrib(egl, display, eGLConfig, 12326, 0);
                if (iFindConfigAttrib >= this.mDepthSize && iFindConfigAttrib2 >= this.mStencilSize) {
                    int iFindConfigAttrib3 = findConfigAttrib(egl, display, eGLConfig, 12324, 0);
                    int iFindConfigAttrib4 = findConfigAttrib(egl, display, eGLConfig, 12323, 0);
                    int iFindConfigAttrib5 = findConfigAttrib(egl, display, eGLConfig, 12322, 0);
                    int iFindConfigAttrib6 = findConfigAttrib(egl, display, eGLConfig, 12321, 0);
                    if (iFindConfigAttrib3 == this.mRedSize && iFindConfigAttrib4 == this.mGreenSize && iFindConfigAttrib5 == this.mBlueSize && iFindConfigAttrib6 == this.mAlphaSize) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }
    }

    public ViETextureView(Context context) {
        super(context);
        this.surfaceCreated = false;
        this.openGLCreated = false;
        this.nativeFunctionsRegisted = false;
        this.nativeFunctionLock = new ReentrantLock();
        this.nativeObject = 0L;
        this.viewWidth = 0;
        this.viewHeight = 0;
        this.nativeGLPragram = 0;
        this.nativeGLTextureId = new int[]{0, 0, 0};
        this.nativeGLResourceUpdated = false;
        this.mLastRotation = -1;
        init(false, 0, 0);
    }

    private native int CreateOpenGLNative(long nativeObject, int width, int height);

    private native void DrawNative(long nativeObject);

    private native void OnCfgChangedNative(long nativeObject, int ori);

    public void UpdateOpenGLResource(int[] value) {
        this.nativeGLPragram = value[0];
        int i10 = 0;
        while (i10 < 3) {
            int i11 = i10 + 1;
            this.nativeGLTextureId[i10] = value[i11];
            i10 = i11;
        }
        this.nativeGLResourceUpdated = true;
        Logging.i(TAG, "UpdateOpenGLResource, program = " + value[0] + " texture[0~2] = " + value[1] + " ," + value[2] + " ," + value[3]);
    }

    @Override // io.agora.rtc.video.GLTextureView, android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("io.agora", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Override // io.agora.rtc.video.GLTextureView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    @Override // io.agora.rtc.video.GLTextureView.Renderer
    public void onSurfaceChanged(GL10 gl, int width, int height) {
        this.surfaceCreated = true;
        this.viewWidth = width;
        this.viewHeight = height;
        Logging.i("AGORA_SDK", "Surface changed to width " + width + " height " + height);
        this.nativeFunctionLock.lock();
        try {
            try {
                if (this.nativeFunctionsRegisted && CreateOpenGLNative(this.nativeObject, width, height) == 0) {
                    this.openGLCreated = true;
                }
            } catch (Exception unused) {
                Logging.w("AGORA_SDK", "Exception occurs when create RtcEngine");
            }
        } finally {
            this.nativeFunctionLock.unlock();
        }
    }

    @Override // io.agora.rtc.video.GLTextureView.Renderer
    public void onSurfaceCreated(GL10 gl, EGLConfig config) {
    }

    @Override // io.agora.rtc.video.GLTextureView.Renderer
    public void onSurfaceDestroyed(GL10 gl) {
    }

    public static boolean IsSupported(Context context) {
        return ((ActivityManager) context.getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion >= 131072;
    }

    public static boolean UseOpenGL2(Object renderWindow) {
        return ViETextureView.class.isInstance(renderWindow);
    }

    private void init(boolean translucent, int depth, int stencil) {
        setEGLContextClientVersion(2);
        setEGLConfigChooser(translucent ? new ConfigChooser(8, 8, 8, 8, depth, stencil) : new ConfigChooser(5, 6, 5, 0, depth, stencil));
        setRenderer(this);
        setRenderMode(0);
    }

    public void DeRegisterNativeObject() {
        this.nativeFunctionLock.lock();
        this.nativeFunctionsRegisted = false;
        this.openGLCreated = false;
        this.nativeObject = 0L;
        this.nativeFunctionLock.unlock();
        releaseOpenGLResource();
    }

    public void ReDraw() {
        if (this.surfaceCreated) {
            requestRender();
        }
    }

    public void RegisterNativeObject(long nativeObject) {
        this.nativeFunctionLock.lock();
        this.nativeObject = nativeObject;
        this.nativeFunctionsRegisted = true;
        this.nativeFunctionLock.unlock();
    }

    public void releaseOpenGLResource() {
        if (this.nativeGLResourceUpdated) {
            queueEvent(new Runnable() { // from class: io.agora.rtc.video.ViETextureView.1
                @Override // java.lang.Runnable
                public void run() {
                    Logging.i(ViETextureView.TAG, "releaseOpenGLResource, value = " + ViETextureView.this.nativeGLPragram + " ," + ViETextureView.this.nativeGLTextureId[0] + " ," + ViETextureView.this.nativeGLTextureId[1] + " ," + ViETextureView.this.nativeGLTextureId[2]);
                    GLES20.glDeleteProgram(ViETextureView.this.nativeGLPragram);
                    GLES20.glDeleteTextures(3, ViETextureView.this.nativeGLTextureId, 0);
                    int iGlGetError = GLES20.glGetError();
                    if (iGlGetError != 0) {
                        Logging.e(ViETextureView.TAG, "glDelete error: " + iGlGetError);
                    }
                }
            });
            this.nativeGLResourceUpdated = false;
        }
    }

    private static void checkEglError(String prompt, EGL10 egl) {
        while (true) {
            int iEglGetError = egl.eglGetError();
            if (iEglGetError != 12288) {
                try {
                    Logging.e(TAG, String.format("%s: EGL error: 0x%x", prompt, Integer.valueOf(iEglGetError)));
                } catch (Exception unused) {
                    Logging.e("AGORA_SDK", "egl error!!, video may not displayed!!");
                }
            } else {
                return;
            }
        }
    }

    private int checkOrientation() {
        Display defaultDisplay;
        if (getContext() != null && getContext().getSystemService("window") != null && (defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay()) != null) {
            try {
                return defaultDisplay.getRotation();
            } catch (RuntimeException unused) {
                Logging.e(TAG, "checkOrientation display getRotation throwout exception");
                return this.mLastRotation;
            }
        }
        return this.mLastRotation;
    }

    private void updateOrientation() {
        int iCheckOrientation = checkOrientation();
        if (iCheckOrientation != this.mLastRotation) {
            this.nativeFunctionLock.lock();
            if (this.nativeFunctionsRegisted) {
                OnCfgChangedNative(this.nativeObject, iCheckOrientation);
            }
            this.mLastRotation = iCheckOrientation;
            this.nativeFunctionLock.unlock();
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateOrientation();
    }

    @Override // io.agora.rtc.video.GLTextureView.Renderer
    public void onDrawFrame(GL10 gl) {
        updateOrientation();
        this.nativeFunctionLock.lock();
        if (this.nativeFunctionsRegisted && this.surfaceCreated) {
            if (!this.openGLCreated) {
                if (CreateOpenGLNative(this.nativeObject, this.viewWidth, this.viewHeight) != 0) {
                    this.nativeFunctionLock.unlock();
                    return;
                }
                this.openGLCreated = true;
            }
            DrawNative(this.nativeObject);
            this.nativeFunctionLock.unlock();
            return;
        }
        this.nativeFunctionLock.unlock();
    }

    public ViETextureView(Context context, boolean translucent, int depth, int stencil) {
        super(context);
        this.surfaceCreated = false;
        this.openGLCreated = false;
        this.nativeFunctionsRegisted = false;
        this.nativeFunctionLock = new ReentrantLock();
        this.nativeObject = 0L;
        this.viewWidth = 0;
        this.viewHeight = 0;
        this.nativeGLPragram = 0;
        this.nativeGLTextureId = new int[]{0, 0, 0};
        this.nativeGLResourceUpdated = false;
        this.mLastRotation = -1;
        init(translucent, depth, stencil);
    }
}
