package com.google.android.material.badge;

import android.content.Context;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.internal.ParcelableSparseArray;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    private static final String LOG_TAG = "BadgeUtils";
    public static final boolean USE_COMPAT_PARENT = false;

    @NonNull
    public static SparseArray<a> b(Context context, @NonNull ParcelableSparseArray parcelableSparseArray) {
        SparseArray<a> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i10 = 0; i10 < parcelableSparseArray.size(); i10++) {
            int iKeyAt = parcelableSparseArray.keyAt(i10);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i10);
            if (state == null) {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
            sparseArray.put(iKeyAt, a.c(context, state));
        }
        return sparseArray;
    }

    @NonNull
    public static ParcelableSparseArray c(@NonNull SparseArray<a> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            a aVarValueAt = sparseArray.valueAt(i10);
            if (aVarValueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            parcelableSparseArray.put(iKeyAt, aVarValueAt.k());
        }
        return parcelableSparseArray;
    }

    public static void d(@Nullable a aVar, @NonNull View view) {
        if (aVar == null) {
            return;
        }
        if (USE_COMPAT_PARENT || aVar.g() != null) {
            aVar.g().setForeground(null);
        } else {
            view.getOverlay().remove(aVar);
        }
    }

    public static void e(@NonNull a aVar, @NonNull View view, @Nullable FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        aVar.setBounds(rect);
        aVar.A(view, frameLayout);
    }

    public static void f(@NonNull Rect rect, float f, float f6, float f7, float f10) {
        rect.set((int) (f - f7), (int) (f6 - f10), (int) (f + f7), (int) (f6 + f10));
    }

    public static void a(@NonNull a aVar, @NonNull View view, @Nullable FrameLayout frameLayout) {
        e(aVar, view, frameLayout);
        if (aVar.g() != null) {
            aVar.g().setForeground(aVar);
        } else {
            if (!USE_COMPAT_PARENT) {
                view.getOverlay().add(aVar);
                return;
            }
            throw new IllegalArgumentException("Trying to reference null customBadgeParent");
        }
    }
}
