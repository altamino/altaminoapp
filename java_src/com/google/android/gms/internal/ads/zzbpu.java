package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbpu implements zzdti<zzcxu> {
    private final zzbpr zzfjf;

    private zzbpu(zzbpr zzbprVar) {
        this.zzfjf = zzbprVar;
    }

    public static zzbpu zze(zzbpr zzbprVar) {
        return new zzbpu(zzbprVar);
    }

    public static zzcxu zzf(zzbpr zzbprVar) {
        return (zzcxu) zzdto.zza(zzbprVar.zzaga(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzf(this.zzfjf);
    }
}
