package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.io.IOException;

@SuppressLint({"HandlerLeak"})
/* loaded from: classes2.dex */
final class zzkb extends Handler implements Runnable {
    private final zzkc zzaqk;
    private final zzka zzaql;
    private final int zzaqm;
    private volatile Thread zzaqn;
    private final /* synthetic */ zzjz zzaqo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkb(zzjz zzjzVar, Looper looper, zzkc zzkcVar, zzka zzkaVar, int i) {
        super(looper);
        this.zzaqo = zzjzVar;
        this.zzaqk = zzkcVar;
        this.zzaql = zzkaVar;
        this.zzaqm = 0;
    }

    public final void quit() {
        this.zzaqk.zzfp();
        if (this.zzaqn != null) {
            this.zzaqn.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        try {
            this.zzaqn = Thread.currentThread();
            if (this.zzaqm > 0) {
                Thread.sleep(this.zzaqm);
            }
            if (!this.zzaqk.zzfq()) {
                this.zzaqk.zzfr();
            }
            sendEmptyMessage(0);
        } catch (IOException e) {
            obtainMessage(1, e).sendToTarget();
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            obtainMessage(2, e2).sendToTarget();
            throw e2;
        } catch (InterruptedException unused) {
            zzkh.checkState(this.zzaqk.zzfq());
            sendEmptyMessage(0);
        } catch (Exception e3) {
            Log.e("LoadTask", "Unexpected exception loading stream", e3);
            obtainMessage(1, new zzkd(e3)).sendToTarget();
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what == 2) {
            throw ((Error) message.obj);
        }
        zzjz.zza(this.zzaqo, false);
        zzjz.zza(this.zzaqo, (zzkb) null);
        if (this.zzaqk.zzfq()) {
            this.zzaql.zzb(this.zzaqk);
            return;
        }
        int i = message.what;
        if (i == 0) {
            this.zzaql.zza(this.zzaqk);
        } else {
            if (i != 1) {
                return;
            }
            this.zzaql.zza(this.zzaqk, (IOException) message.obj);
        }
    }
}
