package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nx, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0762Nx extends Thread implements Closeable {
    private boolean A00 = false;
    public final /* synthetic */ C0763Ny A01;

    public C0762Nx(C0763Ny c0763Ny) {
        this.A01 = c0763Ny;
        start();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            this.A00 = true;
            this.A01.A02.A02();
        }
        try {
            join();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    @SuppressLint({"CatchGeneralException"})
    public final void run() {
        boolean z;
        boolean runNow;
        while (true) {
            try {
                this.A01.A02.A04();
                synchronized (this.A01) {
                    synchronized (this) {
                        z = this.A00;
                        runNow = this.A01.A02.A05();
                    }
                }
                if (z) {
                    break;
                } else if (runNow) {
                    this.A01.A03.run();
                    break;
                }
            } catch (Exception unused) {
                synchronized (this.A01) {
                    this.A01.A02.A03();
                    this.A01.A00 = null;
                    return;
                }
            } catch (Throwable th) {
                synchronized (this.A01) {
                    this.A01.A02.A03();
                    this.A01.A00 = null;
                    throw th;
                }
            }
        }
        synchronized (this.A01) {
            this.A01.A02.A03();
            this.A01.A00 = null;
        }
    }
}
