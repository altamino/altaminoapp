package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class ME {
    private static final Set<Object> A00 = Collections.newSetFromMap(new WeakHashMap());
    private static final AtomicBoolean A01 = new AtomicBoolean();

    private ME() {
    }

    public static void A00(boolean z) {
        A01.set(z);
    }
}
