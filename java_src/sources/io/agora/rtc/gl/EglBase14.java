package io.agora.rtc.gl;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.os.Build;
import android.util.Log;
import android.view.Surface;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(18)
public class EglBase14 extends EglBase {
    private static final int CURRENT_SDK_VERSION = Build.VERSION.SDK_INT;
    private static final int EGLExt_SDK_VERSION = 18;
    private static final String TAG = "EglBase14";
    private EGLConfig eglConfig;
    private EGLContext eglContext;
    private EGLDisplay eglDisplay;
    private EGLSurface eglSurface = EGL14.EGL_NO_SURFACE;

    public static class Context implements EglBase.Context {
        private final EGLContext egl14Context;

        public Context(EGLContext eglContext) {
            this.egl14Context = eglContext;
        }

        @Override // io.agora.rtc.gl.EglBase.Context
        @TargetApi(21)
        public long getNativeEglContext() {
            if (EglBase14.CURRENT_SDK_VERSION >= 21) {
                return this.egl14Context.getNativeHandle();
            }
            return this.egl14Context.getHandle();
        }
    }

    private static EGLConfig getEglConfig(EGLDisplay eglDisplay, int[] configAttributes) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        if (!EGL14.eglChooseConfig(eglDisplay, configAttributes, 0, eGLConfigArr, 0, 1, iArr, 0)) {
            throw new RuntimeException("eglChooseConfig failed: 0x" + Integer.toHexString(EGL14.eglGetError()));
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

    private static EGLDisplay getEglDisplay() {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("Unable to get EGL14 display: 0x" + Integer.toHexString(EGL14.eglGetError()));
        }
        int[] iArr = new int[2];
        if (EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            return eGLDisplayEglGetDisplay;
        }
        throw new RuntimeException("Unable to initialize EGL14: 0x" + Integer.toHexString(EGL14.eglGetError()));
    }

    @Override // io.agora.rtc.gl.EglBase
    public void createDummyPbufferSurface() {
        createPbufferSurface(1, 1);
    }

    @Override // io.agora.rtc.gl.EglBase
    public void createSurface(Surface surface) {
        createSurfaceInternal(surface);
    }

    @Override // io.agora.rtc.gl.EglBase
    public int surfaceHeight() {
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.eglDisplay, this.eglSurface, 12374, iArr, 0);
        return iArr[0];
    }

    @Override // io.agora.rtc.gl.EglBase
    public int surfaceWidth() {
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(this.eglDisplay, this.eglSurface, 12375, iArr, 0);
        return iArr[0];
    }

    @Override // io.agora.rtc.gl.EglBase
    public void swapBuffers() {
        checkIsNotReleased();
        if (this.eglSurface == EGL14.EGL_NO_SURFACE) {
            throw new RuntimeException("No EGLSurface - can't swap buffers");
        }
        synchronized (EglBase.lock) {
            EGL14.eglSwapBuffers(this.eglDisplay, this.eglSurface);
        }
    }

    private void checkIsNotReleased() {
        if (this.eglDisplay == EGL14.EGL_NO_DISPLAY || this.eglContext == EGL14.EGL_NO_CONTEXT || this.eglConfig == null) {
            throw new RuntimeException("This object has been released");
        }
    }

    private static EGLContext createEglContext(Context sharedContext, EGLDisplay eglDisplay, EGLConfig eglConfig) {
        EGLContext eGLContextEglCreateContext;
        if (sharedContext != null && sharedContext.egl14Context == EGL14.EGL_NO_CONTEXT) {
            throw new RuntimeException("Invalid sharedContext");
        }
        int[] iArr = {12440, 2, 12344};
        EGLContext eGLContext = sharedContext == null ? EGL14.EGL_NO_CONTEXT : sharedContext.egl14Context;
        synchronized (EglBase.lock) {
            try {
                eGLContextEglCreateContext = EGL14.eglCreateContext(eglDisplay, eglConfig, eGLContext, iArr, 0);
                if (EGL14.eglGetError() != 12288) {
                    eGLContextEglCreateContext = EGL14.eglCreateContext(eglDisplay, eglConfig, eGLContext, new int[]{12440, 3, 12344}, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (eGLContextEglCreateContext != EGL14.EGL_NO_CONTEXT) {
            return eGLContextEglCreateContext;
        }
        throw new RuntimeException("Failed to create EGL context: 0x" + Integer.toHexString(EGL14.eglGetError()));
    }

    private void createSurfaceInternal(Object surface) {
        if (!(surface instanceof Surface) && !(surface instanceof SurfaceTexture)) {
            throw new IllegalStateException("Input must be either a Surface or SurfaceTexture");
        }
        checkIsNotReleased();
        if (this.eglSurface != EGL14.EGL_NO_SURFACE) {
            throw new RuntimeException("Already has an EGLSurface");
        }
        EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, surface, new int[]{12344}, 0);
        this.eglSurface = eGLSurfaceEglCreateWindowSurface;
        if (eGLSurfaceEglCreateWindowSurface != EGL14.EGL_NO_SURFACE) {
            return;
        }
        throw new RuntimeException("Failed to create window surface: 0x" + Integer.toHexString(EGL14.eglGetError()));
    }

    public static boolean isEGL14Supported() {
        StringBuilder sb = new StringBuilder();
        sb.append("SDK version: ");
        int i10 = CURRENT_SDK_VERSION;
        sb.append(i10);
        sb.append(". isEGL14Supported: ");
        sb.append(i10 >= 18);
        Log.d(TAG, sb.toString());
        return i10 >= 18;
    }

    @Override // io.agora.rtc.gl.EglBase
    public void createSurface(SurfaceTexture surfaceTexture) {
        createSurfaceInternal(surfaceTexture);
    }

    @Override // io.agora.rtc.gl.EglBase
    public void detachCurrent() {
        synchronized (EglBase.lock) {
            try {
                EGLDisplay eGLDisplay = this.eglDisplay;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT)) {
                    throw new RuntimeException("eglDetachCurrent failed: 0x" + Integer.toHexString(EGL14.eglGetError()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.agora.rtc.gl.EglBase
    public Context getEglBaseContext() {
        return new Context(this.eglContext);
    }

    @Override // io.agora.rtc.gl.EglBase
    public boolean hasSurface() {
        return this.eglSurface != EGL14.EGL_NO_SURFACE;
    }

    @Override // io.agora.rtc.gl.EglBase
    public void releaseSurface() {
        EGLSurface eGLSurface = this.eglSurface;
        if (eGLSurface != EGL14.EGL_NO_SURFACE) {
            EGL14.eglDestroySurface(this.eglDisplay, eGLSurface);
            this.eglSurface = EGL14.EGL_NO_SURFACE;
        }
    }

    public EglBase14(Context sharedContext, int[] configAttributes) {
        EGLDisplay eglDisplay = getEglDisplay();
        this.eglDisplay = eglDisplay;
        EGLConfig eglConfig = getEglConfig(eglDisplay, configAttributes);
        this.eglConfig = eglConfig;
        this.eglContext = createEglContext(sharedContext, this.eglDisplay, eglConfig);
    }

    @Override // io.agora.rtc.gl.EglBase
    public void createPbufferSurface(int width, int height) {
        checkIsNotReleased();
        if (this.eglSurface == EGL14.EGL_NO_SURFACE) {
            EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(this.eglDisplay, this.eglConfig, new int[]{12375, width, 12374, height, 12344}, 0);
            this.eglSurface = eGLSurfaceEglCreatePbufferSurface;
            if (eGLSurfaceEglCreatePbufferSurface != EGL14.EGL_NO_SURFACE) {
                return;
            }
            throw new RuntimeException("Failed to create pixel buffer surface with size " + width + "x" + height + ": 0x" + Integer.toHexString(EGL14.eglGetError()));
        }
        throw new RuntimeException("Already has an EGLSurface");
    }

    @Override // io.agora.rtc.gl.EglBase
    public void makeCurrent() {
        checkIsNotReleased();
        if (this.eglSurface != EGL14.EGL_NO_SURFACE) {
            synchronized (EglBase.lock) {
                try {
                    EGLDisplay eGLDisplay = this.eglDisplay;
                    EGLSurface eGLSurface = this.eglSurface;
                    if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
                        throw new RuntimeException("eglMakeCurrent failed: 0x" + Integer.toHexString(EGL14.eglGetError()));
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
        EGL14.eglDestroyContext(this.eglDisplay, this.eglContext);
        EGL14.eglReleaseThread();
        EGL14.eglTerminate(this.eglDisplay);
        this.eglContext = EGL14.EGL_NO_CONTEXT;
        this.eglDisplay = EGL14.EGL_NO_DISPLAY;
        this.eglConfig = null;
    }

    @Override // io.agora.rtc.gl.EglBase
    public void swapBuffers(long timeStampNs) {
        checkIsNotReleased();
        if (this.eglSurface != EGL14.EGL_NO_SURFACE) {
            synchronized (EglBase.lock) {
                EGLExt.eglPresentationTimeANDROID(this.eglDisplay, this.eglSurface, timeStampNs);
                EGL14.eglSwapBuffers(this.eglDisplay, this.eglSurface);
            }
            return;
        }
        throw new RuntimeException("No EGLSurface - can't swap buffers");
    }
}
