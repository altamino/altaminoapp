package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbxd implements zzdti<zzbxc> {
    private final zzdtu<zzbrt> zzfil;
    private final zzdtu<zzcxm> zzflv;

    private zzbxd(zzdtu<zzbrt> zzdtuVar, zzdtu<zzcxm> zzdtuVar2) {
        this.zzfil = zzdtuVar;
        this.zzflv = zzdtuVar2;
    }

    public static zzbxd zzj(zzdtu<zzbrt> zzdtuVar, zzdtu<zzcxm> zzdtuVar2) {
        return new zzbxd(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbxc(this.zzfil.get(), this.zzflv.get());
    }
}
