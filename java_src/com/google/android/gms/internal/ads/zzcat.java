package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcat implements zzdti<zzcaq> {
    private final zzdtu<zzbbl> zzfgh;
    private final zzdtu<zzcau> zzfrj;
    private final zzdtu<zzcbd> zzfrk;

    public zzcat(zzdtu<zzbbl> zzdtuVar, zzdtu<zzcau> zzdtuVar2, zzdtu<zzcbd> zzdtuVar3) {
        this.zzfgh = zzdtuVar;
        this.zzfrj = zzdtuVar2;
        this.zzfrk = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcaq(this.zzfgh.get(), this.zzfrj.get(), this.zzfrk.get());
    }
}
