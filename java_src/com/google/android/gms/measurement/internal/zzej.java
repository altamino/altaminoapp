package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzej implements Runnable {
    private final /* synthetic */ boolean zzbd;
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzeg zzqq;
    private final /* synthetic */ AtomicReference zzqs;

    zzej(zzeg zzegVar, AtomicReference atomicReference, zzm zzmVar, boolean z) {
        this.zzqq = zzegVar;
        this.zzqs = atomicReference;
        this.zzos = zzmVar;
        this.zzbd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzam zzamVar;
        synchronized (this.zzqs) {
            try {
                try {
                    zzamVar = this.zzqq.zzqk;
                } catch (RemoteException e) {
                    this.zzqq.zzad().zzda().zza("Failed to get user properties", e);
                }
                if (zzamVar == null) {
                    this.zzqq.zzad().zzda().zzaq("Failed to get user properties");
                    return;
                }
                this.zzqs.set(zzamVar.zza(this.zzos, this.zzbd));
                this.zzqq.zzfg();
                this.zzqs.notify();
            } finally {
                this.zzqs.notify();
            }
        }
    }
}
