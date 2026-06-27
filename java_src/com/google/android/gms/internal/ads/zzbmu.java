package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbmu implements zzdti<zzaly> {
    private final zzdtu<zzalr> zzfgr;

    private zzbmu(zzdtu<zzalr> zzdtuVar) {
        this.zzfgr = zzdtuVar;
    }

    public static zzbmu zzh(zzdtu<zzalr> zzdtuVar) {
        return new zzbmu(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzaly) zzdto.zza(this.zzfgr.get().zzsc(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
