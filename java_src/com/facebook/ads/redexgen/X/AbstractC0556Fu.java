package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fu, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC0556Fu {
    public static JSONObject A00;
    public static JSONObject A01;
    private static byte[] A02;
    public static final String A03;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 46);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{15, 0, 10, 28, 1, 7, 10, 64, 6, 15, 28, 10, 25, 15, 28, 11, 64, 25, 7, 8, 7, 34, 53, 53, 40, 53, 62, 49, 59, 45, 48, 54, 59, 113, 55, 62, 45, 59, 40, 62, 45, 58, 113, 61, 51, 42, 58, 43, 48, 48, 43, 55, 117, 110, 119, 119};
    }

    static {
        A01();
        A01 = new JSONObject();
        A00 = new JSONObject();
        A03 = AbstractC0556Fu.class.getSimpleName();
    }

    @SuppressLint({"CatchGeneralException"})
    public final void A02(String str, @Nullable Object obj) {
        String string = null;
        JSONObject jSONObject = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    jSONObject = A00;
                    if (obj == null) {
                        c = 4;
                    } else {
                        c = 7;
                        continue;
                    }
                case 4:
                    try {
                        string = A00(21, 5, 105);
                        c = 6;
                        continue;
                    } catch (Throwable th) {
                        C0593Hf.A02(th);
                        return;
                    }
                case 6:
                    jSONObject.put(str, string);
                    return;
                case 7:
                    obj = obj;
                    string = obj.toString();
                    c = 6;
                    continue;
            }
            C0593Hf.A02(th);
            return;
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public final void A03(String str, @Nullable Object obj) {
        JSONObject jSONObject = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    jSONObject = A01;
                    if (obj == null) {
                        c = 4;
                    } else {
                        c = 6;
                        continue;
                    }
                case 4:
                    try {
                        obj = A00(52, 4, 53);
                        c = 6;
                        continue;
                    } catch (Throwable th) {
                        C0593Hf.A02(th);
                        return;
                    }
                case 6:
                    jSONObject.put(str, obj);
                    return;
            }
            C0593Hf.A02(th);
            return;
        }
    }

    public final boolean A04(Context context) {
        return context.getPackageManager().hasSystemFeature(A00(26, 26, 113));
    }

    public final boolean A05(Context context) {
        return context.getPackageManager().hasSystemFeature(A00(0, 21, 64));
    }

    public final boolean A06(Context context, String str) {
        boolean z = false;
        char c = context == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    context = context;
                    str = str;
                    if (context.checkCallingOrSelfPermission(str) != 0) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 2;
                    break;
            }
        }
    }
}
