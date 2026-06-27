package com.google.android.gms.internal.ads;

import android.net.Uri;

/* loaded from: classes2.dex */
final class zzih implements zzkc {
    private final Uri uri;
    private final zzjp zzahu;
    private final zzid zzaic;
    private final zzjr zzaid;
    private final int zzaie;
    private final zzij zzajc = new zzij();
    private volatile boolean zzajd;
    private boolean zzaje;

    public zzih(Uri uri, zzjp zzjpVar, zzid zzidVar, zzjr zzjrVar, int i, long j) {
        this.uri = (Uri) zzkh.checkNotNull(uri);
        this.zzahu = (zzjp) zzkh.checkNotNull(zzjpVar);
        this.zzaic = (zzid) zzkh.checkNotNull(zzidVar);
        this.zzaid = (zzjr) zzkh.checkNotNull(zzjrVar);
        this.zzaie = i;
        this.zzajc.zzahv = j;
        this.zzaje = true;
    }

    @Override // com.google.android.gms.internal.ads.zzkc
    public final void zzfp() {
        this.zzajd = true;
    }

    @Override // com.google.android.gms.internal.ads.zzkc
    public final boolean zzfq() {
        return this.zzajd;
    }

    @Override // com.google.android.gms.internal.ads.zzkc
    public final void zzfr() throws Throwable {
        if (this.zzaje) {
            this.zzaic.zzfh();
            this.zzaje = false;
        }
        int iZza = 0;
        while (iZza == 0 && !this.zzajd) {
            zzib zzibVar = null;
            try {
                long j = this.zzajc.zzahv;
                long jZza = this.zzahu.zza(new zzjq(this.uri, j, -1L, null));
                if (jZza != -1) {
                    jZza += j;
                }
                zzib zzibVar2 = new zzib(this.zzahu, j, jZza);
                while (iZza == 0) {
                    try {
                        if (this.zzajd) {
                            break;
                        }
                        this.zzaid.zzaa(this.zzaie);
                        iZza = this.zzaic.zza(zzibVar2, this.zzajc);
                    } catch (Throwable th) {
                        th = th;
                        zzibVar = zzibVar2;
                        if (iZza != 1 && zzibVar != null) {
                            this.zzajc.zzahv = zzibVar.getPosition();
                        }
                        this.zzahu.close();
                        throw th;
                    }
                }
                if (iZza == 1) {
                    iZza = 0;
                } else {
                    this.zzajc.zzahv = zzibVar2.getPosition();
                }
                this.zzahu.close();
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
