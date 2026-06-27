package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzbtb extends zzbts<zzbtf> {
    private final Clock zzbsa;
    private boolean zzfgb;
    private final ScheduledExecutorService zzfkf;
    private long zzfkg;
    private long zzfkh;
    private ScheduledFuture<?> zzfki;

    public zzbtb(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        super(Collections.emptySet());
        this.zzfkg = -1L;
        this.zzfkh = -1L;
        this.zzfgb = false;
        this.zzfkf = scheduledExecutorService;
        this.zzbsa = clock;
    }

    public final synchronized void onPause() {
        if (!this.zzfgb) {
            if (this.zzfki != null && !this.zzfki.isCancelled()) {
                this.zzfki.cancel(true);
                this.zzfkh = this.zzfkg - this.zzbsa.elapsedRealtime();
            } else {
                this.zzfkh = -1L;
            }
            this.zzfgb = true;
        }
    }

    public final synchronized void onResume() {
        if (this.zzfgb) {
            if (this.zzfkh > 0 && this.zzfki.isCancelled()) {
                zzfg(this.zzfkh);
            }
            this.zzfgb = false;
        }
    }

    public final synchronized void zzagi() {
        this.zzfgb = false;
        zzfg(0L);
    }

    public final synchronized void zzdk(int i) {
        if (i <= 0) {
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(i);
        if (!this.zzfgb) {
            if (this.zzbsa.elapsedRealtime() > this.zzfkg || this.zzfkg - this.zzbsa.elapsedRealtime() > millis) {
                zzfg(millis);
            }
        } else {
            if (this.zzfkh <= 0 || millis >= this.zzfkh) {
                millis = this.zzfkh;
            }
            this.zzfkh = millis;
        }
    }

    private final synchronized void zzfg(long j) {
        if (this.zzfki != null && !this.zzfki.isDone()) {
            this.zzfki.cancel(true);
        }
        this.zzfkg = this.zzbsa.elapsedRealtime() + j;
        this.zzfki = this.zzfkf.schedule(new zzbte(this), j, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzagj() {
        zza(zzbtc.zzfka);
    }
}
