package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbwv implements zzdti<zzbuz<zzbrl>> {
    private final zzdtu<zzbus> zzfgm;

    public zzbwv(zzdtu<zzbus> zzdtuVar) {
        this.zzfgm = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfgm.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
