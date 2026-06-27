package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbps implements zzdti<zzcxm> {
    private final zzbpr zzfjf;

    private zzbps(zzbpr zzbprVar) {
        this.zzfjf = zzbprVar;
    }

    public static zzbps zza(zzbpr zzbprVar) {
        return new zzbps(zzbprVar);
    }

    public static zzcxm zzb(zzbpr zzbprVar) {
        return (zzcxm) zzdto.zza(zzbprVar.zzagb(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzb(this.zzfjf);
    }
}
