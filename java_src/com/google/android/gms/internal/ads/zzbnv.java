package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbnv implements zzdti<zzbuz<zzbsr>> {
    private final zzbnk zzfhp;
    private final zzdtu<zzbot> zzfhs;

    public zzbnv(zzbnk zzbnkVar, zzdtu<zzbot> zzdtuVar) {
        this.zzfhp = zzbnkVar;
        this.zzfhs = zzdtuVar;
    }

    public static zzbuz<zzbsr> zza(zzbnk zzbnkVar, zzbot zzbotVar) {
        return (zzbuz) zzdto.zza(new zzbuz(zzbotVar, zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zza(this.zzfhp, this.zzfhs.get());
    }
}
