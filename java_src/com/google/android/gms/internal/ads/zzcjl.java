package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcjl implements zzdti<zzcjk> {
    private final zzdtu<zzcji> zzfyu;

    private zzcjl(zzdtu<zzcji> zzdtuVar) {
        this.zzfyu = zzdtuVar;
    }

    public static zzcjl zzah(zzdtu<zzcji> zzdtuVar) {
        return new zzcjl(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcjk(this.zzfyu.get());
    }
}
