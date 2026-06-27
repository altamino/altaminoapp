package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2K, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C2K extends AbstractC01871j {
    private static byte[] A04;
    private static final String A05;
    private C2I A00;
    private boolean A01;
    private final KM A02;
    private final AbstractC0777Om A03;

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 39);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A04 = new byte[]{118, 84, 91, 18, 65, 21, 69, 90, 70, 65, 21, 103, 64, 91, 91, 84, 87, 89, 80, 21, 65, 90, 21, 98, 80, 87, 99, 92, 80, 66, 27, 26, 40, 47, 27, 36, 40, 58, 109, 5, 44, 35, 41, 33, 40, 63, 109, 36, 62, 109, 48, 34, 37, 24, 49, 46, 34, 48, 51, 63, 104, 118, 107, 119, 63, 83, 112, 112, 111, 122, 109, 63, 16, 121, 67, 16, 84, 85, 67, 68, 66, 95, 73, 85, 84, 10, 16, 66, 43, 17, 66, 3, 22, 22, 3, 1, 10, 7, 6, 88, 66};
    }

    static {
        A05();
        A05 = C2K.class.getSimpleName();
    }

    public C2K(Context context, KM km, AbstractC0777Om abstractC0777Om, C6K c6k, AbstractC01881k abstractC01881k) {
        super(context, abstractC01881k, c6k);
        this.A02 = km;
        this.A03 = abstractC0777Om;
    }

    /* JADX INFO: Access modifiers changed from: private */
    String A02() {
        C2K c2k = this;
        String strA04 = null;
        char c = Build.VERSION.SDK_INT >= 19 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c2k = c2k;
                    strA04 = A04(87, 14, 69) + c2k.A03.isAttachedToWindow();
                    c = 3;
                    break;
                case 3:
                    return strA04;
                case 4:
                    strA04 = A04(58, 0, 39);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01871j
    public final void A06(Map<String, String> map) {
        C2K c2k = this;
        char c = c2k.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c2k = c2k;
                    if (!TextUtils.isEmpty(c2k.A00.A3P())) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c2k = c2k;
                    map = map;
                    c2k.A02.A4H(c2k.A00.A3P(), map);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final synchronized void A07() {
        Looper looper;
        if (!this.A01 && this.A00 != null) {
            this.A01 = true;
            if (this.A03 != null && !TextUtils.isEmpty(this.A00.A03())) {
                Handler handler = this.A03.getHandler();
                if (handler != null && handler.getLooper() == Looper.getMainLooper()) {
                    handler.post(new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.2J
                        private static byte[] A01;

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
                                        bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 107);
                                        i4++;
                                        c = 2;
                                        break;
                                    case 4:
                                        return new String(bArrCopyOfRange);
                                }
                            }
                        }

                        private static void A01() {
                            A01 = new byte[]{13, 63, 56, 44, 51, 63, 45, 122, 59, 54, 40, 63, 59, 62, 35, 122, 62, 63, 41, 46, 40, 53, 35, 63, 62, 118, 122, 57, 59, 52, 52, 53, 46, 122, 59, 57, 46, 51, 44, 59, 46, 63, 70, 77, 90, 77, 95, 79, 94, 69, 92, 88, 22};
                        }

                        @Override // com.facebook.ads.redexgen.X.AnonymousClass27
                        public final void A03() {
                            C2J c2j = this;
                            char c = c2j.A00.A03.A03() ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c) {
                                    case 2:
                                        Log.w(C2K.A05, A00(0, 42, 49));
                                        c = 3;
                                        break;
                                    case 3:
                                        return;
                                    case 4:
                                        c2j = c2j;
                                        c2j.A00.A03.loadUrl(A00(42, 11, 71) + c2j.A00.A00.A03());
                                        c = 3;
                                        break;
                                }
                            }
                        }
                    });
                } else {
                    Context context = this.A03.getContext();
                    String strA04 = A04(50, 8, 96);
                    int i = P8.A1j;
                    String strA042 = A04(0, 31, 18);
                    StringBuilder sbAppend = new StringBuilder().append(A04(31, 19, 106)).append(handler).append(A04(58, 14, 56));
                    if (handler != null) {
                        looper = handler.getLooper();
                    } else {
                        looper = null;
                    }
                    P7.A07(context, strA04, i, new PA(strA042, sbAppend.append(looper).append(A04(72, 15, 23)).append(this.A03.A03()).append(A02()).toString()));
                }
            }
        }
    }

    public final void A08(C2I c2i) {
        this.A00 = c2i;
    }
}
