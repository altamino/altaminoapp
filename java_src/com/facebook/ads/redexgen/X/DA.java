package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.lang.reflect.Field;
import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class DA implements InterfaceC0466Ci {
    private static byte[] A07;

    @Nullable
    private final Class A01;

    @Nullable
    private final String A03 = (String) A02(A03(31, 14, 64));

    @Nullable
    private final String A04 = (String) A02(A03(0, 10, 105));

    @Nullable
    private final Boolean A00 = A00();

    @Nullable
    private final String A05 = (String) A02(A03(45, 6, 37));

    @Nullable
    private final Integer A02 = A01();

    @Nullable
    private final String A06 = (String) A02(A03(52, 12, 96));

    static {
        A04();
    }

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A07 = new byte[]{-19, 0, -12, -9, -17, 10, -1, 4, -5, -16, -60, -77, -64, -63, -73, -67, -68, -51, -79, -67, -78, -77, -69, -51, 2, 10, 5, -47, -66, -11, -19, -61, -46, -46, -50, -53, -59, -61, -42, -53, -47, -48, -31, -53, -58, -83, -77, -88, -67, -74, -71, -33, -8, -25, -12, -11, -21, -15, -16, 1, -16, -29, -17, -25, 33, -59, -58, -61, -42, -56};
    }

    public DA(@Nullable Class cls) {
        this.A01 = cls;
    }

    @Nullable
    private Boolean A00() {
        Boolean bool = null;
        Object objA02 = A02(A03(65, 5, 63));
        char c = objA02 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    objA02 = objA02;
                    if (!(objA02 instanceof Boolean)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    objA02 = objA02;
                    bool = (Boolean) objA02;
                    c = 4;
                    break;
                case 4:
                    return bool;
                case 5:
                    bool = null;
                    c = 4;
                    break;
            }
        }
    }

    @Nullable
    private Integer A01() {
        Integer num = null;
        Object objA02 = A02(A03(10, 12, 44));
        char c = objA02 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    objA02 = objA02;
                    if (!(objA02 instanceof Integer)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    objA02 = objA02;
                    num = (Integer) objA02;
                    c = 4;
                    break;
                case 4:
                    return num;
                case 5:
                    num = null;
                    c = 4;
                    break;
            }
        }
    }

    @Nullable
    @SuppressLint({"CatchGeneralException"})
    private Object A02(String str) {
        if (this.A01 == null) {
            return null;
        }
        try {
            Field declaredField = this.A01.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0466Ci
    public final boolean A3v(Object obj) {
        DA oldBuildConfigParams = this;
        boolean z = false;
        DA da = (DA) obj;
        char c = oldBuildConfigParams.A03 != null ? (char) 2 : (char) 15;
        while (true) {
            switch (c) {
                case 2:
                    oldBuildConfigParams = oldBuildConfigParams;
                    da = da;
                    if (!oldBuildConfigParams.A03.equals(da.A03)) {
                        c = 15;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    oldBuildConfigParams = oldBuildConfigParams;
                    if (oldBuildConfigParams.A04 == null) {
                        c = 15;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    oldBuildConfigParams = oldBuildConfigParams;
                    da = da;
                    if (!oldBuildConfigParams.A04.equals(da.A04)) {
                        c = 15;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    oldBuildConfigParams = oldBuildConfigParams;
                    if (oldBuildConfigParams.A00 == null) {
                        c = 15;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    oldBuildConfigParams = oldBuildConfigParams;
                    da = da;
                    if (!oldBuildConfigParams.A00.equals(da.A00)) {
                        c = 15;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    oldBuildConfigParams = oldBuildConfigParams;
                    if (oldBuildConfigParams.A05 == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    oldBuildConfigParams = oldBuildConfigParams;
                    da = da;
                    if (!oldBuildConfigParams.A05.equals(da.A05)) {
                        c = 15;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    oldBuildConfigParams = oldBuildConfigParams;
                    if (oldBuildConfigParams.A02 == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    oldBuildConfigParams = oldBuildConfigParams;
                    da = da;
                    if (!oldBuildConfigParams.A02.equals(da.A02)) {
                        c = 15;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    oldBuildConfigParams = oldBuildConfigParams;
                    if (oldBuildConfigParams.A06 == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    oldBuildConfigParams = oldBuildConfigParams;
                    da = da;
                    if (!oldBuildConfigParams.A06.equals(da.A06)) {
                        c = 15;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    z = true;
                    c = 14;
                    break;
                case 14:
                    return z;
                case 15:
                    z = false;
                    c = 14;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0466Ci
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    public final int A76() {
        DA da = this;
        int length = 0;
        int length2 = 0;
        int length3 = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int length4 = 0;
        int length5 = A03(24, 3, 95).length() + A03(22, 2, 23).length() + A03(64, 1, 123).length() + A03(51, 1, 55).length() + A03(27, 2, 25).length() + A03(29, 2, 61).length() + 4 + 8;
        char c = da.A03 != null ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    da = da;
                    length3 = da.A03.length();
                    c = 3;
                    break;
                case 3:
                    da = da;
                    i = length5 + length3;
                    if (da.A04 == null) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    da = da;
                    length = da.A04.length();
                    c = 5;
                    break;
                case 5:
                    da = da;
                    i2 = i + length;
                    if (da.A05 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    da = da;
                    length2 = da.A05.length();
                    c = 7;
                    break;
                case 7:
                    da = da;
                    i3 = length2 + i2;
                    if (da.A06 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    da = da;
                    length4 = da.A06.length();
                    c = '\t';
                    break;
                case '\t':
                    return i3 + length4;
                case '\n':
                    length4 = 0;
                    length2 = 0;
                    c = 7;
                    break;
                case 11:
                    length4 = 0;
                    length = 0;
                    c = 5;
                    break;
                case '\f':
                    length4 = 0;
                    length3 = 0;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0466Ci
    public final JSONObject A79() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(A03(24, 3, 95), this.A03);
        jSONObject.put(A03(22, 2, 23), this.A04);
        jSONObject.put(A03(64, 1, 123), this.A00);
        jSONObject.put(A03(51, 1, 55), this.A05);
        jSONObject.put(A03(27, 2, 25), this.A02);
        jSONObject.put(A03(29, 2, 61), this.A06);
        return jSONObject;
    }
}
