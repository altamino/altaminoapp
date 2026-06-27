package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.support.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2M, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C2M implements Runnable {
    private static final AtomicReference<Throwable> A00 = new AtomicReference<>();

    public abstract void A01();

    @Nullable
    public static Throwable A00() {
        return A00.get();
    }

    @Override // java.lang.Runnable
    @SuppressLint({"CatchGeneralException"})
    public final void run() {
        try {
            A01();
        } catch (Throwable th) {
            A00.set(th);
            throw th;
        }
    }
}
