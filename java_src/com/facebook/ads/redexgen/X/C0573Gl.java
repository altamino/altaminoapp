package com.facebook.ads.redexgen.X;

import java.lang.reflect.Field;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gl, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0573Gl implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0586Gy A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 75);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-19, -6, -6, -9, -6, 10, 29, 17, 20, 12, -26, -17, -20, -24, -15, -9, -30, -10, -25, -18, -30, -26, -14, -25, -24, -55, -46, -49, -53, -44, -38, -59, -39, -54, -47, -59, -44, -57, -45, -53, 24, 36, 34, -29, 27, 22, 24, 26, 23, 36, 36, 32, -29, 22, 25, 40, -29, 30, 35, 41, 26, 39, 35, 22, 33, -29, 40, 26, 41, 41, 30, 35, 28, 40, -29, -10, 25, 8, 25, 32, 11, 26, 39, 40, 30, 36, 35};
    }

    public C0573Gl(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0573Gl c0573Gl = this;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c0573Gl = c0573Gl;
                    if (c0573Gl.A00.A03 != EnumC0590Hc.A02) {
                        c = 23;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    Class<?> cls = Class.forName(A00(40, 47, 106));
                    if (cls != null && cls.getDeclaredField(A00(5, 5, 125)) != null) {
                        Field declaredField = cls.getDeclaredField(A00(5, 5, 125));
                        c0573Gl.A00.A03(A00(25, 15, 27), A00(40, 47, 106));
                        c0573Gl.A00.A03(A00(10, 15, 56), String.valueOf(declaredField.get(cls)));
                        return;
                    }
                    return;
                case 23:
                    try {
                        c0573Gl = c0573Gl;
                        c0573Gl.A00.A03(A00(25, 15, 27), c0573Gl.A00.A00.getPackageName());
                        if (c0573Gl.A00.A01 == null) {
                            c = '\'';
                            break;
                        } else {
                            c = ' ';
                            break;
                        }
                    } catch (Throwable unused) {
                        c0573Gl.A00.A02(A00(25, 15, 27), A00(0, 5, 61));
                        c0573Gl.A00.A02(A00(10, 15, 56), A00(0, 5, 61));
                        return;
                    }
                case ' ':
                    C0573Gl c0573Gl2 = c0573Gl;
                    c0573Gl2.A00.A03(A00(10, 15, 56), String.valueOf(c0573Gl2.A00.A01.versionCode));
                    return;
                case '\'':
                    c0573Gl.A00.A02(A00(10, 15, 56), A00(0, 5, 61));
                    return;
            }
        }
    }
}
