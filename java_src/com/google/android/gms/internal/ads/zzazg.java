package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;

@zzard
/* loaded from: classes2.dex */
public final class zzazg {
    private HandlerThread zzdxs = null;
    private Handler handler = null;
    private int zzdxt = 0;
    private final Object lock = new Object();

    public final Looper zzwr() {
        Looper looper;
        synchronized (this.lock) {
            if (this.zzdxt == 0) {
                if (this.zzdxs == null) {
                    zzawz.zzds("Starting the looper thread.");
                    this.zzdxs = new HandlerThread("LooperProvider");
                    this.zzdxs.start();
                    this.handler = new zzdbh(this.zzdxs.getLooper());
                    zzawz.zzds("Looper thread started.");
                } else {
                    zzawz.zzds("Resuming the looper thread");
                    this.lock.notifyAll();
                }
            } else {
                Preconditions.checkNotNull(this.zzdxs, "Invalid state: mHandlerThread should already been initialized.");
            }
            this.zzdxt++;
            looper = this.zzdxs.getLooper();
        }
        return looper;
    }

    public final Handler getHandler() {
        return this.handler;
    }
}
