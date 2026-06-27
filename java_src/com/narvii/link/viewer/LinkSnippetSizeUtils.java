package com.narvii.link.viewer;

import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
public class LinkSnippetSizeUtils {
    public static int getAdjustedSize(Context context, int i, float f, int i2, int i3, int i4) {
        int i5 = (int) (((i * 1.0f) / f) * context.getResources().getDisplayMetrics().density);
        int iResolveAdjustedSize = resolveAdjustedSize(i5, i2, i4);
        if (i3 != 0) {
            float f2 = (i3 * 1.0f) / i2;
            if (f2 < 1.0f && i5 < i3) {
                return (int) (iResolveAdjustedSize * f2);
            }
        }
        return iResolveAdjustedSize;
    }

    private static int resolveAdjustedSize(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(Math.min(i, size), i2);
        }
        if (mode != 0) {
            return mode != 1073741824 ? i : size;
        }
        return Math.min(i, i2);
    }
}
