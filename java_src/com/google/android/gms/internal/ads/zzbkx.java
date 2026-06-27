package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbkx implements zzdti<com.google.android.gms.ads.internal.zza> {
    private final zzbkw zzfed;

    public zzbkx(zzbkw zzbkwVar) {
        this.zzfed = zzbkwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (com.google.android.gms.ads.internal.zza) zzdto.zza(this.zzfed.zzaeo(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
