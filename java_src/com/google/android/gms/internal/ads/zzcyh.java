package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcyh implements zzdti<zzbuz<zzbro>> {
    private final zzdtu<zzcyi> zzfjj;
    private final zzcyg zzglp;

    private zzcyh(zzcyg zzcygVar, zzdtu<zzcyi> zzdtuVar) {
        this.zzglp = zzcygVar;
        this.zzfjj = zzdtuVar;
    }

    public static zzcyh zza(zzcyg zzcygVar, zzdtu<zzcyi> zzdtuVar) {
        return new zzcyh(zzcygVar, zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdto.zza(new zzbuz(this.zzfjj.get(), zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
