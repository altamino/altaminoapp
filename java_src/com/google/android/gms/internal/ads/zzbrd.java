package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbrd implements zzdti<String> {
    private final zzdtu<zzbqe> zzerf;
    private final zzbqy zzfjw;

    private zzbrd(zzbqy zzbqyVar, zzdtu<zzbqe> zzdtuVar) {
        this.zzfjw = zzbqyVar;
        this.zzerf = zzdtuVar;
    }

    public static zzbrd zzb(zzbqy zzbqyVar, zzdtu<zzbqe> zzdtuVar) {
        return new zzbrd(zzbqyVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (String) zzdto.zza(this.zzerf.get().zzum(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
