package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;

/* loaded from: classes2.dex */
final class zzaut implements Runnable {
    private final /* synthetic */ Bitmap zzdro;
    private final /* synthetic */ zzauq zzdrp;

    zzaut(zzauq zzauqVar, Bitmap bitmap) {
        this.zzdrp = zzauqVar;
        this.zzdro = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.zzdro.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
        synchronized (this.zzdrp.lock) {
            this.zzdrp.zzdrb.zzhsc = new zzdso();
            this.zzdrp.zzdrb.zzhsc.zzhsu = byteArrayOutputStream.toByteArray();
            this.zzdrp.zzdrb.zzhsc.mimeType = "image/png";
            this.zzdrp.zzdrb.zzhsc.zzhrv = 1;
        }
    }
}
