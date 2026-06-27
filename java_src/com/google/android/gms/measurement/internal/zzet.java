package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;

/* loaded from: classes2.dex */
final class zzet implements Runnable {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzeg zzqq;
    private final /* synthetic */ boolean zzqr;
    private final /* synthetic */ boolean zzqt;
    private final /* synthetic */ zzr zzqu;
    private final /* synthetic */ zzr zzqv;

    zzet(zzeg zzegVar, boolean z, boolean z2, zzr zzrVar, zzm zzmVar, zzr zzrVar2) {
        this.zzqq = zzegVar;
        this.zzqt = z;
        this.zzqr = z2;
        this.zzqu = zzrVar;
        this.zzos = zzmVar;
        this.zzqv = zzrVar2;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        zzam zzamVar = this.zzqq.zzqk;
        if (zzamVar == null) {
            this.zzqq.zzad().zzda().zzaq("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.zzqt) {
            this.zzqq.zza(zzamVar, this.zzqr ? null : this.zzqu, this.zzos);
        } else {
            try {
                if (TextUtils.isEmpty(this.zzqv.packageName)) {
                    zzamVar.zza(this.zzqu, this.zzos);
                } else {
                    zzamVar.zzb(this.zzqu);
                }
            } catch (RemoteException e) {
                this.zzqq.zzad().zzda().zza("Failed to send conditional user property to the service", e);
            }
        }
        this.zzqq.zzfg();
    }
}
