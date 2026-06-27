package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* loaded from: classes2.dex */
public final class zzchy extends zzars {
    private final /* synthetic */ zzchx zzfxj;

    protected zzchy(zzchx zzchxVar) {
        this.zzfxj = zzchxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzarr
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzfxj.zzddv.set(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // com.google.android.gms.internal.ads.zzarr
    public final void zza(zzaym zzaymVar) {
        this.zzfxj.zzddv.setException(new zzayn(zzaymVar.zzdwv, zzaymVar.errorCode));
    }
}
