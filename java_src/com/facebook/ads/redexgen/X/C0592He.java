package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.UUID;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.He, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0592He {

    @Nullable
    private static String A00;
    private static byte[] A01;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 40);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A01 = new byte[]{-63, -71, -87, -70, -68, -81, -80, -87, -67, -66, -71, -68, -81, -73, -82, -97, -48, -56, -72, -55, -53, -66, -65, -72, -52, -51, -56, -53, -66, -72, -60, -66, -46, -63, -64, -78, -103, -92};
    }

    static {
        A04();
        A00 = null;
    }

    private C0592He() {
    }

    public static String A00() {
        StrictMode.ThreadPolicy savedPolicy = null;
        char c = A00 == null ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    savedPolicy = StrictMode.allowThreadDiskReads();
                    c = 3;
                    break;
                case 3:
                    try {
                        A00 = UUID.randomUUID().toString();
                        StrictMode.setThreadPolicy(savedPolicy);
                        c = '\b';
                        break;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(savedPolicy);
                        throw th;
                    }
                case '\b':
                    return A00;
            }
        }
    }

    @Nullable
    @SuppressLint({"SharedPreferencesUse", "BadMethodUse-java.util.UUID.randomUUID", "CatchGeneralException"})
    public static String A02(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(A01(0, 13, 34), 0);
            String string = sharedPreferences.getString(A01(16, 17, 49), null);
            if (string == null) {
                String string2 = UUID.randomUUID().toString();
                sharedPreferences.edit().putString(A01(16, 17, 49), string2).apply();
                return string2;
            }
            return string;
        } catch (Throwable th) {
            C0593Hf.A02(th);
            return null;
        }
    }

    public static String A03(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return Base64.encodeToString(MessageDigest.getInstance(A01(13, 3, 66)).digest(str.getBytes(A01(33, 5, 68))), 2);
    }
}
