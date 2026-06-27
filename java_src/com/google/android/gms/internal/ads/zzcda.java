package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcda implements zzdti<zzccz> {
    private final zzdtu<zzbse> zzexf;
    private final zzdtu<zzcxm> zzffg;

    public zzcda(zzdtu<zzbse> zzdtuVar, zzdtu<zzcxm> zzdtuVar2) {
        this.zzexf = zzdtuVar;
        this.zzffg = zzdtuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzccz(this.zzexf.get(), this.zzffg.get());
    }
}
