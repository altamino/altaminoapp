package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbxf implements zzdti<zzbxe> {
    private final zzdtu<zzbry> zzfil;

    private zzbxf(zzdtu<zzbry> zzdtuVar) {
        this.zzfil = zzdtuVar;
    }

    public static zzbxf zzaa(zzdtu<zzbry> zzdtuVar) {
        return new zzbxf(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzbxe(this.zzfil.get());
    }
}
