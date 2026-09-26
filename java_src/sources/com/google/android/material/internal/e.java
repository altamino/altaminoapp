package com.google.android.material.internal;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.view.Window;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class e {
    private static final int EDGE_TO_EDGE_BAR_ALPHA = 128;

    public static void a(@NonNull Window window, boolean z6, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2) {
        boolean z10 = num == null || num.intValue() == 0;
        boolean z11 = num2 == null || num2.intValue() == 0;
        if (z10 || z11) {
            int iB = i3.a.b(window.getContext(), R.attr.colorBackground, ViewCompat.MEASURED_STATE_MASK);
            if (z10) {
                num = Integer.valueOf(iB);
            }
            if (z11) {
                num2 = Integer.valueOf(iB);
            }
        }
        WindowCompat.b(window, !z6);
        int iC = c(window.getContext(), z6);
        int iB2 = b(window.getContext(), z6);
        window.setStatusBarColor(iC);
        window.setNavigationBarColor(iB2);
        boolean zD = d(iC, i3.a.f(num.intValue()));
        boolean zD2 = d(iB2, i3.a.f(num2.intValue()));
        WindowInsetsControllerCompat windowInsetsControllerCompatA = WindowCompat.a(window, window.getDecorView());
        if (windowInsetsControllerCompatA != null) {
            windowInsetsControllerCompatA.c(zD);
            windowInsetsControllerCompatA.b(zD2);
        }
    }

    @TargetApi(21)
    private static int b(Context context, boolean z6) {
        if (z6 && Build.VERSION.SDK_INT < 27) {
            return ColorUtils.o(i3.a.b(context, R.attr.navigationBarColor, ViewCompat.MEASURED_STATE_MASK), 128);
        }
        if (z6) {
            return 0;
        }
        return i3.a.b(context, R.attr.navigationBarColor, ViewCompat.MEASURED_STATE_MASK);
    }

    @TargetApi(21)
    private static int c(Context context, boolean z6) {
        if (z6) {
            return 0;
        }
        return i3.a.b(context, R.attr.statusBarColor, ViewCompat.MEASURED_STATE_MASK);
    }

    private static boolean d(int i10, boolean z6) {
        if (!i3.a.f(i10) && (i10 != 0 || !z6)) {
            return false;
        }
        return true;
    }
}
