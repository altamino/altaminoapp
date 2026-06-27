package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3p, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC02453p<T> extends AnonymousClass27 {
    private final WeakReference<T> A00;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.3p != com.facebook.ads.internal.util.common.WeakRunnable<T> */
    public AbstractC02453p(T t) {
        this.A00 = new WeakReference<>(t);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.3p != com.facebook.ads.internal.util.common.WeakRunnable<T> */
    public final T A04() {
        return this.A00.get();
    }
}
