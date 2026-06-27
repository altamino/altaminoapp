package com.google.android.gms.internal.ads;

import android.os.Handler;

/* loaded from: classes2.dex */
public final class zzma {
    private final Handler handler;
    private final zzlz zzavi;

    public zzma(Handler handler, zzlz zzlzVar) {
        this.handler = zzlzVar != null ? (Handler) zzsk.checkNotNull(handler) : null;
        this.zzavi = zzlzVar;
    }

    public final void zzc(zznc zzncVar) {
        if (this.zzavi != null) {
            this.handler.post(new zzmb(this, zzncVar));
        }
    }

    public final void zzc(String str, long j, long j2) {
        if (this.zzavi != null) {
            this.handler.post(new zzmc(this, str, j, j2));
        }
    }

    public final void zzc(zzlh zzlhVar) {
        if (this.zzavi != null) {
            this.handler.post(new zzmd(this, zzlhVar));
        }
    }

    public final void zzd(int i, long j, long j2) {
        if (this.zzavi != null) {
            this.handler.post(new zzme(this, i, j, j2));
        }
    }

    public final void zzd(zznc zzncVar) {
        if (this.zzavi != null) {
            this.handler.post(new zzmf(this, zzncVar));
        }
    }

    public final void zzah(int i) {
        if (this.zzavi != null) {
            this.handler.post(new zzmg(this, i));
        }
    }
}
