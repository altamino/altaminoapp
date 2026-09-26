package com.google.android.exoplayer2;

import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes11.dex */
public final class h3 {
    private final com.google.android.exoplayer2.util.d clock;
    private boolean isCanceled;
    private boolean isDelivered;
    private boolean isProcessed;
    private boolean isSent;
    private Looper looper;
    private int mediaItemIndex;

    @Nullable
    private Object payload;
    private final a sender;
    private final b target;
    private final z3 timeline;
    private int type;
    private long positionMs = -9223372036854775807L;
    private boolean deleteAfterDelivery = true;

    public interface a {
        void b(h3 h3Var);
    }

    public interface b {
        void handleMessage(int i10, @Nullable Object obj) throws q;
    }

    public synchronized boolean a(long j6) throws InterruptedException, TimeoutException {
        boolean z6;
        try {
            com.google.android.exoplayer2.util.a.g(this.isSent);
            com.google.android.exoplayer2.util.a.g(this.looper.getThread() != Thread.currentThread());
            long jElapsedRealtime = this.clock.elapsedRealtime() + j6;
            while (true) {
                z6 = this.isProcessed;
                if (z6 || j6 <= 0) {
                    break;
                }
                this.clock.a();
                wait(j6);
                j6 = jElapsedRealtime - this.clock.elapsedRealtime();
            }
            if (!z6) {
                throw new TimeoutException("Message delivery timed out.");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isDelivered;
    }

    public boolean b() {
        return this.deleteAfterDelivery;
    }

    public Looper c() {
        return this.looper;
    }

    public int d() {
        return this.mediaItemIndex;
    }

    @Nullable
    public Object e() {
        return this.payload;
    }

    public long f() {
        return this.positionMs;
    }

    public b g() {
        return this.target;
    }

    public z3 h() {
        return this.timeline;
    }

    public int i() {
        return this.type;
    }

    public synchronized boolean j() {
        return this.isCanceled;
    }

    public synchronized void k(boolean z6) {
        this.isDelivered = z6 | this.isDelivered;
        this.isProcessed = true;
        notifyAll();
    }

    public h3 l() {
        com.google.android.exoplayer2.util.a.g(!this.isSent);
        if (this.positionMs == -9223372036854775807L) {
            com.google.android.exoplayer2.util.a.a(this.deleteAfterDelivery);
        }
        this.isSent = true;
        this.sender.b(this);
        return this;
    }

    public h3 m(@Nullable Object obj) {
        com.google.android.exoplayer2.util.a.g(!this.isSent);
        this.payload = obj;
        return this;
    }

    public h3 n(int i10) {
        com.google.android.exoplayer2.util.a.g(!this.isSent);
        this.type = i10;
        return this;
    }

    public h3(a aVar, b bVar, z3 z3Var, int i10, com.google.android.exoplayer2.util.d dVar, Looper looper) {
        this.sender = aVar;
        this.target = bVar;
        this.timeline = z3Var;
        this.looper = looper;
        this.clock = dVar;
        this.mediaItemIndex = i10;
    }
}
