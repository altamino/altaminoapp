package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

@zzard
/* loaded from: classes2.dex */
public final class zzael extends NativeAd.Image {
    private final int height;
    private final Uri uri;
    private final int width;
    private final double zzcyl;
    private final zzaei zzcyq;
    private final Drawable zzcyr;

    public zzael(zzaei zzaeiVar) {
        int width;
        IObjectWrapper iObjectWrapperZzrf;
        this.zzcyq = zzaeiVar;
        Uri uri = null;
        try {
            iObjectWrapperZzrf = this.zzcyq.zzrf();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
        Drawable drawable = iObjectWrapperZzrf != null ? (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzrf) : null;
        this.zzcyr = drawable;
        try {
            uri = this.zzcyq.getUri();
        } catch (RemoteException e2) {
            zzbad.zzc("", e2);
        }
        this.uri = uri;
        double scale = 1.0d;
        try {
            scale = this.zzcyq.getScale();
        } catch (RemoteException e3) {
            zzbad.zzc("", e3);
        }
        this.zzcyl = scale;
        int height = -1;
        try {
            width = this.zzcyq.getWidth();
        } catch (RemoteException e4) {
            zzbad.zzc("", e4);
            width = -1;
        }
        this.width = width;
        try {
            height = this.zzcyq.getHeight();
        } catch (RemoteException e5) {
            zzbad.zzc("", e5);
        }
        this.height = height;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.zzcyr;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.zzcyl;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getWidth() {
        return this.width;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getHeight() {
        return this.height;
    }
}
