package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbwh implements zzdti<zzbuz<com.google.android.gms.ads.internal.overlay.zzo>> {
    private final zzdtu<zzbxa> zzfhs;
    private final zzbvz zzflo;

    private zzbwh(zzbvz zzbvzVar, zzdtu<zzbxa> zzdtuVar) {
        this.zzflo = zzbvzVar;
        this.zzfhs = zzdtuVar;
    }

    public static zzbwh zzc(zzbvz zzbvzVar, zzdtu<zzbxa> zzdtuVar) {
        return new zzbwh(zzbvzVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfhs.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
