package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcfc implements zzdti<zzcfb> {
    private final zzdtu<zzcfi> zzeqq;
    private final zzdtu<zzdae> zzerp;

    private zzcfc(zzdtu<zzcfi> zzdtuVar, zzdtu<zzdae> zzdtuVar2) {
        this.zzeqq = zzdtuVar;
        this.zzerp = zzdtuVar2;
    }

    public static zzcfc zzs(zzdtu<zzcfi> zzdtuVar, zzdtu<zzdae> zzdtuVar2) {
        return new zzcfc(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcfb(this.zzeqq.get(), this.zzerp.get());
    }
}
