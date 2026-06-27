package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;

/* loaded from: classes2.dex */
final class zzcao implements zzbam<zzp, Bitmap> {
    private final /* synthetic */ double zzfqt;
    private final /* synthetic */ boolean zzfqu;
    private final /* synthetic */ zzcan zzfqv;

    zzcao(zzcan zzcanVar, double d, boolean z) {
        this.zzfqv = zzcanVar;
        this.zzfqt = d;
        this.zzfqu = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final /* synthetic */ Bitmap apply(zzp zzpVar) {
        return this.zzfqv.zza(zzpVar.data, this.zzfqt, this.zzfqu);
    }
}
