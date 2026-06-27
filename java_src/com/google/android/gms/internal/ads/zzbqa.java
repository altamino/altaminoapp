package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbqa implements zzdti<zzbuz<zzbrw>> {
    private final zzbpx zzfji;
    private final zzdtu<zzbqe> zzfjj;

    private zzbqa(zzbpx zzbpxVar, zzdtu<zzbqe> zzdtuVar) {
        this.zzfji = zzbpxVar;
        this.zzfjj = zzdtuVar;
    }

    public static zzbqa zzc(zzbpx zzbpxVar, zzdtu<zzbqe> zzdtuVar) {
        return new zzbqa(zzbpxVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfjj.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
