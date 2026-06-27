package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class g {
    private static final AtomicReference<i> a = new AtomicReference<>(null);

    public static void a(i iVar) {
        a.compareAndSet(null, iVar);
    }
}
