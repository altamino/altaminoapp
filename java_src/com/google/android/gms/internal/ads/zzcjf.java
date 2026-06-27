package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcjf implements zzdti<zzcjc> {
    private final zzdtu<zzcja> zzety;
    private final zzdtu<zzbbl> zzfyg;

    private zzcjf(zzdtu<zzcja> zzdtuVar, zzdtu<zzbbl> zzdtuVar2) {
        this.zzety = zzdtuVar;
        this.zzfyg = zzdtuVar2;
    }

    public static zzcjf zzah(zzdtu<zzcja> zzdtuVar, zzdtu<zzbbl> zzdtuVar2) {
        return new zzcjf(zzdtuVar, zzdtuVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return new zzcjc(this.zzety.get(), this.zzfyg.get());
    }
}
