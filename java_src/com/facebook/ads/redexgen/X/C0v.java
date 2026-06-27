package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0v, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C0v<T> {

    @Nullable
    private final T A00;

    @Nullable
    private final Throwable A01;
    private final boolean A02;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.0v != com.facebook.ads.cache.api.CacheResponse<T> */
    public C0v(boolean z, @Nullable T t) {
        this.A02 = z;
        this.A00 = t;
        this.A01 = null;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.0v != com.facebook.ads.cache.api.CacheResponse<T> */
    public C0v(boolean z, @Nullable T result, @Nullable Throwable th) {
        this.A02 = z;
        this.A00 = result;
        this.A01 = th;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.0v != com.facebook.ads.cache.api.CacheResponse<T> */
    @Nullable
    public final T A00() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.0v != com.facebook.ads.cache.api.CacheResponse<T> */
    public final boolean A01() {
        return this.A02;
    }
}
