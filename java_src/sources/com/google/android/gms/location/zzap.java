package com.google.android.gms.location;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzap implements RemoteCall<com.google.android.gms.internal.location.zzaz, TaskCompletionSource<Boolean>> {
    private boolean zza = true;

    protected zzap() {
    }

    protected final boolean zza() {
        return this.zza;
    }

    final void zzb(boolean z6) {
        this.zza = false;
    }
}
