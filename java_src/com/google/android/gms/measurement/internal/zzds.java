package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzds implements Runnable {
    private final /* synthetic */ AtomicReference zzpl;
    private final /* synthetic */ zzdd zzpm;

    zzds(zzdd zzddVar, AtomicReference atomicReference) {
        this.zzpm = zzddVar;
        this.zzpl = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzpl) {
            try {
                this.zzpl.set(Double.valueOf(this.zzpm.zzaf().zzc(this.zzpm.zzt().zzan(), zzal.zzho)));
            } finally {
                this.zzpl.notify();
            }
        }
    }
}
