package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbwi implements zzdti<zzbuz<zzahy>> {
    private final zzdtu<zzccz> zzfhs;
    private final zzbvz zzflo;

    public zzbwi(zzbvz zzbvzVar, zzdtu<zzccz> zzdtuVar) {
        this.zzflo = zzbvzVar;
        this.zzfhs = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfhs.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
