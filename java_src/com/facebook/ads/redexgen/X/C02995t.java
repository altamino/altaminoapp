package com.facebook.ads.redexgen.X;

import android.R;
import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@Deprecated
/* renamed from: com.facebook.ads.redexgen.X.5t, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02995t {
    private static Method A00;
    private static byte[] A01;

    private static String A03(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A01 = new byte[]{33, 31, 46, 13, 29, 27, 38, 31, 30, 13, 29, 44, 41, 38, 38, 0, 27, 29, 46, 41, 44};
    }

    static {
        A04();
        if (Build.VERSION.SDK_INT == 25) {
            try {
                A00 = ViewConfiguration.class.getDeclaredMethod(A03(0, 21, 101), new Class[0]);
            } catch (Exception unused) {
            }
        }
    }

    private C02995t() {
    }

    public static float A00(@NonNull ViewConfiguration viewConfiguration, @NonNull Context context) {
        float scaledHorizontalScrollFactor = 0.0f;
        char c = Build.VERSION.SDK_INT >= 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewConfiguration = viewConfiguration;
                    scaledHorizontalScrollFactor = viewConfiguration.getScaledHorizontalScrollFactor();
                    c = 3;
                    break;
                case 3:
                    return scaledHorizontalScrollFactor;
                case 4:
                    viewConfiguration = viewConfiguration;
                    context = context;
                    scaledHorizontalScrollFactor = A02(viewConfiguration, context);
                    c = 3;
                    break;
            }
        }
    }

    public static float A01(@NonNull ViewConfiguration viewConfiguration, @NonNull Context context) {
        float scaledVerticalScrollFactor = 0.0f;
        char c = Build.VERSION.SDK_INT >= 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewConfiguration = viewConfiguration;
                    scaledVerticalScrollFactor = viewConfiguration.getScaledVerticalScrollFactor();
                    c = 3;
                    break;
                case 3:
                    return scaledVerticalScrollFactor;
                case 4:
                    viewConfiguration = viewConfiguration;
                    context = context;
                    scaledVerticalScrollFactor = A02(viewConfiguration, context);
                    c = 3;
                    break;
            }
        }
    }

    private static float A02(ViewConfiguration viewConfiguration, Context context) {
        char c;
        float dimension = 0.0f;
        TypedValue typedValue = null;
        if (Build.VERSION.SDK_INT >= 25 && A00 != null) {
            try {
                dimension = ((Integer) A00.invoke(viewConfiguration, new Object[0])).intValue();
                c = 11;
            } catch (Exception unused) {
            }
        } else {
            typedValue = new TypedValue();
            c = context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true) ? '\n' : '\f';
        }
        while (true) {
            switch (c) {
                case '\n':
                    context = context;
                    typedValue = typedValue;
                    dimension = typedValue.getDimension(context.getResources().getDisplayMetrics());
                    c = 11;
                    break;
                case 11:
                    return dimension;
                case '\f':
                    dimension = 0.0f;
                    c = 11;
                    break;
            }
        }
    }
}
