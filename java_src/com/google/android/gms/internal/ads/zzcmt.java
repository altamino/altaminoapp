package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqy;

/* loaded from: classes2.dex */
public final class zzcmt implements zzdti<zzcms> {
    private final zzdtu<zzbjm> zzfmk;
    private final zzdtu<zzbqy.zza> zzfml;
    private final zzdtu<zzbtv> zzfmm;

    public zzcmt(zzdtu<zzbjm> zzdtuVar, zzdtu<zzbqy.zza> zzdtuVar2, zzdtu<zzbtv> zzdtuVar3) {
        this.zzfmk = zzdtuVar;
        this.zzfml = zzdtuVar2;
        this.zzfmm = zzdtuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcms(this.zzfmk.get(), this.zzfml.get(), this.zzfmm.get());
    }
}
