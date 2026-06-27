package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcys implements zzdti<zzdh> {
    private final zzcyo zzglu;
    private final zzdtu<zzcym> zzglv;

    private zzcys(zzcyo zzcyoVar, zzdtu<zzcym> zzdtuVar) {
        this.zzglu = zzcyoVar;
        this.zzglv = zzdtuVar;
    }

    public static zzcys zzc(zzcyo zzcyoVar, zzdtu<zzcym> zzdtuVar) {
        return new zzcys(zzcyoVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzdh) zzdto.zza(this.zzglv.get().zzglt, "Cannot return null from a non-@Nullable @Provides method");
    }
}
