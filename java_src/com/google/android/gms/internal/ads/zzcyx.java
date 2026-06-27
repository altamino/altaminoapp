package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcyx implements zzdti<zzbbl> {
    private static final zzcyx zzglz = new zzcyx();

    public static zzcyx zzamw() {
        return zzglz;
    }

    public static zzbbl zzamx() {
        return (zzbbl) zzdto.zza(zzaxg.zzdvp, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzamx();
    }
}
