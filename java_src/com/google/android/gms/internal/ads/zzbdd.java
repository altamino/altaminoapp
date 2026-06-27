package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

@zzard
@TargetApi(14)
/* loaded from: classes2.dex */
public final class zzbdd extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzbdc {
    private static final float[] zzedd = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private int height;
    private int width;
    private final float[] zzeda;
    private final zzbda zzede;
    private final float[] zzedf;
    private final float[] zzedg;
    private final float[] zzedh;
    private final float[] zzedi;
    private final float[] zzedj;
    private final float[] zzedk;
    private float zzedl;
    private float zzedm;
    private float zzedn;
    private SurfaceTexture zzedo;
    private SurfaceTexture zzedp;
    private int zzedq;
    private int zzedr;
    private int zzeds;
    private FloatBuffer zzedt;
    private final CountDownLatch zzedu;
    private final Object zzedv;
    private EGL10 zzedw;
    private EGLDisplay zzedx;
    private EGLContext zzedy;
    private EGLSurface zzedz;
    private volatile boolean zzeea;
    private volatile boolean zzeeb;

    public zzbdd(Context context) {
        super("SphericalVideoProcessor");
        this.zzedt = ByteBuffer.allocateDirect(zzedd.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.zzedt.put(zzedd).position(0);
        this.zzeda = new float[9];
        this.zzedf = new float[9];
        this.zzedg = new float[9];
        this.zzedh = new float[9];
        this.zzedi = new float[9];
        this.zzedj = new float[9];
        this.zzedk = new float[9];
        this.zzedl = Float.NaN;
        this.zzede = new zzbda(context);
        this.zzede.zza(this);
        this.zzedu = new CountDownLatch(1);
        this.zzedv = new Object();
    }

    public final void zza(SurfaceTexture surfaceTexture, int i, int i2) {
        this.width = i;
        this.height = i2;
        this.zzedp = surfaceTexture;
    }

    public final void zzm(int i, int i2) {
        synchronized (this.zzedv) {
            this.width = i;
            this.height = i2;
            this.zzeea = true;
            this.zzedv.notifyAll();
        }
    }

    public final void zzxx() {
        synchronized (this.zzedv) {
            this.zzeeb = true;
            this.zzedp = null;
            this.zzedv.notifyAll();
        }
    }

    public final SurfaceTexture zzxy() throws InterruptedException {
        if (this.zzedp == null) {
            return null;
        }
        try {
            this.zzedu.await();
        } catch (InterruptedException unused) {
        }
        return this.zzedo;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzeds++;
        synchronized (this.zzedv) {
            this.zzedv.notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdc
    public final void zztk() {
        synchronized (this.zzedv) {
            this.zzedv.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdd.run():void");
    }

    public final void zzb(float f, float f2) {
        float f3;
        float f4;
        float f5;
        int i = this.width;
        int i2 = this.height;
        if (i > i2) {
            f3 = (f * 1.7453293f) / i;
            f4 = f2 * 1.7453293f;
            f5 = i;
        } else {
            f3 = (f * 1.7453293f) / i2;
            f4 = f2 * 1.7453293f;
            f5 = i2;
        }
        this.zzedm -= f3;
        this.zzedn -= f4 / f5;
        if (this.zzedn < -1.5707964f) {
            this.zzedn = -1.5707964f;
        }
        if (this.zzedn > 1.5707964f) {
            this.zzedn = 1.5707964f;
        }
    }

    private static void zza(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3]) + (fArr2[2] * fArr3[6]);
        fArr[1] = (fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4]) + (fArr2[2] * fArr3[7]);
        fArr[2] = (fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5]) + (fArr2[2] * fArr3[8]);
        fArr[3] = (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3]) + (fArr2[5] * fArr3[6]);
        fArr[4] = (fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4]) + (fArr2[5] * fArr3[7]);
        fArr[5] = (fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5]) + (fArr2[5] * fArr3[8]);
        fArr[6] = (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3]) + (fArr2[8] * fArr3[6]);
        fArr[7] = (fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4]) + (fArr2[8] * fArr3[7]);
        fArr[8] = (fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5]) + (fArr2[8] * fArr3[8]);
    }

    private static void zza(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    private static void zzb(float[] fArr, float f) {
        double d = f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private static int zzd(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        zzes("createShader");
        if (iGlCreateShader == 0) {
            return iGlCreateShader;
        }
        GLES20.glShaderSource(iGlCreateShader, str);
        zzes("shaderSource");
        GLES20.glCompileShader(iGlCreateShader);
        zzes("compileShader");
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        zzes("getShaderiv");
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Could not compile shader ");
        sb.append(i);
        sb.append(":");
        Log.e("SphericalVideoRenderer", sb.toString());
        Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(iGlCreateShader));
        GLES20.glDeleteShader(iGlCreateShader);
        zzes("deleteShader");
        return 0;
    }

    @VisibleForTesting
    private final boolean zzxz() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.zzedz;
        boolean zEglDestroyContext = false;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            zEglDestroyContext = this.zzedw.eglDestroySurface(this.zzedx, this.zzedz) | this.zzedw.eglMakeCurrent(this.zzedx, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT) | false;
            this.zzedz = null;
        }
        EGLContext eGLContext = this.zzedy;
        if (eGLContext != null) {
            zEglDestroyContext |= this.zzedw.eglDestroyContext(this.zzedx, eGLContext);
            this.zzedy = null;
        }
        EGLDisplay eGLDisplay = this.zzedx;
        if (eGLDisplay == null) {
            return zEglDestroyContext;
        }
        boolean zEglTerminate = zEglDestroyContext | this.zzedw.eglTerminate(eGLDisplay);
        this.zzedx = null;
        return zEglTerminate;
    }

    private static void zzes(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(iGlGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }
}
