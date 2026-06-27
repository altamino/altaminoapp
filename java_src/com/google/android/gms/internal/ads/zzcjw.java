package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;

/* loaded from: classes2.dex */
public final class zzcjw<DelegateT, AdapterT> implements zzcjv<AdapterT> {

    @VisibleForTesting
    private final zzcjv<DelegateT> zzfzl;
    private final zzbam<DelegateT, AdapterT> zzfzm;

    public zzcjw(zzcjv<DelegateT> zzcjvVar, zzbam<DelegateT, AdapterT> zzbamVar) {
        this.zzfzl = zzcjvVar;
        this.zzfzm = zzbamVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        return this.zzfzl.zza(zzcxuVar, zzcxmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<AdapterT> zzb(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        return zzbar.zza(this.zzfzl.zzb(zzcxuVar, zzcxmVar), this.zzfzm, zzaxg.zzdvp);
    }
}
