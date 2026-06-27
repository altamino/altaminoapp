package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcdn {
    private final zzbhf zzbrt;
    private final zzbai zzbtc;
    private final zzwj zzejd;
    private final zzdh zzeko;
    private final com.google.android.gms.ads.internal.zza zzekq;
    private final zzcxv zzfjp;
    private final zzbtb zzftg;
    private final Context zzlj;

    public zzcdn(zzbhf zzbhfVar, Context context, zzcxv zzcxvVar, zzdh zzdhVar, zzbai zzbaiVar, com.google.android.gms.ads.internal.zza zzaVar, zzwj zzwjVar, zzbtb zzbtbVar) {
        this.zzbrt = zzbhfVar;
        this.zzlj = context;
        this.zzfjp = zzcxvVar;
        this.zzeko = zzdhVar;
        this.zzbtc = zzbaiVar;
        this.zzekq = zzaVar;
        this.zzejd = zzwjVar;
        this.zzftg = zzbtbVar;
    }

    public final zzbgz zzc(zzyd zzydVar) throws zzbhj {
        return zzbhf.zza(this.zzlj, zzbin.zzb(zzydVar), zzydVar.zzaap, false, false, this.zzeko, this.zzbtc, null, new zzcdo(this), this.zzekq, this.zzejd);
    }
}
