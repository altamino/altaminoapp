package io.agora.rtc.gl;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes2.dex */
public class EglBase10 extends EglBase {
    private static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
    private EGLConfig eglConfig;
    private EGLContext eglContext;
    private EGLDisplay eglDisplay;
    private EGLSurface eglSurface = EGL10.EGL_NO_SURFACE;
    private final EGL10 egl = (EGL10) EGLContext.getEGL();

    public static class Context implements EglBase.Context {
        private final EGLContext eglContext;

        @Override // io.agora.rtc.gl.EglBase.Context
        public long getNativeEglContext() {
            return 0L;
        }

        public Context(EGLContext eglContext) {
            this.eglContext = eglContext;
        }
    }

    private EGLConfig getEglConfig(EGLDisplay eglDisplay, int[] configAttributes) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        if (!this.egl.eglChooseConfig(eglDisplay, configAttributes, eGLConfigArr, 1, iArr)) {
            throw new RuntimeException("eglChooseConfig failed: 0x" + Integer.toHexString(this.egl.eglGetError()));
        }
        if (iArr[0] <= 0) {
            throw new RuntimeException("Unable to find any matching EGL config");
        }
        EGLConfig eGLConfig = eGLConfigArr[0];
        if (eGLConfig != null) {
            return eGLConfig;
        }
        throw new RuntimeException("eglChooseConfig returned null");
    }

    @Override // io.agora.rtc.gl.EglBase
    public void createDummyPbufferSurface() {
        createPbufferSurface(1, 1);
    }

    @Override // io.agora.rtc.gl.EglBase
    public void createSurface(Surface surface) {
        createSurfaceInternal(new SurfaceHolder(surface) { // from class: io.agora.rtc.gl.EglBase10.1FakeSurfaceHolder
            private final Surface surface;

            @Override // android.view.SurfaceHolder
            public void addCallback(SurfaceHolder.Callback callback) {
            }

            @Override // android.view.SurfaceHolder
            public Surface getSurface() {
                return this.surface;
            }

            @Override // android.view.SurfaceHolder
            public Rect getSurfaceFrame() {
                return null;
            }

            @Override // android.view.SurfaceHolder
            public boolean isCreating() {
                return false;
            }

            @Override // android.view.SurfaceHolder
            public Canvas lockCanvas() {
                return null;
            }

            @Override // android.view.SurfaceHolder
            public void removeCallback(SurfaceHolder.Callback callback) {
            }

            @Override // android.view.SurfaceHolder
            public void setFixedSize(int i10, int i11) {
            }

            @Override // android.view.SurfaceHolder
            public void setFormat(int i10) {
            }

            @Override // android.view.SurfaceHolder
            public void setKeepScreenOn(boolean b7) {
            }

            @Override // android.view.SurfaceHolder
            public void setSizeFromLayout() {
            }

            @Override // android.view.SurfaceHolder
            @Deprecated
            public void setType(int i10) {
            }

            @Override // android.view.SurfaceHolder
            public void unlockCanvasAndPost(Canvas canvas) {
            }

            {
                this.surface = surface;
            }

            @Override // android.view.SurfaceHolder
            public Canvas lockCanvas(Rect rect) {
                return null;
            }
        });
    }

    @Override // io.agora.rtc.gl.EglBase
    public boolean hasSurface() {
        return this.eglSurface != EGL10.EGL_NO_SURFACE;
    }

    @Override // io.agora.rtc.gl.EglBase
    public int surfaceHeight() {
        int[] iArr = new int[1];
        this.egl.eglQuerySurface(this.eglDisplay, this.eglSurface, 12374, iArr);
        return iArr[0];
    }

    @Override // io.agora.rtc.gl.EglBase
    public int surfaceWidth() {
        int[] iArr = new int[1];
        this.egl.eglQuerySurface(this.eglDisplay, this.eglSurface, 12375, iArr);
        return iArr[0];
    }

    @Override // io.agora.rtc.gl.EglBase
    public void swapBuffers() {
        checkIsNotReleased();
        if (this.eglSurface == EGL10.EGL_NO_SURFACE) {
            throw new RuntimeException("No EGLSurface - can't swap buffers");
        }
        synchronized (EglBase.lock) {
            this.egl.eglSwapBuffers(this.eglDisplay, this.eglSurface);
        }
    }

    private void checkIsNotReleased() {
        if (this.eglDisplay == EGL10.EGL_NO_DISPLAY || this.eglContext == EGL10.EGL_NO_CONTEXT || this.eglConfig == null) {
            throw new RuntimeException("This object has been released");
        }
    }

    private EGLContext createEglContext(Context sharedContext, EGLDisplay eglDisplay, EGLConfig eglConfig) {
        EGLContext eGLContextEglCreateContext;
        if (sharedContext != null && sharedContext.eglContext == EGL10.EGL_NO_CONTEXT) {
            throw new RuntimeException("Invalid sharedContext");
        }
        int[] iArr = {EGL_CONTEXT_CLIENT_VERSION, 2, 12344};
        EGLContext eGLContext = sharedContext == null ? EGL10.EGL_NO_CONTEXT : sharedContext.eglContext;
        synchronized (EglBase.lock) {
            try {
                eGLContextEglCreateContext = this.egl.eglCreateContext(eglDisplay, eglConfig, eGLContext, iArr);
                if (this.egl.eglGetError() != 12288) {
                    eGLContextEglCreateContext = this.egl.eglCreateContext(eglDisplay, eglConfig, eGLContext, new int[]{EGL_CONTEXT_CLIENT_VERSION, 3, 12344});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (eGLContextEglCreateContext != EGL10.EGL_NO_CONTEXT) {
            return eGLContextEglCreateContext;
        }
        throw new RuntimeException("Failed to create EGL context: 0x" + Integer.toHexString(this.egl.eglGetError()));
    }

    private void createSurfaceInternal(Object nativeWindow) {
        if (!(nativeWindow instanceof SurfaceHolder) && !(nativeWindow instanceof SurfaceTexture)) {
            throw new IllegalStateException("Input must be either a SurfaceHolder or SurfaceTexture");
        }
        checkIsNotReleased();
        EGLSurface eGLSurface = this.eglSurface;
        EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
        if (eGLSurface != eGLSurface2) {
            throw new RuntimeException("Already has an EGLSurface");
        }
        EGLSurface eGLSurfaceEglCreateWindowSurface = this.egl.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, nativeWindow, new int[]{12344});
        this.eglSurface = eGLSurfaceEglCreateWindowSurface;
        if (eGLSurfaceEglCreateWindowSurface != eGLSurface2) {
            return;
        }
        throw new RuntimeException("Failed to create window surface: 0x" + Integer.toHexString(this.egl.eglGetError()));
    }

    private EGLDisplay getEglDisplay() {
        EGLDisplay eGLDisplayEglGetDisplay = this.egl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            throw new RuntimeException("Unable to get EGL10 display: 0x" + Integer.toHexString(this.egl.eglGetError()));
        }
        if (this.egl.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
            return eGLDisplayEglGetDisplay;
        }
        throw new RuntimeException("Unable to initialize EGL10: 0x" + Integer.toHexString(this.egl.eglGetError()));
    }

    @Override // io.agora.rtc.gl.EglBase
    public void createSurface(SurfaceTexture surfaceTexture) {
        createSurfaceInternal(surfaceTexture);
    }

    @Override // io.agora.rtc.gl.EglBase
    public void detachCurrent() {
        synchronized (EglBase.lock) {
            try {
                EGL10 egl10 = this.egl;
                EGLDisplay eGLDisplay = this.eglDisplay;
                EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT)) {
                    throw new RuntimeException("eglDetachCurrent failed: 0x" + Integer.toHexString(this.egl.eglGetError()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.agora.rtc.gl.EglBase
    public EglBase.Context getEglBaseContext() {
        return new Context(this.eglContext);
    }

    @Override // io.agora.rtc.gl.EglBase
    public void releaseSurface() {
        EGLSurface eGLSurface = this.eglSurface;
        EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
        if (eGLSurface != eGLSurface2) {
            this.egl.eglDestroySurface(this.eglDisplay, eGLSurface);
            this.eglSurface = eGLSurface2;
        }
    }

    public EglBase10(Context sharedContext, int[] configAttributes) {
        EGLDisplay eglDisplay = getEglDisplay();
        this.eglDisplay = eglDisplay;
        EGLConfig eglConfig = getEglConfig(eglDisplay, configAttributes);
        this.eglConfig = eglConfig;
        this.eglContext = createEglContext(sharedContext, this.eglDisplay, eglConfig);
    }

    @Override // io.agora.rtc.gl.EglBase
    public void createPbufferSurface(int width, int height) {
        checkIsNotReleased();
        EGLSurface eGLSurface = this.eglSurface;
        EGLSurface eGLSurface2 = EGL10.EGL_NO_SURFACE;
        if (eGLSurface == eGLSurface2) {
            EGLSurface eGLSurfaceEglCreatePbufferSurface = this.egl.eglCreatePbufferSurface(this.eglDisplay, this.eglConfig, new int[]{12375, width, 12374, height, 12344});
            this.eglSurface = eGLSurfaceEglCreatePbufferSurface;
            if (eGLSurfaceEglCreatePbufferSurface != eGLSurface2) {
                return;
            }
            throw new RuntimeException("Failed to create pixel buffer surface with size " + width + "x" + height + ": 0x" + Integer.toHexString(this.egl.eglGetError()));
        }
        throw new RuntimeException("Already has an EGLSurface");
    }

    @Override // io.agora.rtc.gl.EglBase
    public void makeCurrent() {
        checkIsNotReleased();
        if (this.eglSurface != EGL10.EGL_NO_SURFACE) {
            synchronized (EglBase.lock) {
                try {
                    EGL10 egl10 = this.egl;
                    EGLDisplay eGLDisplay = this.eglDisplay;
                    EGLSurface eGLSurface = this.eglSurface;
                    if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
                        throw new RuntimeException("eglMakeCurrent failed: 0x" + Integer.toHexString(this.egl.eglGetError()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        throw new RuntimeException("No EGLSurface - can't make current");
    }

    @Override // io.agora.rtc.gl.EglBase
    public void release() {
        checkIsNotReleased();
        releaseSurface();
        detachCurrent();
        this.egl.eglDestroyContext(this.eglDisplay, this.eglContext);
        this.egl.eglTerminate(this.eglDisplay);
        this.eglContext = EGL10.EGL_NO_CONTEXT;
        this.eglDisplay = EGL10.EGL_NO_DISPLAY;
        this.eglConfig = null;
    }

    @Override // io.agora.rtc.gl.EglBase
    public void swapBuffers(long timeStampNs) {
        swapBuffers();
    }
}
