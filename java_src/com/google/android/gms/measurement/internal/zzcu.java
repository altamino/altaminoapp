package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
abstract class zzcu extends zzct {
    private boolean zzce;

    zzcu(zzby zzbyVar) {
        super(zzbyVar);
        this.zzl.zzb(this);
    }

    protected abstract boolean zzak();

    protected void zzal() {
    }

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
        if (zzak()) {
            return;
        }
        this.zzl.zzes();
        this.zzce = true;
    }

    public final void zzaj() {
        if (this.zzce) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzal();
        this.zzl.zzes();
        this.zzce = true;
    }
}
