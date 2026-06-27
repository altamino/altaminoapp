package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class c {
    private static final AtomicReference<e> a = new AtomicReference<>(null);

    static e a() {
        return a.get();
    }

    public static void a(e eVar) {
        a.compareAndSet(null, eVar);
    }
}
