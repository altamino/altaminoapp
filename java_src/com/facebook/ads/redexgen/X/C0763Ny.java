package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ny, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0763Ny implements Closeable {

    @Nullable
    private C0762Nx A00;
    private boolean A01;
    private final C0761Nw A02;
    private final Runnable A03;

    public C0763Ny(long j, Runnable runnable) {
        this.A02 = new C0761Nw(j);
        this.A02.A02();
        this.A03 = runnable;
        this.A01 = false;
    }

    public final C0761Nw A03() {
        return this.A02;
    }

    public final synchronized void A04() {
        if (this.A02.A05() && !this.A01) {
            A05();
        }
    }

    public final synchronized void A05() {
        if (this.A00 == null && !this.A01) {
            this.A00 = new C0762Nx(this);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        C0762Nx c0762Nx;
        synchronized (this) {
            this.A01 = true;
            c0762Nx = this.A00;
        }
        if (c0762Nx != null) {
            c0762Nx.close();
        }
    }
}
