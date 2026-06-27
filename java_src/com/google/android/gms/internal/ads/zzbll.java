package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbll implements zzdti<zzamh> {
    private static final zzbll zzfer = new zzbll();

    public static zzbll zzaew() {
        return zzfer;
    }

    public static zzamh zzaex() {
        return (zzamh) zzdto.zza(new zzamh(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzaex();
    }
}
