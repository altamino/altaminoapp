package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzblk implements zzdti<zzawf> {
    private static final zzblk zzfeq = new zzblk();

    public static zzblk zzaeu() {
        return zzfeq;
    }

    public static zzawf zzaev() {
        return (zzawf) zzdto.zza(new zzawf(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzaev();
    }
}
