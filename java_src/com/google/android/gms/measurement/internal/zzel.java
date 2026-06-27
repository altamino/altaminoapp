package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class zzel implements Runnable {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzeg zzqq;
    private final /* synthetic */ AtomicReference zzqs;

    zzel(zzeg zzegVar, AtomicReference atomicReference, zzm zzmVar) {
        this.zzqq = zzegVar;
        this.zzqs = atomicReference;
        this.zzos = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzam zzamVar;
        synchronized (this.zzqs) {
            try {
                try {
                    zzamVar = this.zzqq.zzqk;
                } catch (RemoteException e) {
                    this.zzqq.zzad().zzda().zza("Failed to get app instance id", e);
                }
                if (zzamVar == null) {
                    this.zzqq.zzad().zzda().zzaq("Failed to get app instance id");
                    return;
                }
                this.zzqs.set(zzamVar.zzc(this.zzos));
                String str = (String) this.zzqs.get();
                if (str != null) {
                    this.zzqq.zzs().zzbi(str);
                    this.zzqq.zzae().zzli.zzav(str);
                }
                this.zzqq.zzfg();
                this.zzqs.notify();
            } finally {
                this.zzqs.notify();
            }
        }
    }
}
