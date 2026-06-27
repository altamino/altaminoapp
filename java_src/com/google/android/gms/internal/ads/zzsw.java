package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* loaded from: classes2.dex */
public final class zzsw implements zzso {
    private boolean started;
    private zzln zzasc = zzln.zzaug;
    private long zzbno;
    private long zzbnp;

    public final void start() {
        if (this.started) {
            return;
        }
        this.zzbnp = SystemClock.elapsedRealtime();
        this.started = true;
    }

    public final void stop() {
        if (this.started) {
            zzdj(zzdv());
            this.started = false;
        }
    }

    public final void zzdj(long j) {
        this.zzbno = j;
        if (this.started) {
            this.zzbnp = SystemClock.elapsedRealtime();
        }
    }

    public final void zza(zzso zzsoVar) {
        zzdj(zzsoVar.zzdv());
        this.zzasc = zzsoVar.zzhq();
    }

    @Override // com.google.android.gms.internal.ads.zzso
    public final long zzdv() {
        long jZzef;
        long j = this.zzbno;
        if (!this.started) {
            return j;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.zzbnp;
        zzln zzlnVar = this.zzasc;
        if (zzlnVar.zzauh == 1.0f) {
            jZzef = zzkt.zzea(jElapsedRealtime);
        } else {
            jZzef = zzlnVar.zzef(jElapsedRealtime);
        }
        return j + jZzef;
    }

    @Override // com.google.android.gms.internal.ads.zzso
    public final zzln zzb(zzln zzlnVar) {
        if (this.started) {
            zzdj(zzdv());
        }
        this.zzasc = zzlnVar;
        return zzlnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzso
    public final zzln zzhq() {
        return this.zzasc;
    }
}
