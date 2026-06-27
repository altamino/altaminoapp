package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzac implements Runnable {
    private final /* synthetic */ zzcv zzeu;
    private final /* synthetic */ zzab zzev;

    zzac(zzab zzabVar, zzcv zzcvVar) {
        this.zzev = zzabVar;
        this.zzeu = zzcvVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.zzeu.zzag();
        if (zzq.isMainThread()) {
            this.zzeu.zzac().zza(this);
            return;
        }
        boolean zZzcn = this.zzev.zzcn();
        zzab.zza(this.zzev, 0L);
        if (zZzcn) {
            this.zzev.run();
        }
    }
}
