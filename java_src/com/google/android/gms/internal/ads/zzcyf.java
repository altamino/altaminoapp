package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;

/* loaded from: classes2.dex */
public final class zzcyf implements zzdti<Clock> {
    private final zzcye zzglo;

    public zzcyf(zzcye zzcyeVar) {
        this.zzglo = zzcyeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return (Clock) zzdto.zza(DefaultClock.getInstance(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
