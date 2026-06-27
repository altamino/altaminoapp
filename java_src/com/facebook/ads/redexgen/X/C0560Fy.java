package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.ContextWrapper;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fy, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0560Fy implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0561Fz A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-59, -61, 20, -53, -49, -51, -68, 53, 38, 57, 53, -63, -55, -34, 36, -57, -30, -30, -34, -37, 11, -65, 38, 50, 49, 34, 44, 49, 55, -44, 2, -34, -37, -29, -7, -37, -44, -36, -37, -5, -13, -70, -44, 2, -48, -37, 1, -13, -47, -25, -4, -24, -70, -44, 2, -49, -33, -29, -37, 2, -9, -25, -4, -47, -25, -4, -24, -70, -44, 2, -47, -25, -4, 2, -26, -4, 2, -32, -26, 1, -25, -6, 4, -26, 0};
    }

    public C0560Fy(C0561Fz c0561Fz) {
        this.A00 = c0561Fz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    @SuppressLint({"CatchGeneralException"})
    public final void A32() {
        C0560Fy c0560Fy = this;
        int i = 0;
        String name = null;
        ArrayList arrayList = null;
        boolean z = false;
        char c = !c0560Fy.A00.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    z = true;
                    String strReplaceAll = A00(29, 56, 72).replaceAll(A00(21, 1, 40), A00(16, 4, 44)).replaceAll(A00(6, 1, 33), A00(12, 1, 32)).replaceAll(A00(0, 1, 57), A00(4, 2, 34)).replaceAll(A00(20, 1, 120), A00(15, 1, 32)).replaceAll(A00(2, 1, 116), A00(7, 4, 123)).replaceAll(A00(11, 1, 35), A00(14, 1, 121)).replaceAll(A00(13, 1, 63), A00(1, 1, 14));
                    String str = A00(3, 1, 89);
                    arrayList = new ArrayList(Arrays.asList(strReplaceAll.split(str)));
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    arrayList = arrayList;
                    if (i >= arrayList.size()) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0560Fy = c0560Fy;
                    name = c0560Fy.A00.A00.getClass().getMethod((String) arrayList.get(i), new Class[0]).getDeclaringClass().getName();
                    String str2 = Context.class.getName();
                    if (!name.equals(str2)) {
                        c = 18;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 18:
                    try {
                        String str3 = ContextWrapper.class.getName();
                        if (!name.equals(str3)) {
                            c = 22;
                            break;
                        } else {
                            c = 24;
                            break;
                        }
                    } catch (Throwable t) {
                        C0593Hf.A02(t);
                        c = 26;
                        break;
                    }
                case 22:
                    z = false;
                    c = 25;
                    break;
                case 24:
                    z = true;
                    c = 25;
                    break;
                case 25:
                    if (!z) {
                        c = 2;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    c0560Fy = c0560Fy;
                    c0560Fy.A00.A03(A00(22, 7, 125), Boolean.valueOf(z));
                    i++;
                    c = 4;
                    break;
            }
        }
    }
}
