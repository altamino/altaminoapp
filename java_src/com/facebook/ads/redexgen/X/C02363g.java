package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3g, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02363g {
    private static byte[] A00;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 53);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A00 = new byte[]{24, 25, 7, 20, 2, 5, 31, 14, 12, 25, 10, 31, 2, 4, 5, 20, 14, 25, 25, 4, 25, 20, 6, 4, 15, 14, 20, 0, 14, 18};
    }

    private C02363g() {
    }

    public static AdSettings.IntegrationErrorMode A00(Context context) {
        AdSettings.IntegrationErrorMode serializable = AdInternalSettings.sSettingsBundle.getSerializable(A02(0, 30, 126));
        char c = serializable == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    serializable = AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE;
                    c = 3;
                    break;
                case 3:
                    serializable = serializable;
                    if (serializable != AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    context = context;
                    if (!A04(context)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    serializable = AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CALLBACK_MODE;
                    c = 6;
                    break;
                case 6:
                    return serializable;
            }
        }
    }

    @Nullable
    public static LQ A01(Context context, Integer... numArr) {
        return null;
    }

    public static boolean A04(Context context) {
        boolean z = false;
        char c = (context.getApplicationInfo().flags & 2) != 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
