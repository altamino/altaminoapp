package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbow implements zzdti<zzbov> {
    private final zzdtu<zzcxm> zzffg;
    private final zzdtu<zzbrt> zzfil;

    public zzbow(zzdtu<zzcxm> zzdtuVar, zzdtu<zzbrt> zzdtuVar2) {
        this.zzffg = zzdtuVar;
        this.zzfil = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbov(this.zzffg.get(), this.zzfil.get());
    }
}
