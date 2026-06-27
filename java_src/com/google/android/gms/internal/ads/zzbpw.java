package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbpw implements zzdti<zzbpv> {
    private final zzdtu<zzbse> zzexf;

    private zzbpw(zzdtu<zzbse> zzdtuVar) {
        this.zzexf = zzdtuVar;
    }

    public static zzbpw zzk(zzdtu<zzbse> zzdtuVar) {
        return new zzbpw(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbpv(this.zzexf.get());
    }
}
