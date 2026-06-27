package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzcmm implements zzdti<zzcml> {
    private final zzdtu<zzbjm> zzfmk;
    private final zzdtu<zzbqy.zza> zzfml;
    private final zzdtu<zzbtv> zzfmm;
    private final zzdtu<zzbxk> zzfmn;

    public zzcmm(zzdtu<zzbjm> zzdtuVar, zzdtu<zzbxk> zzdtuVar2, zzdtu<zzbqy.zza> zzdtuVar3, zzdtu<zzbtv> zzdtuVar4) {
        this.zzfmk = zzdtuVar;
        this.zzfmn = zzdtuVar2;
        this.zzfml = zzdtuVar3;
        this.zzfmm = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcml(this.zzfmk.get(), this.zzfmn.get(), this.zzfml.get(), this.zzfmm.get());
    }
}
