package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbmc implements zzdti<zzbmb> {
    private final zzdtu<zzaxb> zzerj;

    private zzbmc(zzdtu<zzaxb> zzdtuVar) {
        this.zzerj = zzdtuVar;
    }

    public static zzbmc zzg(zzdtu<zzaxb> zzdtuVar) {
        return new zzbmc(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbmb(this.zzerj.get());
    }
}
