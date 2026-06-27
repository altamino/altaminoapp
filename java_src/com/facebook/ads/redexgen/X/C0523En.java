package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.En, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0523En {
    private final Map<Integer, B6<AbstractC0528Es>> A00;

    @Nullable
    private static C0523En A02 = null;
    private static long A01 = 0;

    private C0523En(Map<Integer, B6<AbstractC0528Es>> map) {
        this.A00 = map;
    }

    public static synchronized long A00() {
        return A01;
    }

    @SuppressLint({"UseSparseArrays"})
    public static C0523En A01() {
        if (A02 == null) {
            A02 = new C0523En(Collections.synchronizedMap(new HashMap()));
        }
        return A02;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef> */
    private synchronized void A02(B6<AbstractC0528Es> b6, int i) {
        int iA05 = 0;
        boolean z = false;
        if (b6.A00() == 0) {
            z = true;
            iA05 = b6.A01().A05();
        }
        int updatedSize = i - iA05;
        A01 += (z ? 0 : 4) + updatedSize;
    }

    @SuppressLint({"PublicMethodReturnMutableCollection"})
    public final Map<Integer, B6<AbstractC0528Es>> A03() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.B6 != com.facebook.ads.internal.botdetection.interval.buffer.CircularBuffer<com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef> */
    public final synchronized void A04(int i, B6<AbstractC0528Es> b6, int i2) {
        this.A00.put(Integer.valueOf(i), b6);
        A02(b6, i2);
    }
}
