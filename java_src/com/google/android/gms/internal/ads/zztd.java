package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;

@TargetApi(17)
/* loaded from: classes2.dex */
public final class zztd extends Surface {
    private static boolean zzbnu;
    private static boolean zzbnv;
    private final boolean zzaer;
    private final zztf zzbnw;
    private boolean zzbnx;

    public static synchronized boolean zzc(Context context) {
        if (!zzbnv) {
            if (zzsy.SDK_INT >= 17) {
                boolean z = false;
                String strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                if (strEglQueryString != null && strEglQueryString.contains("EGL_EXT_protected_content")) {
                    if (!(zzsy.SDK_INT == 24 && (zzsy.MODEL.startsWith("SM-G950") || zzsy.MODEL.startsWith("SM-G955")) && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance"))) {
                        z = true;
                    }
                }
                zzbnu = z;
            }
            zzbnv = true;
        }
        return zzbnu;
    }

    public static zztd zzc(Context context, boolean z) {
        if (zzsy.SDK_INT < 17) {
            throw new UnsupportedOperationException("Unsupported prior to API level 17");
        }
        zzsk.checkState(!z || zzc(context));
        return new zztf().zzm(z);
    }

    private zztd(zztf zztfVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.zzbnw = zztfVar;
        this.zzaer = z;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.zzbnw) {
            if (!this.zzbnx) {
                this.zzbnw.release();
                this.zzbnx = true;
            }
        }
    }
}
