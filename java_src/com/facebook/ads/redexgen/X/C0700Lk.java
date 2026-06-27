package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0700Lk {
    private static byte[] A0E;
    private int A00;
    private Context A01;
    private LT A02;
    private LW A03;

    @Nullable
    private C0764Nz A04;

    @Nullable
    private String A05;
    private String A06;

    @Nullable
    private String A07;
    private boolean A08;
    private boolean A09;
    private boolean A0A;
    private final AdPlacementType A0B;
    private final C0691Lb A0C;

    @Nullable
    private final String A0D;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A0E = new byte[]{61, 42, 62, 58, 42, 60, 59, 48, 59, 38, 34, 42, 4, 82, 51, 56, 53, 46, 56, 53, 0, 15, 10, 6, 13, 23, 28, 17, 6, 18, 22, 6, 16, 23, 28, 10, 7, 125, 122, 111, 109, 101, 113, 122, 124, 111, 109, 107, 9, 12, 23, 26, 13, 24, 7, 26, 28, 1, 6, 15, 23, 11, 7, 6, 14, 1, 15, 23, 4, 9, 27, 28, 23, 29, 24, 12, 9, 28, 13, 23, 28, 1, 5, 13, 41, 56, 46, 41, 34, 48, 50, 57, 56, 0, 26, 22, 4, 28, 5, 29, 0, 22, 8, 13, 22, 12, 17, 25, 12, 27, 0, 12, 7, 10, 12, 29, 22, 27, 0, 11, 22, 18, 26, 0, 11, 16, 20, 26, 17, 22, 26, 2, 15, 24, 14, 9, 15, 20, 30, 9, 24, 25, 54, 40, 37, 53, 41, 39, 42, 40, 47, 49, 40, 34, 47, 41, 45, 32, 44, 34, 45, 49, 23, 12, 20, 6, 24, 29, 10, 6, 11, 28, 8, 12, 28, 10, 13, 28, 29, 7, 26, 22, 16, 3, 29, 10, 11, 12, 22, 17, 127, 114, 112, 119, 9, 5, 26, 26, 11, 69, 68, 76, 78, 94, 64, 69, 94, 72, 69, 106, 118, 123, 121, 127, 119, 127, 116, 110, 101, 115, 126, 106, 123, 115, 110, 114, 127, 106, 123, 97, 119, 122, 35, 63, 50, 48, 54, 62, 54, 61, 39, 44, 39, 42, 35, 54};
    }

    public C0700Lk(Context context, String str, @Nullable C0764Nz c0764Nz, LW lw, @Nullable String str2, int i, boolean z, boolean z2, C0691Lb c0691Lb, @Nullable String str3, @Nullable String str4) {
        this.A01 = context;
        this.A06 = str;
        this.A04 = c0764Nz;
        this.A03 = lw;
        this.A0D = str2;
        this.A00 = i;
        this.A0A = z;
        this.A08 = z2;
        this.A0C = c0691Lb;
        this.A02 = LT.A00(lw);
        this.A0B = this.A02.A03();
        this.A07 = str3;
        this.A05 = str4;
    }

    private void A02(Map<String, String> params, String str, String str2) {
        params.put(str, str2);
    }

    public final int A03() {
        return this.A00;
    }

    public final LT A04() {
        return this.A02;
    }

    public final LW A05() {
        return this.A03;
    }

    public final C0691Lb A06() {
        return this.A0C;
    }

    @Nullable
    public final C0764Nz A07() {
        return this.A04;
    }

    public final String A08() {
        return this.A06;
    }

    public final Map<String, String> A09(Map<String, String> map) {
        C0700Lk c0700Lk = this;
        String strA00 = null;
        String strA05 = null;
        HashMap map2 = new HashMap(map);
        c0700Lk.A02(map2, A00(190, 4, 0), AQ.A00().A02());
        String strA002 = A00(147, 9, 88);
        char c = AQ.A00().A03() ? (char) 2 : (char) 27;
        while (true) {
            switch (c) {
                case 2:
                    strA00 = A00(12, 1, 2);
                    c = 3;
                    break;
                case 3:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    strA002 = strA002;
                    strA00 = strA00;
                    c0700Lk.A02(map2, strA002, strA00);
                    c0700Lk.A02(map2, A00(194, 5, 124), String.valueOf(c0700Lk.A08));
                    c0700Lk.A02(map2, A00(209, 12, 12), c0700Lk.A06);
                    if (c0700Lk.A0B == AdPlacementType.UNKNOWN) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(232, 14, 69), c0700Lk.A0B.toString().toLowerCase());
                    c = 5;
                    break;
                case 5:
                    c0700Lk = c0700Lk;
                    if (c0700Lk.A04 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(ScriptIntrinsicBLAS.RIGHT, 5, 87), String.valueOf(c0700Lk.A04.A01()));
                    c0700Lk.A02(map2, A00(Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 6, 83), String.valueOf(c0700Lk.A04.A00()));
                    c = 7;
                    break;
                case 7:
                    c0700Lk = c0700Lk;
                    if (c0700Lk.A03 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(221, 11, 8), String.valueOf(c0700Lk.A03.A03()));
                    c = '\t';
                    break;
                case '\t':
                    c0700Lk = c0700Lk;
                    if (!c0700Lk.A0A) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(84, 9, 75), A00(13, 1, 85));
                    c = 11;
                    break;
                case 11:
                    c0700Lk = c0700Lk;
                    if (c0700Lk.A0D == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(199, 10, 55), c0700Lk.A0D);
                    c = '\r';
                    break;
                case '\r':
                    c0700Lk = c0700Lk;
                    if (c0700Lk.A00 == 0) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(162, 17, 111), String.valueOf(c0700Lk.A00));
                    c = 15;
                    break;
                case 15:
                    c0700Lk = c0700Lk;
                    if (!c0700Lk.A09) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(93, 22, 127), String.valueOf(c0700Lk.A09));
                    c = 17;
                    break;
                case 17:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(129, 13, 107), String.valueOf(OZ.A02(c0700Lk.A01)));
                    c0700Lk.A02(map2, A00(0, 12, 89), OO.A05(System.currentTimeMillis()));
                    if (!c0700Lk.A0C.A08()) {
                        c = 20;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    c0700Lk = c0700Lk;
                    if (c0700Lk.A0C.A04() == null) {
                        c = 20;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(14, 6, 71), c0700Lk.A0C.A04());
                    c = 20;
                    break;
                case 20:
                    c0700Lk = c0700Lk;
                    strA05 = c0700Lk.A0C.A05();
                    if (!TextUtils.isEmpty(strA05)) {
                        c = 21;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 21:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    strA05 = strA05;
                    c0700Lk.A02(map2, A00(115, 14, 105), strA05);
                    c = 22;
                    break;
                case 22:
                    c0700Lk = c0700Lk;
                    if (c0700Lk.A07 == null) {
                        c = 24;
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(37, 11, 24), c0700Lk.A07);
                    c = 24;
                    break;
                case 24:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(20, 17, 117), UUID.randomUUID().toString());
                    c0700Lk.A02(map2, A00(48, 36, 126), OO.A06(C02654j.A00(c0700Lk.A01)));
                    if (c0700Lk.A05 == null) {
                        c = 26;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    c0700Lk = c0700Lk;
                    map2 = map2;
                    c0700Lk.A02(map2, A00(179, 11, 116), c0700Lk.A05);
                    c = 26;
                    break;
                case 26:
                    return map2;
                case 27:
                    strA00 = A00(13, 1, 85);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0A(boolean z) {
        this.A09 = z;
    }
}
