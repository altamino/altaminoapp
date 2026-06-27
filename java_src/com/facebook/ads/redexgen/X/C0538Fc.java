package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0538Fc {
    private static byte[] A09;
    private final float A00;
    private final float A01;
    private final float A02;
    private final float A03;
    private final int A04;
    private final int A05;
    private final int A06;
    private final long A07;
    private final long A08;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A09 = new byte[]{119, 108, 118, 96, 107, 92, 110, 98, 123, 92, 115, 113, 102, 112, 112, 118, 113, 102, 94, 69, 95, 73, 66, 117, 78, 79, 70, 94, 75, 117, 82, 104, 115, 105, 127, 116, 67, 120, 121, 112, 104, 125, 67, 104, 117, 113, 121, 111, 116, 110, 120, 115, 68, 127, 126, 119, 111, 122, 68, 98, 62, 57, 34, 57, 35, 53, 62, 9, 59, 63, 56, 9, 38, 36, 51, 37, 37, 35, 36, 51, 127, 100, 126, 104, 99, 84, 111, 110, 125, 98, 104, 110, 84, 127, 114, 123, 110, 73, 82, 72, 94, 85, 98, 92, 94, 73, 84, 82, 83, 78, 102, 125, 103, 113, 122, 77, 118, 123, 97, 98, 126, 115, 107, 77, 113, 125, 103, 124, 102, 119, 96};
    }

    public C0538Fc(int i, int i2, long j, float f, float f2, int i3, float f3, float f4, long j2) {
        this.A05 = i;
        this.A04 = i2;
        this.A07 = j;
        this.A02 = f;
        this.A03 = f2;
        this.A06 = i3;
        this.A00 = f3;
        this.A01 = f4;
        this.A08 = j2;
    }

    @SuppressLint({"CatchGeneralException"})
    public final JSONObject A02() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(80, 17, 116), this.A05);
            jSONObject.put(A00(97, 13, 66), this.A04);
            jSONObject.put(A00(31, 16, 99), this.A07);
            jSONObject.put(A00(0, 18, 124), this.A02);
            jSONObject.put(A00(62, 18, 41), this.A03);
            jSONObject.put(A00(110, 21, 109), this.A06);
            jSONObject.put(A00(18, 13, 85), this.A00);
            jSONObject.put(A00(47, 13, 100), this.A01);
            jSONObject.put(A00(60, 2, 53), this.A08);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
