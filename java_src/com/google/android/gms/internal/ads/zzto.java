package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;

/* loaded from: classes2.dex */
public final class zzto {
    private final Handler handler;
    private final zztn zzbpt;

    public zzto(Handler handler, zztn zztnVar) {
        this.handler = zztnVar != null ? (Handler) zzsk.checkNotNull(handler) : null;
        this.zzbpt = zztnVar;
    }

    public final void zzc(zznc zzncVar) {
        if (this.zzbpt != null) {
            this.handler.post(new zztp(this, zzncVar));
        }
    }

    public final void zzc(String str, long j, long j2) {
        if (this.zzbpt != null) {
            this.handler.post(new zztq(this, str, j, j2));
        }
    }

    public final void zzc(zzlh zzlhVar) {
        if (this.zzbpt != null) {
            this.handler.post(new zztr(this, zzlhVar));
        }
    }

    public final void zzg(int i, long j) {
        if (this.zzbpt != null) {
            this.handler.post(new zzts(this, i, j));
        }
    }

    public final void zzb(int i, int i2, int i3, float f) {
        if (this.zzbpt != null) {
            this.handler.post(new zztt(this, i, i2, i3, f));
        }
    }

    public final void zzc(Surface surface) {
        if (this.zzbpt != null) {
            this.handler.post(new zztu(this, surface));
        }
    }

    public final void zzd(zznc zzncVar) {
        if (this.zzbpt != null) {
            this.handler.post(new zztv(this, zzncVar));
        }
    }
}
