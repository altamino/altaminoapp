package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzblu implements zzdti<zzblt> {
    private final zzdtu<zzaxb> zzerj;

    private zzblu(zzdtu<zzaxb> zzdtuVar) {
        this.zzerj = zzdtuVar;
    }

    public static zzblu zzc(zzdtu<zzaxb> zzdtuVar) {
        return new zzblu(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzblt(this.zzerj.get());
    }
}
