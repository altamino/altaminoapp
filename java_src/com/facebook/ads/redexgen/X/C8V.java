package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.lang.reflect.Proxy;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8V, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C8V {
    private C8V() {
    }

    @SuppressLint({"CatchGeneralException"})
    public static <T> T A00(T t, Class<T> cls) {
        ClassLoader classLoader = t.getClass().getClassLoader();
        return cls.cast(Proxy.newProxyInstance(classLoader, new Class[]{cls}, new C8U(t, classLoader)));
    }
}
