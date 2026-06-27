package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzboq implements zzdti<Runnable> {
    private final zzbop zzfif;

    public zzboq(zzbop zzbopVar) {
        this.zzfif = zzbopVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Runnable) zzdto.zza(this.zzfif.zzafu(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
