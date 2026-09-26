package androidx.media3.common.util;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public class ConditionVariable {
    private final Clock clock;
    private boolean isOpen;

    public ConditionVariable() {
        this(Clock.DEFAULT);
    }

    public synchronized void a() throws InterruptedException {
        while (!this.isOpen) {
            wait();
        }
    }

    public synchronized boolean b(long j6) throws InterruptedException {
        try {
            if (j6 <= 0) {
                return this.isOpen;
            }
            long jElapsedRealtime = this.clock.elapsedRealtime();
            long j10 = j6 + jElapsedRealtime;
            if (j10 < jElapsedRealtime) {
                a();
            } else {
                while (!this.isOpen && jElapsedRealtime < j10) {
                    wait(j10 - jElapsedRealtime);
                    jElapsedRealtime = this.clock.elapsedRealtime();
                }
            }
            return this.isOpen;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void c() {
        boolean z6 = false;
        while (!this.isOpen) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z6 = true;
            }
        }
        if (z6) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean d() {
        boolean z6;
        z6 = this.isOpen;
        this.isOpen = false;
        return z6;
    }

    public synchronized boolean e() {
        return this.isOpen;
    }

    public synchronized boolean f() {
        if (this.isOpen) {
            return false;
        }
        this.isOpen = true;
        notifyAll();
        return true;
    }

    public ConditionVariable(Clock clock) {
        this.clock = clock;
    }
}
