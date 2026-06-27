package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbnu implements zzdti<zzbuz<zzbrw>> {
    private final zzbnk zzfhp;
    private final zzdtu<zzbot> zzfhs;

    public zzbnu(zzbnk zzbnkVar, zzdtu<zzbot> zzdtuVar) {
        this.zzfhp = zzbnkVar;
        this.zzfhs = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfhs.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
