package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbyk implements zzdti<zzbuz<zzbrw>> {
    private final zzdtu<zzcac> zzfhs;
    private final zzbyc zzfnl;

    public zzbyk(zzbyc zzbycVar, zzdtu<zzcac> zzdtuVar) {
        this.zzfnl = zzbycVar;
        this.zzfhs = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfhs.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
