package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzblg implements zzdti<zzbah> {
    private final zzdtu<String> zzfem;

    private zzblg(zzdtu<String> zzdtuVar) {
        this.zzfem = zzdtuVar;
    }

    public static zzblg zza(zzdtu<String> zzdtuVar) {
        return new zzblg(zzdtuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbah) zzdto.zza(new zzbah(this.zzfem.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
