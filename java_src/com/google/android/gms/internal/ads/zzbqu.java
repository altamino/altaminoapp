package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbqu implements zzdti<zzbuz<zzbtk>> {
    private final zzdtu<zzbqr> zzfgm;
    private final zzbqt zzfjr;

    private zzbqu(zzbqt zzbqtVar, zzdtu<zzbqr> zzdtuVar) {
        this.zzfjr = zzbqtVar;
        this.zzfgm = zzdtuVar;
    }

    public static zzbqu zza(zzbqt zzbqtVar, zzdtu<zzbqr> zzdtuVar) {
        return new zzbqu(zzbqtVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfgm.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
