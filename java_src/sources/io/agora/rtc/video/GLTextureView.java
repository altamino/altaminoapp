package io.agora.rtc.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLDebugHelper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import io.agora.rtc.internal.Logging;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes2.dex */
public class GLTextureView extends TextureView implements TextureView.SurfaceTextureListener, View.OnLayoutChangeListener {
    public static final int DEBUG_CHECK_GL_ERROR = 1;
    public static final int DEBUG_LOG_GL_CALLS = 2;
    private static final boolean LOG_ATTACH_DETACH = false;
    private static final boolean LOG_EGL = false;
    private static final boolean LOG_GL_STATE = false;
    private static final boolean LOG_PAUSE_RESUME = false;
    private static final boolean LOG_RENDERER = false;
    private static final boolean LOG_RENDERER_DRAW_FRAME = false;
    private static final boolean LOG_SURFACE = false;
    private static final boolean LOG_THREADS = false;
    public static final int RENDERMODE_CONTINUOUSLY = 1;
    public static final int RENDERMODE_WHEN_DIRTY = 0;
    private static final String TAG = "GLTextureView";
    private static final GLThreadManager sGLThreadManager = new GLThreadManager();
    private int mDebugFlags;
    private boolean mDetached;
    private EGLConfigChooser mEGLConfigChooser;
    private int mEGLContextClientVersion;
    private EGLContextFactory mEGLContextFactory;
    private EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
    private GLThread mGLThread;
    private GLWrapper mGLWrapper;
    private boolean mPreserveEGLContextOnPause;
    private Renderer mRenderer;
    private final WeakReference<GLTextureView> mThisWeakRef;

    private abstract class BaseConfigChooser implements EGLConfigChooser {
        protected int[] mConfigSpec;

        @Override // io.agora.rtc.video.GLTextureView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display) {
            int[] iArr = new int[1];
            if (!egl.eglChooseConfig(display, this.mConfigSpec, null, 0, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig failed");
            }
            int i10 = iArr[0];
            if (i10 <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i10];
            if (!egl.eglChooseConfig(display, this.mConfigSpec, eGLConfigArr, i10, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            EGLConfig eGLConfigChooseConfig = chooseConfig(egl, display, eGLConfigArr);
            if (eGLConfigChooseConfig != null) {
                return eGLConfigChooseConfig;
            }
            throw new IllegalArgumentException("No config chosen");
        }

        abstract EGLConfig chooseConfig(EGL10 egl, EGLDisplay display, EGLConfig[] configs);

        public BaseConfigChooser(int[] configSpec) {
            this.mConfigSpec = filterConfigSpec(configSpec);
        }

        private int[] filterConfigSpec(int[] configSpec) {
            if (GLTextureView.this.mEGLContextClientVersion != 2) {
                return configSpec;
            }
            int length = configSpec.length;
            int[] iArr = new int[length + 2];
            int i10 = length - 1;
            System.arraycopy(configSpec, 0, iArr, 0, i10);
            iArr[i10] = 12352;
            iArr[length] = 4;
            iArr[length + 1] = 12344;
            return iArr;
        }
    }

    private class ComponentSizeChooser extends BaseConfigChooser {
        protected int mAlphaSize;
        protected int mBlueSize;
        protected int mDepthSize;
        protected int mGreenSize;
        protected int mRedSize;
        protected int mStencilSize;
        private int[] mValue;

        @Override // io.agora.rtc.video.GLTextureView.BaseConfigChooser
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

        public ComponentSizeChooser(int redSize, int greenSize, int blueSize, int alphaSize, int depthSize, int stencilSize) {
            super(new int[]{12324, redSize, 12323, greenSize, 12322, blueSize, 12321, alphaSize, 12325, depthSize, 12326, stencilSize, 12344});
            this.mValue = new int[1];
            this.mRedSize = redSize;
            this.mGreenSize = greenSize;
            this.mBlueSize = blueSize;
            this.mAlphaSize = alphaSize;
            this.mDepthSize = depthSize;
            this.mStencilSize = stencilSize;
        }

        private int findConfigAttrib(EGL10 egl, EGLDisplay display, EGLConfig config, int attribute, int defaultValue) {
            return egl.eglGetConfigAttrib(display, config, attribute, this.mValue) ? this.mValue[0] : defaultValue;
        }
    }

    private class DefaultContextFactory implements EGLContextFactory {
        private int EGL_CONTEXT_CLIENT_VERSION;

        private DefaultContextFactory() {
            this.EGL_CONTEXT_CLIENT_VERSION = 12440;
        }

        @Override // io.agora.rtc.video.GLTextureView.EGLContextFactory
        public EGLContext createContext(EGL10 egl, EGLDisplay display, EGLConfig config) {
            int[] iArr = {this.EGL_CONTEXT_CLIENT_VERSION, GLTextureView.this.mEGLContextClientVersion, 12344};
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            if (GLTextureView.this.mEGLContextClientVersion == 0) {
                iArr = null;
            }
            return egl.eglCreateContext(display, config, eGLContext, iArr);
        }

        @Override // io.agora.rtc.video.GLTextureView.EGLContextFactory
        public void destroyContext(EGL10 egl, EGLDisplay display, EGLContext context) {
            if (!egl.eglDestroyContext(display, context)) {
                Logging.e("DefaultContextFactory", "display:" + display + " context: " + context);
                EglHelper.throwEglException("eglDestroyContex", egl.eglGetError());
            }
        }
    }

    public interface EGLConfigChooser {
        EGLConfig chooseConfig(EGL10 egl, EGLDisplay display);
    }

    public interface EGLContextFactory {
        EGLContext createContext(EGL10 egl, EGLDisplay display, EGLConfig eglConfig);

        void destroyContext(EGL10 egl, EGLDisplay display, EGLContext context);
    }

    public interface EGLWindowSurfaceFactory {
        EGLSurface createWindowSurface(EGL10 egl, EGLDisplay display, EGLConfig config, Object nativeWindow);

        void destroySurface(EGL10 egl, EGLDisplay display, EGLSurface surface);
    }

    private static class EglHelper {
        EGL10 mEgl;
        EGLConfig mEglConfig;
        EGLContext mEglContext;
        EGLDisplay mEglDisplay;
        EGLSurface mEglSurface;
        private WeakReference<GLTextureView> mGLSurfaceViewWeakRef;

        private void throwEglException(String function) {
            throwEglException(function, this.mEgl.eglGetError());
        }

        private void destroySurfaceImp() {
            EGLSurface eGLSurface;
            EGLSurface eGLSurface2 = this.mEglSurface;
            if (eGLSurface2 == null || eGLSurface2 == (eGLSurface = EGL10.EGL_NO_SURFACE)) {
                return;
            }
            this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            GLTextureView gLTextureView = this.mGLSurfaceViewWeakRef.get();
            if (gLTextureView != null) {
                gLTextureView.mEGLWindowSurfaceFactory.destroySurface(this.mEgl, this.mEglDisplay, this.mEglSurface);
            }
            this.mEglSurface = null;
        }

        public static String formatEglError(String function, int error) {
            return function + " failed: " + error;
        }

        public static void throwEglException(String function, int error) {
            throw new RuntimeException(formatEglError(function, error));
        }

        GL createGL() {
            GL gl = this.mEglContext.getGL();
            GLTextureView gLTextureView = this.mGLSurfaceViewWeakRef.get();
            if (gLTextureView == null) {
                return gl;
            }
            if (gLTextureView.mGLWrapper != null) {
                gl = gLTextureView.mGLWrapper.wrap(gl);
            }
            if ((gLTextureView.mDebugFlags & 3) != 0) {
                return GLDebugHelper.wrap(gl, (gLTextureView.mDebugFlags & 1) == 0 ? 0 : 1, (gLTextureView.mDebugFlags & 2) != 0 ? new LogWriter() : null);
            }
            return gl;
        }

        public boolean createSurface() {
            if (this.mEgl == null) {
                throw new RuntimeException("egl not initialized");
            }
            if (this.mEglDisplay == null) {
                throw new RuntimeException("eglDisplay not initialized");
            }
            if (this.mEglConfig == null) {
                throw new RuntimeException("mEglConfig not initialized");
            }
            destroySurfaceImp();
            GLTextureView gLTextureView = this.mGLSurfaceViewWeakRef.get();
            if (gLTextureView != null) {
                this.mEglSurface = gLTextureView.mEGLWindowSurfaceFactory.createWindowSurface(this.mEgl, this.mEglDisplay, this.mEglConfig, gLTextureView.getSurfaceTexture());
            } else {
                this.mEglSurface = null;
            }
            EGLSurface eGLSurface = this.mEglSurface;
            if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
                if (this.mEgl.eglGetError() == 12299) {
                    Logging.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                }
                return false;
            }
            if (this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, this.mEglContext)) {
                return true;
            }
            logEglErrorAsWarning("EGLHelper", "eglMakeCurrent", this.mEgl.eglGetError());
            return false;
        }

        public void finish() {
            if (this.mEglContext != null) {
                GLTextureView gLTextureView = this.mGLSurfaceViewWeakRef.get();
                if (gLTextureView != null) {
                    gLTextureView.mEGLContextFactory.destroyContext(this.mEgl, this.mEglDisplay, this.mEglContext);
                }
                this.mEglContext = null;
            }
            EGLDisplay eGLDisplay = this.mEglDisplay;
            if (eGLDisplay != null) {
                this.mEgl.eglTerminate(eGLDisplay);
                this.mEglDisplay = null;
            }
        }

        public int swap() {
            if (this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface)) {
                return 12288;
            }
            return this.mEgl.eglGetError();
        }

        public EglHelper(WeakReference<GLTextureView> glSurfaceViewWeakRef) {
            this.mGLSurfaceViewWeakRef = glSurfaceViewWeakRef;
        }

        public static void logEglErrorAsWarning(String tag, String function, int error) {
            Logging.w(tag, formatEglError(function, error));
        }

        public void destroySurface() {
            destroySurfaceImp();
        }

        public void start() {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            this.mEgl = egl10;
            EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            this.mEglDisplay = eGLDisplayEglGetDisplay;
            if (eGLDisplayEglGetDisplay != EGL10.EGL_NO_DISPLAY) {
                if (this.mEgl.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                    GLTextureView gLTextureView = this.mGLSurfaceViewWeakRef.get();
                    if (gLTextureView == null) {
                        this.mEglConfig = null;
                        this.mEglContext = null;
                    } else {
                        this.mEglConfig = gLTextureView.mEGLConfigChooser.chooseConfig(this.mEgl, this.mEglDisplay);
                        this.mEglContext = gLTextureView.mEGLContextFactory.createContext(this.mEgl, this.mEglDisplay, this.mEglConfig);
                    }
                    EGLContext eGLContext = this.mEglContext;
                    if (eGLContext == null || eGLContext == EGL10.EGL_NO_CONTEXT) {
                        this.mEglContext = null;
                        throwEglException("createContext");
                    }
                    this.mEglSurface = null;
                    return;
                }
                throw new RuntimeException("eglInitialize failed");
            }
            throw new RuntimeException("eglGetDisplay failed");
        }
    }

    static class GLThread extends Thread {
        private EglHelper mEglHelper;
        private boolean mExited;
        private WeakReference<GLTextureView> mGLSurfaceViewWeakRef;
        private boolean mHasSurface;
        private boolean mHaveEglContext;
        private boolean mHaveEglSurface;
        private boolean mPaused;
        private boolean mRenderComplete;
        private boolean mRequestPaused;
        private boolean mShouldExit;
        private boolean mShouldReleaseEglContext;
        private boolean mSurfaceIsBad;
        private boolean mWaitingForSurface;
        private ArrayList<Runnable> mEventQueue = new ArrayList<>();
        private boolean mSizeChanged = true;
        private int mWidth = 0;
        private int mHeight = 0;
        private boolean mRequestRender = true;
        private int mRenderMode = 1;

        private boolean readyToDraw() {
            return !this.mPaused && this.mHasSurface && !this.mSurfaceIsBad && this.mWidth > 0 && this.mHeight > 0 && (this.mRequestRender || this.mRenderMode == 1);
        }

        public void requestReleaseEglContextLocked() {
            this.mShouldReleaseEglContext = true;
            GLTextureView.sGLThreadManager.notifyAll();
        }

        private void guardedRun() throws InterruptedException {
            boolean z6;
            boolean z10;
            GLTextureView gLTextureView;
            this.mEglHelper = new EglHelper(this.mGLSurfaceViewWeakRef);
            this.mHaveEglContext = false;
            this.mHaveEglSurface = false;
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = false;
            boolean z14 = false;
            boolean z15 = false;
            boolean z16 = false;
            boolean z17 = false;
            int i10 = 0;
            int i11 = 0;
            boolean z18 = false;
            GL10 gl10 = null;
            while (true) {
                Runnable runnableRemove = null;
                while (true) {
                    try {
                        synchronized (GLTextureView.sGLThreadManager) {
                            while (true) {
                                if (this.mShouldExit) {
                                    synchronized (GLTextureView.sGLThreadManager) {
                                        stopEglSurfaceLocked();
                                        stopEglContextLocked();
                                    }
                                    return;
                                }
                                if (!this.mEventQueue.isEmpty()) {
                                    runnableRemove = this.mEventQueue.remove(0);
                                    z6 = false;
                                    break;
                                }
                                boolean z19 = this.mPaused;
                                boolean z20 = this.mRequestPaused;
                                if (z19 != z20) {
                                    this.mPaused = z20;
                                    GLTextureView.sGLThreadManager.notifyAll();
                                } else {
                                    z20 = false;
                                }
                                if (this.mShouldReleaseEglContext) {
                                    stopEglSurfaceLocked();
                                    stopEglContextLocked();
                                    this.mShouldReleaseEglContext = false;
                                    z13 = true;
                                }
                                if (z11) {
                                    stopEglSurfaceLocked();
                                    stopEglContextLocked();
                                    z11 = false;
                                }
                                if (z20 && this.mHaveEglSurface) {
                                    stopEglSurfaceLocked();
                                }
                                if (z20 && this.mHaveEglContext && ((gLTextureView = this.mGLSurfaceViewWeakRef.get()) == null || !gLTextureView.mPreserveEGLContextOnPause || GLTextureView.sGLThreadManager.shouldReleaseEGLContextWhenPausing())) {
                                    stopEglContextLocked();
                                }
                                if (z20 && GLTextureView.sGLThreadManager.shouldTerminateEGLWhenPausing()) {
                                    this.mEglHelper.finish();
                                }
                                if (!this.mHasSurface && !this.mWaitingForSurface) {
                                    if (this.mHaveEglSurface) {
                                        stopEglSurfaceLocked();
                                    }
                                    this.mWaitingForSurface = true;
                                    this.mSurfaceIsBad = false;
                                    GLTextureView.sGLThreadManager.notifyAll();
                                }
                                if (this.mHasSurface && this.mWaitingForSurface) {
                                    this.mWaitingForSurface = false;
                                    GLTextureView.sGLThreadManager.notifyAll();
                                }
                                if (z12) {
                                    this.mRenderComplete = true;
                                    GLTextureView.sGLThreadManager.notifyAll();
                                    z12 = false;
                                    z18 = false;
                                }
                                if (readyToDraw()) {
                                    if (!this.mHaveEglContext) {
                                        if (z13) {
                                            z13 = false;
                                        } else if (GLTextureView.sGLThreadManager.tryAcquireEglContextLocked(this)) {
                                            try {
                                                this.mEglHelper.start();
                                                this.mHaveEglContext = true;
                                                GLTextureView.sGLThreadManager.notifyAll();
                                                z14 = true;
                                            } catch (RuntimeException e) {
                                                GLTextureView.sGLThreadManager.releaseEglContextLocked(this);
                                                throw e;
                                            }
                                        }
                                    }
                                    if (this.mHaveEglContext && !this.mHaveEglSurface) {
                                        this.mHaveEglSurface = true;
                                        z15 = true;
                                        z16 = true;
                                        z17 = true;
                                    }
                                    if (this.mHaveEglSurface) {
                                        if (this.mSizeChanged) {
                                            i10 = this.mWidth;
                                            i11 = this.mHeight;
                                            z6 = false;
                                            this.mSizeChanged = false;
                                            z15 = true;
                                            z17 = true;
                                            z18 = true;
                                        } else {
                                            z6 = false;
                                        }
                                        this.mRequestRender = z6;
                                        GLTextureView.sGLThreadManager.notifyAll();
                                        break;
                                    }
                                }
                                GLTextureView.sGLThreadManager.wait();
                            }
                        }
                        if (runnableRemove != null) {
                            break;
                        }
                        if (z15) {
                            if (this.mEglHelper.createSurface()) {
                                z15 = z6;
                            } else {
                                synchronized (GLTextureView.sGLThreadManager) {
                                    this.mSurfaceIsBad = true;
                                    GLTextureView.sGLThreadManager.notifyAll();
                                }
                            }
                        }
                        if (z16) {
                            GL10 gl11 = (GL10) this.mEglHelper.createGL();
                            GLTextureView.sGLThreadManager.checkGLDriver(gl11);
                            z16 = z6;
                            gl10 = gl11;
                        }
                        if (z14) {
                            GLTextureView gLTextureView2 = this.mGLSurfaceViewWeakRef.get();
                            if (gLTextureView2 != null) {
                                gLTextureView2.mRenderer.onSurfaceCreated(gl10, this.mEglHelper.mEglConfig);
                            }
                            z14 = z6;
                        }
                        if (z17) {
                            GLTextureView gLTextureView3 = this.mGLSurfaceViewWeakRef.get();
                            if (gLTextureView3 != null) {
                                gLTextureView3.mRenderer.onSurfaceChanged(gl10, i10, i11);
                            }
                            z17 = z6;
                        }
                        GLTextureView gLTextureView4 = this.mGLSurfaceViewWeakRef.get();
                        if (gLTextureView4 != null) {
                            gLTextureView4.mRenderer.onDrawFrame(gl10);
                        }
                        int iSwap = this.mEglHelper.swap();
                        if (iSwap == 12288) {
                            z10 = true;
                        } else if (iSwap != 12302) {
                            EglHelper.logEglErrorAsWarning("GLThread", "eglSwapBuffers", iSwap);
                            synchronized (GLTextureView.sGLThreadManager) {
                                z10 = true;
                                this.mSurfaceIsBad = true;
                                GLTextureView.sGLThreadManager.notifyAll();
                            }
                        } else {
                            z10 = true;
                            z11 = true;
                        }
                        if (z18) {
                            z12 = z10;
                        }
                    } catch (Throwable th) {
                        synchronized (GLTextureView.sGLThreadManager) {
                            stopEglSurfaceLocked();
                            stopEglContextLocked();
                            throw th;
                        }
                    }
                }
                runnableRemove.run();
            }
        }

        private void stopEglContextLocked() {
            if (this.mHaveEglContext) {
                this.mEglHelper.finish();
                this.mHaveEglContext = false;
                GLTextureView.sGLThreadManager.releaseEglContextLocked(this);
            }
        }

        private void stopEglSurfaceLocked() {
            if (this.mHaveEglSurface) {
                this.mHaveEglSurface = false;
                this.mEglHelper.destroySurface();
            }
        }

        public boolean ableToDraw() {
            return this.mHaveEglContext && this.mHaveEglSurface && readyToDraw();
        }

        public void queueEvent(Runnable r) {
            if (r == null) {
                throw new IllegalArgumentException("r must not be null");
            }
            synchronized (GLTextureView.sGLThreadManager) {
                this.mEventQueue.add(r);
                GLTextureView.sGLThreadManager.notifyAll();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            setName("GLThread " + getId());
            try {
                guardedRun();
            } catch (InterruptedException unused) {
            } finally {
                GLTextureView.sGLThreadManager.threadExiting(this);
            }
        }

        public void setRenderMode(int renderMode) {
            if (renderMode < 0 || renderMode > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (GLTextureView.sGLThreadManager) {
                this.mRenderMode = renderMode;
                GLTextureView.sGLThreadManager.notifyAll();
            }
        }

        GLThread(WeakReference<GLTextureView> glSurfaceViewWeakRef) {
            this.mGLSurfaceViewWeakRef = glSurfaceViewWeakRef;
        }

        public int getRenderMode() {
            int i10;
            synchronized (GLTextureView.sGLThreadManager) {
                i10 = this.mRenderMode;
            }
            return i10;
        }

        public void onPause() {
            synchronized (GLTextureView.sGLThreadManager) {
                this.mRequestPaused = true;
                GLTextureView.sGLThreadManager.notifyAll();
                while (!this.mExited && !this.mPaused) {
                    try {
                        GLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void onResume() {
            synchronized (GLTextureView.sGLThreadManager) {
                this.mRequestPaused = false;
                this.mRequestRender = true;
                this.mRenderComplete = false;
                GLTextureView.sGLThreadManager.notifyAll();
                while (!this.mExited && this.mPaused && !this.mRenderComplete) {
                    try {
                        GLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void onWindowResize(int w5, int h) {
            synchronized (GLTextureView.sGLThreadManager) {
                this.mWidth = w5;
                this.mHeight = h;
                this.mSizeChanged = true;
                this.mRequestRender = true;
                this.mRenderComplete = false;
                GLTextureView.sGLThreadManager.notifyAll();
                while (!this.mExited && !this.mPaused && !this.mRenderComplete && ableToDraw()) {
                    try {
                        GLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void requestExitAndWait() {
            synchronized (GLTextureView.sGLThreadManager) {
                this.mShouldExit = true;
                GLTextureView.sGLThreadManager.notifyAll();
                while (!this.mExited) {
                    try {
                        GLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void requestRender() {
            synchronized (GLTextureView.sGLThreadManager) {
                this.mRequestRender = true;
                GLTextureView.sGLThreadManager.notifyAll();
            }
        }

        public void surfaceCreated() {
            synchronized (GLTextureView.sGLThreadManager) {
                this.mHasSurface = true;
                GLTextureView.sGLThreadManager.notifyAll();
                while (this.mWaitingForSurface && !this.mExited) {
                    try {
                        GLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void surfaceDestroyed() {
            synchronized (GLTextureView.sGLThreadManager) {
                this.mHasSurface = false;
                GLTextureView.sGLThreadManager.notifyAll();
                while (!this.mWaitingForSurface && !this.mExited) {
                    try {
                        GLTextureView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
    }

    private static class GLThreadManager {
        private static String TAG = "GLThreadManager";
        private static final int kGLES_20 = 131072;
        private static final String kMSM7K_RENDERER_PREFIX = "Q3Dimension MSM7500 ";
        private GLThread mEglOwner;
        private boolean mGLESDriverCheckComplete;
        private int mGLESVersion;
        private boolean mGLESVersionCheckComplete;
        private boolean mLimitedGLESContexts;
        private boolean mMultipleGLESContextsAllowed;

        private GLThreadManager() {
        }

        private void checkGLESVersion() {
            if (this.mGLESVersionCheckComplete) {
                return;
            }
            this.mGLESVersionCheckComplete = true;
        }

        public synchronized void checkGLDriver(GL10 gl) {
            try {
                if (!this.mGLESDriverCheckComplete) {
                    checkGLESVersion();
                    String strGlGetString = gl.glGetString(7937);
                    if (this.mGLESVersion < 131072) {
                        this.mMultipleGLESContextsAllowed = !strGlGetString.startsWith(kMSM7K_RENDERER_PREFIX);
                        notifyAll();
                    }
                    this.mLimitedGLESContexts = !this.mMultipleGLESContextsAllowed;
                    this.mGLESDriverCheckComplete = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized boolean shouldReleaseEGLContextWhenPausing() {
            return this.mLimitedGLESContexts;
        }

        public synchronized boolean shouldTerminateEGLWhenPausing() {
            checkGLESVersion();
            return !this.mMultipleGLESContextsAllowed;
        }

        public synchronized void threadExiting(GLThread thread) {
            try {
                thread.mExited = true;
                if (this.mEglOwner == thread) {
                    this.mEglOwner = null;
                }
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }

        public void releaseEglContextLocked(GLThread thread) {
            if (this.mEglOwner == thread) {
                this.mEglOwner = null;
            }
            notifyAll();
        }

        public boolean tryAcquireEglContextLocked(GLThread thread) {
            GLThread gLThread = this.mEglOwner;
            if (gLThread == thread || gLThread == null) {
                this.mEglOwner = thread;
                notifyAll();
                return true;
            }
            checkGLESVersion();
            if (this.mMultipleGLESContextsAllowed) {
                return true;
            }
            GLThread gLThread2 = this.mEglOwner;
            if (gLThread2 == null) {
                return false;
            }
            gLThread2.requestReleaseEglContextLocked();
            return false;
        }
    }

    public interface GLWrapper {
        GL wrap(GL gl);
    }

    static class LogWriter extends Writer {
        private StringBuilder mBuilder = new StringBuilder();

        @Override // java.io.Writer
        public void write(char[] buf, int offset, int count) {
            for (int i10 = 0; i10 < count; i10++) {
                char c7 = buf[offset + i10];
                if (c7 == '\n') {
                    flushBuilder();
                } else {
                    this.mBuilder.append(c7);
                }
            }
        }

        private void flushBuilder() {
            if (this.mBuilder.length() > 0) {
                Logging.d(GLTextureView.TAG, this.mBuilder.toString());
                StringBuilder sb = this.mBuilder;
                sb.delete(0, sb.length());
            }
        }

        LogWriter() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            flushBuilder();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            flushBuilder();
        }
    }

    public interface Renderer {
        void onDrawFrame(GL10 gl);

        void onSurfaceChanged(GL10 gl, int width, int height);

        void onSurfaceCreated(GL10 gl, EGLConfig config);

        void onSurfaceDestroyed(GL10 gl);
    }

    private class SimpleEGLConfigChooser extends ComponentSizeChooser {
        public SimpleEGLConfigChooser(boolean withDepthBuffer) {
            super(8, 8, 8, 0, withDepthBuffer ? 16 : 0, 0);
        }
    }

    public GLTextureView(Context context) {
        super(context);
        this.mThisWeakRef = new WeakReference<>(this);
        init();
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("io.agora", this, me);
        return super.dispatchTouchEvent(me);
    }

    public int getDebugFlags() {
        return this.mDebugFlags;
    }

    public boolean getPreserveEGLContextOnPause() {
        return this.mPreserveEGLContextOnPause;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
        surfaceChanged(surface, 0, width, height);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
    }

    public void setDebugFlags(int debugFlags) {
        this.mDebugFlags = debugFlags;
    }

    public void setEGLConfigChooser(EGLConfigChooser configChooser) {
        checkRenderThreadState();
        this.mEGLConfigChooser = configChooser;
    }

    public void setGLWrapper(GLWrapper glWrapper) {
        this.mGLWrapper = glWrapper;
    }

    public void setPreserveEGLContextOnPause(boolean preserveOnPause) {
        this.mPreserveEGLContextOnPause = preserveOnPause;
    }

    private static class DefaultWindowSurfaceFactory implements EGLWindowSurfaceFactory {
        private DefaultWindowSurfaceFactory() {
        }

        @Override // io.agora.rtc.video.GLTextureView.EGLWindowSurfaceFactory
        public EGLSurface createWindowSurface(EGL10 egl, EGLDisplay display, EGLConfig config, Object nativeWindow) {
            try {
                return egl.eglCreateWindowSurface(display, config, nativeWindow, null);
            } catch (IllegalArgumentException e) {
                Logging.e(GLTextureView.TAG, "eglCreateWindowSurface", e);
                return null;
            }
        }

        @Override // io.agora.rtc.video.GLTextureView.EGLWindowSurfaceFactory
        public void destroySurface(EGL10 egl, EGLDisplay display, EGLSurface surface) {
            egl.eglDestroySurface(display, surface);
        }
    }

    private void checkRenderThreadState() {
        if (this.mGLThread != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    protected void finalize() throws Throwable {
        try {
            GLThread gLThread = this.mGLThread;
            if (gLThread != null) {
                gLThread.requestExitAndWait();
            }
        } finally {
            super.finalize();
        }
    }

    public int getRenderMode() {
        return this.mGLThread.getRenderMode();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            gLThread.requestExitAndWait();
        }
        this.mDetached = true;
        super.onDetachedFromWindow();
    }

    public void onPause() {
        this.mGLThread.onPause();
    }

    public void onResume() {
        this.mGLThread.onResume();
    }

    public void queueEvent(Runnable r) {
        this.mGLThread.queueEvent(r);
    }

    public void requestRender() {
        this.mGLThread.requestRender();
    }

    public void setEGLConfigChooser(boolean needDepth) {
        setEGLConfigChooser(new SimpleEGLConfigChooser(needDepth));
    }

    public void setRenderMode(int renderMode) {
        this.mGLThread.setRenderMode(renderMode);
    }

    public void surfaceChanged(SurfaceTexture texture, int format, int w5, int h) {
        this.mGLThread.onWindowResize(w5, h);
    }

    public void surfaceCreated(SurfaceTexture texture) {
        this.mGLThread.surfaceCreated();
    }

    public void surfaceDestroyed(SurfaceTexture texture) {
        this.mGLThread.surfaceDestroyed();
    }

    private void init() {
        setSurfaceTextureListener(this);
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        int renderMode;
        super.onAttachedToWindow();
        if (this.mDetached && this.mRenderer != null) {
            GLThread gLThread = this.mGLThread;
            if (gLThread != null) {
                renderMode = gLThread.getRenderMode();
            } else {
                renderMode = 1;
            }
            GLThread gLThread2 = new GLThread(this.mThisWeakRef);
            this.mGLThread = gLThread2;
            if (renderMode != 1) {
                gLThread2.setRenderMode(renderMode);
            }
            this.mGLThread.start();
        }
        this.mDetached = false;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View v5, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        surfaceChanged(getSurfaceTexture(), 0, right - left, bottom - top);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
        surfaceCreated(surface);
        surfaceChanged(surface, 0, width, height);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        surfaceDestroyed(surface);
        return true;
    }

    public void setEGLConfigChooser(int redSize, int greenSize, int blueSize, int alphaSize, int depthSize, int stencilSize) {
        setEGLConfigChooser(new ComponentSizeChooser(redSize, greenSize, blueSize, alphaSize, depthSize, stencilSize));
    }

    public void setEGLContextClientVersion(int version) {
        checkRenderThreadState();
        this.mEGLContextClientVersion = version;
    }

    public void setEGLContextFactory(EGLContextFactory factory) {
        checkRenderThreadState();
        this.mEGLContextFactory = factory;
    }

    public void setEGLWindowSurfaceFactory(EGLWindowSurfaceFactory factory) {
        checkRenderThreadState();
        this.mEGLWindowSurfaceFactory = factory;
    }

    public void setRenderer(Renderer renderer) {
        checkRenderThreadState();
        if (this.mEGLConfigChooser == null) {
            this.mEGLConfigChooser = new SimpleEGLConfigChooser(true);
        }
        if (this.mEGLContextFactory == null) {
            this.mEGLContextFactory = new DefaultContextFactory();
        }
        if (this.mEGLWindowSurfaceFactory == null) {
            this.mEGLWindowSurfaceFactory = new DefaultWindowSurfaceFactory();
        }
        this.mRenderer = renderer;
        GLThread gLThread = new GLThread(this.mThisWeakRef);
        this.mGLThread = gLThread;
        gLThread.start();
    }

    public GLTextureView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mThisWeakRef = new WeakReference<>(this);
        init();
    }
}
