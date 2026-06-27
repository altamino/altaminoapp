package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbre implements zzdti<zzcxv> {
    private final zzbqy zzfjw;

    private zzbre(zzbqy zzbqyVar) {
        this.zzfjw = zzbqyVar;
    }

    public static zzbre zzh(zzbqy zzbqyVar) {
        return new zzbre(zzbqyVar);
    }

    public static zzcxv zzi(zzbqy zzbqyVar) {
        return (zzcxv) zzdto.zza(zzbqyVar.zzage(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzi(this.zzfjw);
    }
}
