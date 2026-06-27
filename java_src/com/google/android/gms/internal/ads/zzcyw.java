package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class zzcyw implements zzdti<zzbbl> {
    private static final zzcyw zzgly = new zzcyw();

    public static zzcyw zzamv() {
        return zzgly;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (zzbbl) zzdto.zza(zzbbm.zza(Executors.newSingleThreadExecutor()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
