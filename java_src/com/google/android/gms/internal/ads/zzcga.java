package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcga implements zzdti<zzcfz> {
    private final zzdtu<zzbjm> zzeoh;
    private final zzdtu<zzcfn> zzfuc;

    private zzcga(zzdtu<zzcfn> zzdtuVar, zzdtu<zzbjm> zzdtuVar2) {
        this.zzfuc = zzdtuVar;
        this.zzeoh = zzdtuVar2;
    }

    public static zzcga zzy(zzdtu<zzcfn> zzdtuVar, zzdtu<zzbjm> zzdtuVar2) {
        return new zzcga(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcfz(this.zzfuc.get(), this.zzeoh.get());
    }
}
