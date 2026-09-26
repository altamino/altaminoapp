package androidx.media3.common.util;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.opengl.Matrix;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class GlUtil {
    private static final String EXTENSION_COLORSPACE_BT2020_PQ = "EGL_EXT_gl_colorspace_bt2020_pq";
    private static final String EXTENSION_PROTECTED_CONTENT = "EGL_EXT_protected_content";
    private static final String EXTENSION_SURFACELESS_CONTEXT = "EGL_KHR_surfaceless_context";
    private static final String EXTENSION_YUV_TARGET = "GL_EXT_YUV_target";
    public static final int HOMOGENEOUS_COORDINATE_VECTOR_SIZE = 4;
    public static final float LENGTH_NDC = 2.0f;
    public static final int[] EGL_CONFIG_ATTRIBUTES_RGBA_8888 = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};
    public static final int[] EGL_CONFIG_ATTRIBUTES_RGBA_1010102 = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};
    private static final int EGL_GL_COLORSPACE_KHR = 12445;
    private static final int EGL_GL_COLORSPACE_BT2020_PQ_EXT = 13120;
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ = {EGL_GL_COLORSPACE_KHR, EGL_GL_COLORSPACE_BT2020_PQ_EXT, 12344, 12344};
    private static final int[] EGL_WINDOW_SURFACE_ATTRIBUTES_NONE = {12344};

    @RequiresApi
    private static final class Api17 {
        @DoNotInline
        public static EGLDisplay b() throws GlException {
            EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
            GlUtil.e(!eGLDisplayEglGetDisplay.equals(EGL14.EGL_NO_DISPLAY), "No EGL display.");
            GlUtil.e(EGL14.eglInitialize(eGLDisplayEglGetDisplay, new int[1], 0, new int[1], 0), "Error in eglInitialize.");
            GlUtil.d();
            return eGLDisplayEglGetDisplay;
        }

        @DoNotInline
        private static EGLConfig i(EGLDisplay eGLDisplay, int[] iArr) throws GlException {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (EGL14.eglChooseConfig(eGLDisplay, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                return eGLConfigArr[0];
            }
            throw new GlException("eglChooseConfig failed.");
        }

        @DoNotInline
        public static EGLContext a(EGLContext eGLContext, EGLDisplay eGLDisplay, int i10, int[] iArr) throws GlException {
            EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplay, i(eGLDisplay, iArr), eGLContext, new int[]{12440, i10, 12344}, 0);
            if (eGLContextEglCreateContext != null) {
                GlUtil.d();
                return eGLContextEglCreateContext;
            }
            EGL14.eglTerminate(eGLDisplay);
            throw new GlException("eglCreateContext() failed to create a valid context. The device may not support EGL version " + i10);
        }

        @DoNotInline
        public static void e(@Nullable EGLDisplay eGLDisplay, @Nullable EGLContext eGLContext) throws GlException {
            if (eGLDisplay == null) {
                return;
            }
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            GlUtil.c("Error releasing context");
            if (eGLContext != null) {
                EGL14.eglDestroyContext(eGLDisplay, eGLContext);
                GlUtil.c("Error destroying context");
            }
            EGL14.eglReleaseThread();
            GlUtil.c("Error releasing thread");
            EGL14.eglTerminate(eGLDisplay);
            GlUtil.c("Error terminating display");
        }

        @DoNotInline
        public static void f(@Nullable EGLDisplay eGLDisplay, @Nullable EGLSurface eGLSurface) throws GlException {
            if (eGLDisplay == null || eGLSurface == null) {
                return;
            }
            EGL14.eglDestroySurface(eGLDisplay, eGLSurface);
            GlUtil.c("Error destroying surface");
        }

        private Api17() {
        }

        @DoNotInline
        public static EGLSurface c(EGLDisplay eGLDisplay, int[] iArr, int[] iArr2) throws GlException {
            EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, i(eGLDisplay, iArr), iArr2, 0);
            GlUtil.c("Error creating surface");
            return eGLSurfaceEglCreatePbufferSurface;
        }

        @DoNotInline
        public static EGLSurface d(EGLDisplay eGLDisplay, Object obj, int[] iArr, int[] iArr2) throws GlException {
            EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLDisplay, i(eGLDisplay, iArr), obj, iArr2, 0);
            GlUtil.c("Error creating surface");
            return eGLSurfaceEglCreateWindowSurface;
        }

        @DoNotInline
        public static void g(int i10, int i11, int i12) throws GlException {
            GlUtil.e(!Util.c(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT), "No current context");
            int[] iArr = new int[1];
            GLES20.glGetIntegerv(36006, iArr, 0);
            if (iArr[0] != i10) {
                GLES20.glBindFramebuffer(36160, i10);
            }
            GlUtil.d();
            GLES20.glViewport(0, 0, i11, i12);
            GlUtil.d();
        }

        @DoNotInline
        public static void h(EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, int i10, int i11, int i12) throws GlException {
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
            GlUtil.c("Error making context current");
            g(i10, i11, i12);
        }
    }

    public static FloatBuffer g(float[] fArr) {
        return (FloatBuffer) f(fArr.length).put(fArr).flip();
    }

    public static void l(float[] fArr) {
        Matrix.setIdentityM(fArr, 0);
    }

    public static final class GlException extends Exception {
        public GlException(String str) {
            super(str);
        }
    }

    public static void d() throws GlException {
        StringBuilder sb = new StringBuilder();
        boolean z6 = false;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            if (z6) {
                sb.append('\n');
            }
            sb.append("glError: ");
            sb.append(GLU.gluErrorString(iGlGetError));
            z6 = true;
        }
        if (z6) {
            throw new GlException(sb.toString());
        }
    }

    public static void e(boolean z6, String str) throws GlException {
        if (!z6) {
            throw new GlException(str);
        }
    }

    private static FloatBuffer f(int i10) {
        return ByteBuffer.allocateDirect(i10 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static boolean j(Context context) {
        String strEglQueryString;
        int i10 = Util.SDK_INT;
        if (i10 < 24) {
            return false;
        }
        if (i10 >= 26 || !("samsung".equals(Util.MANUFACTURER) || "XT1650".equals(Util.MODEL))) {
            return (i10 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains(EXTENSION_PROTECTED_CONTENT);
        }
        return false;
    }

    public static boolean k() {
        String strEglQueryString;
        return Util.SDK_INT >= 17 && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains(EXTENSION_SURFACELESS_CONTEXT);
    }

    private GlUtil() {
    }

    public static void b(int i10, int i11) throws GlException {
        GLES20.glBindTexture(i10, i11);
        d();
        GLES20.glTexParameteri(i10, 10240, 9729);
        d();
        GLES20.glTexParameteri(i10, 10241, 9729);
        d();
        GLES20.glTexParameteri(i10, 10242, 33071);
        d();
        GLES20.glTexParameteri(i10, 10243, 33071);
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str) throws GlException {
        boolean z6;
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            z6 = true;
        } else {
            z6 = false;
        }
        e(z6, str + ", error code: " + iEglGetError);
    }

    public static int h() throws GlException {
        int i10 = i();
        b(36197, i10);
        return i10;
    }

    private static int i() throws GlException {
        e(!Util.c(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT), "No current context");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        d();
        return iArr[0];
    }
}
