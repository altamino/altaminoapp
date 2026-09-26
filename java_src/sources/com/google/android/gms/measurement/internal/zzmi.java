package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes11.dex */
final class zzmi {
    private final Clock zza;
    private long zzb;

    public final void zza() {
        this.zzb = 0L;
    }

    public final boolean zza(long j6) {
        return this.zzb == 0 || this.zza.elapsedRealtime() - this.zzb >= 3600000;
    }

    public final void zzb() {
        this.zzb = this.zza.elapsedRealtime();
    }

    public zzmi(Clock clock) {
        Preconditions.checkNotNull(clock);
        this.zza = clock;
    }
}
