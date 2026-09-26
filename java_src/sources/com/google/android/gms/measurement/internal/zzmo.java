package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes11.dex */
abstract class zzmo extends zzml {
    private boolean zza;

    final boolean zzam() {
        return this.zza;
    }

    protected abstract boolean zzc();

    public final void zzal() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzc();
        this.zzf.zzt();
        this.zza = true;
    }

    zzmo(zzmp zzmpVar) {
        super(zzmpVar);
        this.zzf.zzu();
    }

    protected final void zzak() {
        if (zzam()) {
        } else {
            throw new IllegalStateException("Not initialized");
        }
    }
}
