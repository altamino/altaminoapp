package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.WindowManager;

@TargetApi(16)
/* loaded from: classes2.dex */
public final class zztl {
    private final zztm zzbpd;
    private final boolean zzbpe;
    private final long zzbpf;
    private final long zzbpg;
    private long zzbph;
    private long zzbpi;
    private long zzbpj;
    private boolean zzbpk;
    private long zzbpl;
    private long zzbpm;
    private long zzbpn;

    public zztl() {
        this(-1.0d);
    }

    public zztl(Context context) {
        this(((WindowManager) context.getSystemService("window")).getDefaultDisplay() != null ? r3.getDefaultDisplay().getRefreshRate() : -1.0d);
    }

    private zztl(double d) {
        this.zzbpe = d != -1.0d;
        if (this.zzbpe) {
            this.zzbpd = zztm.zzkn();
            this.zzbpf = (long) (1.0E9d / d);
            this.zzbpg = (this.zzbpf * 80) / 100;
        } else {
            this.zzbpd = null;
            this.zzbpf = -1L;
            this.zzbpg = -1L;
        }
    }

    public final void enable() {
        this.zzbpk = false;
        if (this.zzbpe) {
            this.zzbpd.zzko();
        }
    }

    public final void disable() {
        if (this.zzbpe) {
            this.zzbpd.zzkp();
        }
    }

    public final long zzg(long j, long j2) {
        long j3;
        long j4;
        long j5;
        long j6 = 1000 * j;
        if (this.zzbpk) {
            if (j != this.zzbph) {
                this.zzbpn++;
                this.zzbpi = this.zzbpj;
            }
            long j7 = this.zzbpn;
            if (j7 >= 6) {
                j4 = this.zzbpi + ((j6 - this.zzbpm) / j7);
                if (zzh(j4, j2)) {
                    this.zzbpk = false;
                } else {
                    j3 = (this.zzbpl + j4) - this.zzbpm;
                }
            } else if (zzh(j6, j2)) {
                this.zzbpk = false;
            }
            j3 = j2;
            j4 = j6;
        } else {
            j3 = j2;
            j4 = j6;
        }
        if (!this.zzbpk) {
            this.zzbpm = j6;
            this.zzbpl = j2;
            this.zzbpn = 0L;
            this.zzbpk = true;
        }
        this.zzbph = j;
        this.zzbpj = j4;
        zztm zztmVar = this.zzbpd;
        if (zztmVar == null || zztmVar.zzbpo == 0) {
            return j3;
        }
        long j8 = this.zzbpd.zzbpo;
        long j9 = this.zzbpf;
        long j10 = j8 + (((j3 - j8) / j9) * j9);
        if (j3 <= j10) {
            j5 = j10 - j9;
        } else {
            j10 = j9 + j10;
            j5 = j10;
        }
        if (j10 - j3 >= j3 - j5) {
            j10 = j5;
        }
        return j10 - this.zzbpg;
    }

    private final boolean zzh(long j, long j2) {
        return Math.abs((j2 - this.zzbpl) - (j - this.zzbpm)) > 20000000;
    }
}
