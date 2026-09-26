package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes10.dex */
abstract class zzic extends zzid {
    private boolean zza;

    final boolean zzae() {
        return this.zza;
    }

    protected abstract boolean zzo();

    protected void zzz() {
    }

    public final void zzac() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zzo()) {
            return;
        }
        this.zzu.zzz();
        this.zza = true;
    }

    public final void zzad() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzz();
        this.zzu.zzz();
        this.zza = true;
    }

    zzic(zzhf zzhfVar) {
        super(zzhfVar);
        this.zzu.zzaa();
    }

    protected final void zzab() {
        if (zzae()) {
        } else {
            throw new IllegalStateException("Not initialized");
        }
    }
}
