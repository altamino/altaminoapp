package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes2.dex */
public final class zzczb implements zzdti<ThreadFactory> {
    private static final zzczb zzgmd = new zzczb();

    public static zzczb zzana() {
        return zzgmd;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (ThreadFactory) zzdto.zza(new zzcyu(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
