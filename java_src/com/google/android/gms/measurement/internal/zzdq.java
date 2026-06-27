package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzdq implements Runnable {
    private final /* synthetic */ AtomicReference zzpl;
    private final /* synthetic */ zzdd zzpm;

    zzdq(zzdd zzddVar, AtomicReference atomicReference) {
        this.zzpm = zzddVar;
        this.zzpl = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzpl) {
            try {
                this.zzpl.set(Long.valueOf(this.zzpm.zzaf().zza(this.zzpm.zzt().zzan(), zzal.zzhm)));
            } finally {
                this.zzpl.notify();
            }
        }
    }
}
