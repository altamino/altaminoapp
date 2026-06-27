package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.util.Log;
import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class F7 {
    private static byte[] A05;
    private static final String A06;
    private final int A00;
    private final F6 A01;

    @Nullable
    private final String A02;

    @Nullable
    private final String A03;

    @Nullable
    private final String A04;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 112);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A05 = new byte[]{34, 21, 21, 8, 21, 71, 36, 21, 2, 6, 19, 14, 9, 0, 71, 45, 52, 40, 41, 39, 49, 36, 44, 121, 127, 58, 49};
    }

    static {
        A01();
        A06 = F7.class.getSimpleName();
    }

    public F7(F6 f6) {
        this.A01 = f6;
        this.A00 = f6.A02();
        this.A03 = null;
        this.A02 = null;
        this.A04 = null;
    }

    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    public F7(Throwable th) {
        String string;
        this.A01 = F6.A06;
        this.A00 = th.getClass().getName().hashCode();
        this.A03 = th.getClass().getName();
        this.A02 = th.getMessage();
        if (th.getStackTrace() != null && th.getStackTrace().length > 1 && th.getStackTrace().toString().length() > 500) {
            string = th.getStackTrace()[0].toString().substring(0, 500);
        } else {
            string = th.getStackTrace()[0].toString();
        }
        this.A04 = string;
    }

    public final int A02() {
        return this.A00;
    }

    public final int A03() {
        F7 f7 = this;
        int i = 0;
        int length = 0;
        int length2 = 0;
        int i2 = 0;
        int length3 = 0;
        char c = f7.A03 != null ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    f7 = f7;
                    length = f7.A03.getBytes().length;
                    c = 3;
                    break;
                case 3:
                    f7 = f7;
                    i2 = length + 4;
                    if (f7.A02 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    f7 = f7;
                    length2 = f7.A02.getBytes().length;
                    c = 5;
                    break;
                case 5:
                    f7 = f7;
                    i = length2 + i2;
                    if (f7.A04 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    f7 = f7;
                    length3 = f7.A04.getBytes().length;
                    c = 7;
                    break;
                case 7:
                    return i + length3;
                case '\b':
                    length3 = 0;
                    length2 = 0;
                    c = 5;
                    break;
                case '\t':
                    length3 = 0;
                    length = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final F6 A04() {
        return this.A01;
    }

    @Nullable
    public final String A05() {
        return this.A02;
    }

    @Nullable
    public final String A06() {
        return this.A03;
    }

    @Nullable
    public final String A07() {
        return this.A04;
    }

    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    public final JSONObject A08() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        switch (this.A01) {
                            case A06:
                                c = '\n';
                                break;
                            default:
                                c = 7;
                                break;
                        }
                    } catch (JSONException e) {
                        Log.e(A06, A00(0, 19, 23), e);
                        break;
                    }
                case 7:
                    jSONObject.put(A00(23, 2, 108), this.A00);
                    break;
                case '\n':
                    jSONObject.put(A00(23, 2, 108), this.A00);
                    jSONObject.put(A00(25, 2, 47), this.A03);
                    jSONObject.put(A00(21, 2, 49), this.A02);
                    jSONObject.put(A00(19, 2, 50), this.A04);
                    break;
            }
        }
        return jSONObject;
    }
}
