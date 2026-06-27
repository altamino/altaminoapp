package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
final class zzgk implements Handler.Callback {
    private final Handler handler;
    private int state;
    private final Handler zzabq;
    private final boolean[] zzabt;
    private boolean zzabu;
    private final HandlerThread zzaby;
    private final zzgm zzabz;
    private final List<zzhp> zzacc;
    private zzhp[] zzacd;
    private zzhp zzace;
    private boolean zzacf;
    private boolean zzacg;
    private long zzacj;
    private volatile long zzack;
    private volatile long zzacl;
    private volatile long zzacm;
    private int zzach = 0;
    private int zzaci = 0;
    private final long zzaca = 2500000;
    private final long zzacb = 5000000;

    public zzgk(Handler handler, boolean z, boolean[] zArr, int i, int i2) {
        this.zzabq = handler;
        this.zzabu = z;
        this.zzabt = new boolean[zArr.length];
        for (int i3 = 0; i3 < zArr.length; i3++) {
            this.zzabt[i3] = zArr[i3];
        }
        this.state = 1;
        this.zzack = -1L;
        this.zzacm = -1L;
        this.zzabz = new zzgm();
        this.zzacc = new ArrayList(zArr.length);
        this.zzaby = new zzko(String.valueOf(zzgk.class.getSimpleName()).concat(":Handler"), -16);
        this.zzaby.start();
        this.handler = new Handler(this.zzaby.getLooper(), this);
    }

    public final long zzdn() {
        return this.zzacl / 1000;
    }

    public final long getBufferedPosition() {
        if (this.zzacm == -1) {
            return -1L;
        }
        return this.zzacm / 1000;
    }

    public final long getDuration() {
        if (this.zzack == -1) {
            return -1L;
        }
        return this.zzack / 1000;
    }

    public final void zza(zzhp... zzhpVarArr) {
        this.handler.obtainMessage(1, zzhpVarArr).sendToTarget();
    }

    public final void zzd(boolean z) {
        this.handler.obtainMessage(3, z ? 1 : 0, 0).sendToTarget();
    }

    public final void seekTo(long j) {
        this.handler.obtainMessage(6, Long.valueOf(j)).sendToTarget();
    }

    public final void stop() {
        this.handler.sendEmptyMessage(4);
    }

    public final void zzc(int i, boolean z) {
        this.handler.obtainMessage(8, 0, z ? 1 : 0).sendToTarget();
    }

    public final void zza(zzgf zzgfVar, int i, Object obj) {
        this.zzach++;
        this.handler.obtainMessage(9, 1, 0, Pair.create(zzgfVar, obj)).sendToTarget();
    }

    public final synchronized void zzb(zzgf zzgfVar, int i, Object obj) {
        if (this.zzacf) {
            StringBuilder sb = new StringBuilder(57);
            sb.append("Sent message(1");
            sb.append(") after release. Message ignored.");
            Log.w("ExoPlayerImplInternal", sb.toString());
            return;
        }
        int i2 = this.zzach;
        this.zzach = i2 + 1;
        this.handler.obtainMessage(9, 1, 0, Pair.create(zzgfVar, obj)).sendToTarget();
        while (this.zzaci <= i2) {
            try {
                wait();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public final synchronized void release() {
        if (this.zzacf) {
            return;
        }
        this.handler.sendEmptyMessage(5);
        while (!this.zzacf) {
            try {
                wait();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        this.zzaby.quit();
    }

    /* JADX WARN: Removed duplicated region for block: B:194:0x02b7 A[PHI: r1 r3 r5
  0x02b7: PHI (r1v15 long) = (r1v12 long), (r1v12 long), (r1v12 long), (r1v18 long) binds: [B:175:0x0280, B:177:0x0287, B:190:0x02ac, B:193:0x02b6] A[DONT_GENERATE, DONT_INLINE]
  0x02b7: PHI (r3v4 boolean) = (r3v3 boolean), (r3v3 boolean), (r3v7 boolean), (r3v7 boolean) binds: [B:175:0x0280, B:177:0x0287, B:190:0x02ac, B:193:0x02b6] A[DONT_GENERATE, DONT_INLINE]
  0x02b7: PHI (r5v4 boolean) = (r5v3 boolean), (r5v3 boolean), (r5v7 boolean), (r5v7 boolean) binds: [B:175:0x0280, B:177:0x0287, B:190:0x02ac, B:193:0x02b6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r22) {
        /*
            Method dump skipped, instructions count: 866
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgk.handleMessage(android.os.Message):boolean");
    }

    private final void setState(int i) {
        if (this.state != i) {
            this.state = i;
            this.zzabq.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    private final boolean zza(zzhp zzhpVar) {
        if (zzhpVar.zzdx()) {
            return true;
        }
        if (!zzhpVar.isReady()) {
            return false;
        }
        if (this.state == 4) {
            return true;
        }
        long durationUs = zzhpVar.getDurationUs();
        long jZzdu = zzhpVar.zzdu();
        long j = this.zzacg ? this.zzacb : this.zzaca;
        return j <= 0 || jZzdu == -1 || jZzdu == -3 || jZzdu >= this.zzacl + j || !(durationUs == -1 || durationUs == -2 || jZzdu < durationUs);
    }

    private final void zzdp() throws zzgd {
        this.zzacg = false;
        this.zzabz.start();
        for (int i = 0; i < this.zzacc.size(); i++) {
            this.zzacc.get(i).start();
        }
    }

    private final void zzdq() throws zzgd {
        this.zzabz.stop();
        for (int i = 0; i < this.zzacc.size(); i++) {
            zzb(this.zzacc.get(i));
        }
    }

    private final void zzdr() {
        zzhp zzhpVar = this.zzace;
        if (zzhpVar != null && this.zzacc.contains(zzhpVar) && !this.zzace.zzdx()) {
            this.zzacl = this.zzace.zzdy();
            this.zzabz.zzdj(this.zzacl);
        } else {
            this.zzacl = this.zzabz.zzdv();
        }
        this.zzacj = SystemClock.elapsedRealtime() * 1000;
    }

    private final void zza(int i, long j, long j2) {
        long jElapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (jElapsedRealtime <= 0) {
            this.handler.sendEmptyMessage(i);
        } else {
            this.handler.sendEmptyMessageDelayed(i, jElapsedRealtime);
        }
    }

    private final void zzds() {
        zzdt();
        setState(1);
    }

    private final void zzdt() {
        this.handler.removeMessages(7);
        this.handler.removeMessages(2);
        int i = 0;
        this.zzacg = false;
        this.zzabz.stop();
        if (this.zzacd == null) {
            return;
        }
        while (true) {
            zzhp[] zzhpVarArr = this.zzacd;
            if (i < zzhpVarArr.length) {
                zzhp zzhpVar = zzhpVarArr[i];
                try {
                    zzb(zzhpVar);
                    if (zzhpVar.getState() == 2) {
                        zzhpVar.disable();
                    }
                } catch (zzgd e) {
                    Log.e("ExoPlayerImplInternal", "Stop failed.", e);
                } catch (RuntimeException e2) {
                    Log.e("ExoPlayerImplInternal", "Stop failed.", e2);
                }
                try {
                    zzhpVar.release();
                } catch (zzgd e3) {
                    Log.e("ExoPlayerImplInternal", "Release failed.", e3);
                } catch (RuntimeException e4) {
                    Log.e("ExoPlayerImplInternal", "Release failed.", e4);
                }
                i++;
            } else {
                this.zzacd = null;
                this.zzace = null;
                this.zzacc.clear();
                return;
            }
        }
    }

    private static void zzb(zzhp zzhpVar) throws zzgd {
        if (zzhpVar.getState() == 3) {
            zzhpVar.stop();
        }
    }
}
