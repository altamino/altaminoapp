package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

@zzard
/* loaded from: classes2.dex */
public final class zzadw extends zzaej {
    private final int height;
    private final Uri uri;
    private final int width;
    private final Drawable zzcyk;
    private final double zzcyl;

    public zzadw(Drawable drawable, Uri uri, double d, int i, int i2) {
        this.zzcyk = drawable;
        this.uri = uri;
        this.zzcyl = d;
        this.width = i;
        this.height = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    public final IObjectWrapper zzrf() throws RemoteException {
        return ObjectWrapper.wrap(this.zzcyk);
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    public final Uri getUri() throws RemoteException {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    public final double getScale() {
        return this.zzcyl;
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    public final int getWidth() {
        return this.width;
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    public final int getHeight() {
        return this.height;
    }
}
