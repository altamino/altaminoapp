package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbpz implements zzdti<zzbuz<zzbrl>> {
    private final zzbpx zzfji;
    private final zzdtu<zzbqe> zzfjj;

    private zzbpz(zzbpx zzbpxVar, zzdtu<zzbqe> zzdtuVar) {
        this.zzfji = zzbpxVar;
        this.zzfjj = zzdtuVar;
    }

    public static zzbpz zzb(zzbpx zzbpxVar, zzdtu<zzbqe> zzdtuVar) {
        return new zzbpz(zzbpxVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfjj.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
