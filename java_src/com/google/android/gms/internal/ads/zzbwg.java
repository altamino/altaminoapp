package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbwg implements zzdti<zzbuz<zzbsr>> {
    private final zzdtu<zzbxa> zzfhs;
    private final zzbvz zzflo;

    private zzbwg(zzbvz zzbvzVar, zzdtu<zzbxa> zzdtuVar) {
        this.zzflo = zzbvzVar;
        this.zzfhs = zzdtuVar;
    }

    public static zzbwg zzb(zzbvz zzbvzVar, zzdtu<zzbxa> zzdtuVar) {
        return new zzbwg(zzbvzVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfhs.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
