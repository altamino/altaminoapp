package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IF {
    private static final AtomicReference<Context> A00 = new AtomicReference<>();

    private IF() {
    }

    @Nullable
    public static Context A00() {
        return A00.get();
    }

    public static void A01(Context context) {
        if (context == null) {
            return;
        }
        A00.set(context.getApplicationContext());
    }
}
