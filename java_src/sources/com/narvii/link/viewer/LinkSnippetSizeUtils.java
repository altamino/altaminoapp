package com.narvii.link.viewer;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes10.dex */
public class LinkSnippetSizeUtils {
    public static int getAdjustedSize(Context context, int i10, float f, int i11, int i12, int i13) {
        int i14 = (int) (((i10 * 1.0f) / f) * context.getResources().getDisplayMetrics().density);
        int iResolveAdjustedSize = resolveAdjustedSize(i14, i11, i13);
        if (i12 != 0) {
            float f6 = (i12 * 1.0f) / i11;
            if (f6 < 1.0f && i14 < i12) {
                return (int) (iResolveAdjustedSize * f6);
            }
        }
        return iResolveAdjustedSize;
    }

    private static int resolveAdjustedSize(int i10, int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i12);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    return size;
                }
                return i10;
            }
            return Math.min(i10, i11);
        }
        return Math.min(Math.min(i10, size), i11);
    }
}
