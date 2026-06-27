package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzez implements Runnable {
    private final /* synthetic */ zzam zzqy;
    private final /* synthetic */ zzey zzqz;

    zzez(zzey zzeyVar, zzam zzamVar) {
        this.zzqz = zzeyVar;
        this.zzqy = zzamVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzqz) {
            zzey.zza(this.zzqz, false);
            if (!this.zzqz.zzqq.isConnected()) {
                this.zzqz.zzqq.zzad().zzdi().zzaq("Connected to service");
                this.zzqz.zzqq.zza(this.zzqy);
            }
        }
    }
}
