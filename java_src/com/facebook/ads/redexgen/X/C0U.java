package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0U, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C0U extends C01650j implements C0X {
    private static byte[] A01;
    private boolean A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 15);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{69, 114, 105, 99, 107, 98, 39, 105, 104, 115, 39, 117, 98, 102, 99, 126};
    }

    public final synchronized void A06() {
        this.A00 = true;
    }

    public final synchronized boolean A07(AtomicReference<JSONObject> atomicReference, AtomicReference<JSONObject> atomicReference2) {
        boolean z = false;
        synchronized (this) {
            if (!A40()) {
                throw new IllegalStateException(A00(0, 16, 8));
            }
            if (!this.A00) {
                atomicReference2.set(A3W());
            } else {
                atomicReference.set(A3Q());
                atomicReference2.set(A3W());
                this.A00 = false;
                z = true;
            }
        }
        return z;
    }
}
