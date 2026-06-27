package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbpt implements zzdti<String> {
    private final zzbpr zzfjf;

    private zzbpt(zzbpr zzbprVar) {
        this.zzfjf = zzbprVar;
    }

    public static zzbpt zzc(zzbpr zzbprVar) {
        return new zzbpt(zzbprVar);
    }

    public static String zzd(zzbpr zzbprVar) {
        return (String) zzdto.zza(zzbprVar.zzagc(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzd(this.zzfjf);
    }
}
