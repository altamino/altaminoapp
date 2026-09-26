package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes10.dex */
abstract class zze extends zzf {
    private boolean zza;

    @WorkerThread
    protected void zzx() {
    }

    final boolean zzy() {
        return this.zza;
    }

    protected abstract boolean zzz();

    public final void zzv() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zzz()) {
            return;
        }
        this.zzu.zzz();
        this.zza = true;
    }

    public final void zzw() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzx();
        this.zzu.zzz();
        this.zza = true;
    }

    zze(zzhf zzhfVar) {
        super(zzhfVar);
        this.zzu.zzaa();
    }

    protected final void zzu() {
        if (zzy()) {
        } else {
            throw new IllegalStateException("Not initialized");
        }
    }
}
