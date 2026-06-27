package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzcmr implements zzdti<zzcmq> {
    private final zzdtu<zzbjm> zzfmk;
    private final zzdtu<zzbqy.zza> zzfml;
    private final zzdtu<zzbtv> zzfmm;
    private final zzdtu<zzcow> zzgbe;

    public zzcmr(zzdtu<zzbjm> zzdtuVar, zzdtu<zzbqy.zza> zzdtuVar2, zzdtu<zzcow> zzdtuVar3, zzdtu<zzbtv> zzdtuVar4) {
        this.zzfmk = zzdtuVar;
        this.zzfml = zzdtuVar2;
        this.zzgbe = zzdtuVar3;
        this.zzfmm = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcmq(this.zzfmk.get(), this.zzfml.get(), this.zzgbe.get(), this.zzfmm.get());
    }
}
