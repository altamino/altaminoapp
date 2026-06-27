package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.zzsh;
import java.io.IOException;

@SuppressLint({"HandlerLeak"})
/* loaded from: classes2.dex */
final class zzsg<T extends zzsh> extends Handler implements Runnable {
    private volatile boolean zzacf;
    private volatile Thread zzaqn;
    private final T zzbmt;
    private final zzsf<T> zzbmu;
    public final int zzbmv;
    private final long zzbmw;
    private IOException zzbmx;
    private int zzbmy;
    private final /* synthetic */ zzse zzbmz;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzsg(zzse zzseVar, Looper looper, T t, zzsf<T> zzsfVar, int i, long j) {
        super(looper);
        this.zzbmz = zzseVar;
        this.zzbmt = t;
        this.zzbmu = zzsfVar;
        this.zzbmv = i;
        this.zzbmw = j;
    }

    public final void zzbm(int i) throws IOException {
        IOException iOException = this.zzbmx;
        if (iOException != null && this.zzbmy > i) {
            throw iOException;
        }
    }

    public final void zzeq(long j) {
        zzsk.checkState(this.zzbmz.zzbmr == null);
        this.zzbmz.zzbmr = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            execute();
        }
    }

    public final void zzl(boolean z) {
        this.zzacf = z;
        this.zzbmx = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.zzbmt.zzfp();
            if (this.zzaqn != null) {
                this.zzaqn.interrupt();
            }
        }
        if (z) {
            finish();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.zzbmu.zza((zzsf<T>) this.zzbmt, jElapsedRealtime, jElapsedRealtime - this.zzbmw, true);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzaqn = Thread.currentThread();
            if (!this.zzbmt.zzfq()) {
                String strValueOf = String.valueOf(this.zzbmt.getClass().getSimpleName());
                zzsx.beginSection(strValueOf.length() != 0 ? "load:".concat(strValueOf) : new String("load:"));
                try {
                    this.zzbmt.zzfr();
                    zzsx.endSection();
                } catch (Throwable th) {
                    zzsx.endSection();
                    throw th;
                }
            }
            if (this.zzacf) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.zzacf) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Exception e2) {
            Log.e("LoadTask", "Unexpected exception loading stream", e2);
            if (this.zzacf) {
                return;
            }
            obtainMessage(3, new zzsi(e2)).sendToTarget();
        } catch (OutOfMemoryError e3) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e3);
            if (this.zzacf) {
                return;
            }
            obtainMessage(3, new zzsi(e3)).sendToTarget();
        } catch (Error e4) {
            Log.e("LoadTask", "Unexpected error loading stream", e4);
            if (!this.zzacf) {
                obtainMessage(4, e4).sendToTarget();
            }
            throw e4;
        } catch (InterruptedException unused) {
            zzsk.checkState(this.zzbmt.zzfq());
            if (this.zzacf) {
                return;
            }
            sendEmptyMessage(2);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.zzacf) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            execute();
            return;
        }
        if (i == 4) {
            throw ((Error) message.obj);
        }
        finish();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - this.zzbmw;
        if (this.zzbmt.zzfq()) {
            this.zzbmu.zza((zzsf<T>) this.zzbmt, jElapsedRealtime, j, false);
            return;
        }
        int i2 = message.what;
        if (i2 == 1) {
            this.zzbmu.zza((zzsf<T>) this.zzbmt, jElapsedRealtime, j, false);
            return;
        }
        if (i2 == 2) {
            this.zzbmu.zza(this.zzbmt, jElapsedRealtime, j);
            return;
        }
        if (i2 != 3) {
            return;
        }
        this.zzbmx = (IOException) message.obj;
        int iZza = this.zzbmu.zza((zzsf<T>) this.zzbmt, jElapsedRealtime, j, this.zzbmx);
        if (iZza == 3) {
            this.zzbmz.zzbms = this.zzbmx;
        } else if (iZza != 2) {
            this.zzbmy = iZza == 1 ? 1 : this.zzbmy + 1;
            zzeq(Math.min((this.zzbmy - 1) * 1000, 5000));
        }
    }

    private final void execute() {
        this.zzbmx = null;
        this.zzbmz.zzaqh.execute(this.zzbmz.zzbmr);
    }

    private final void finish() {
        this.zzbmz.zzbmr = null;
    }
}
