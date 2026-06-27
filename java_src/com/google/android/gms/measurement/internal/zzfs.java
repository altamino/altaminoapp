package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
abstract class zzfs extends zzfr {
    private boolean zzce;

    zzfs(zzft zzftVar) {
        super(zzftVar);
        this.zzkt.zzb(this);
    }

    protected abstract boolean zzak();

    final boolean isInitialized() {
        return this.zzce;
    }

    protected final void zzah() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzai() {
        if (this.zzce) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzak();
        this.zzkt.zzgh();
        this.zzce = true;
    }
}
