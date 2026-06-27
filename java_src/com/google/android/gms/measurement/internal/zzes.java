package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;

/* loaded from: classes2.dex */
final class zzes implements Runnable {
    private final /* synthetic */ zzaj zzdj;
    private final /* synthetic */ String zzdk;
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzeg zzqq;
    private final /* synthetic */ boolean zzqr;
    private final /* synthetic */ boolean zzqt;

    zzes(zzeg zzegVar, boolean z, boolean z2, zzaj zzajVar, zzm zzmVar, String str) {
        this.zzqq = zzegVar;
        this.zzqt = z;
        this.zzqr = z2;
        this.zzdj = zzajVar;
        this.zzos = zzmVar;
        this.zzdk = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        zzam zzamVar = this.zzqq.zzqk;
        if (zzamVar == null) {
            this.zzqq.zzad().zzda().zzaq("Discarding data. Failed to send event to service");
            return;
        }
        if (this.zzqt) {
            this.zzqq.zza(zzamVar, this.zzqr ? null : this.zzdj, this.zzos);
        } else {
            try {
                if (TextUtils.isEmpty(this.zzdk)) {
                    zzamVar.zza(this.zzdj, this.zzos);
                } else {
                    zzamVar.zza(this.zzdj, this.zzdk, this.zzqq.zzad().zzdk());
                }
            } catch (RemoteException e) {
                this.zzqq.zzad().zzda().zza("Failed to send event to the service", e);
            }
        }
        this.zzqq.zzfg();
    }
}
