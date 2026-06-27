package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcyt implements zzdti<zzawu> {
    private final zzcyo zzglu;
    private final zzdtu<zzcym> zzglv;

    private zzcyt(zzcyo zzcyoVar, zzdtu<zzcym> zzdtuVar) {
        this.zzglu = zzcyoVar;
        this.zzglv = zzdtuVar;
    }

    public static zzcyt zzd(zzcyo zzcyoVar, zzdtu<zzcym> zzdtuVar) {
        return new zzcyt(zzcyoVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzawu) zzdto.zza(this.zzglv.get().zzdsw, "Cannot return null from a non-@Nullable @Provides method");
    }
}
