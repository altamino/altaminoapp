package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcyp implements zzdti<zzaxb> {
    private final zzcyo zzglu;
    private final zzdtu<zzcym> zzglv;

    private zzcyp(zzcyo zzcyoVar, zzdtu<zzcym> zzdtuVar) {
        this.zzglu = zzcyoVar;
        this.zzglv = zzdtuVar;
    }

    public static zzcyp zza(zzcyo zzcyoVar, zzdtu<zzcym> zzdtuVar) {
        return new zzcyp(zzcyoVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzaxb) zzdto.zza(this.zzglv.get().zzduk, "Cannot return null from a non-@Nullable @Provides method");
    }
}
