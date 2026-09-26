package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes8.dex */
public class g {
    private final d clock;
    private boolean isOpen;

    public g() {
        this(d.DEFAULT);
    }

    public synchronized void a() throws InterruptedException {
        while (!this.isOpen) {
            wait();
        }
    }

    public synchronized void b() {
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

    public synchronized boolean c() {
        boolean z6;
        z6 = this.isOpen;
        this.isOpen = false;
        return z6;
    }

    public synchronized boolean d() {
        return this.isOpen;
    }

    public synchronized boolean e() {
        if (this.isOpen) {
            return false;
        }
        this.isOpen = true;
        notifyAll();
        return true;
    }

    public g(d dVar) {
        this.clock = dVar;
    }
}
