package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: classes9.dex */
class ScrollbarHelper {
    private ScrollbarHelper() {
    }

    static int a(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z6) {
        if (layoutManager.getChildCount() != 0 && state.b() != 0 && view != null && view2 != null) {
            if (!z6) {
                return Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1;
            }
            return Math.min(orientationHelper.n(), orientationHelper.d(view2) - orientationHelper.g(view));
        }
        return 0;
    }

    static int b(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z6, boolean z10) {
        int iMax;
        if (layoutManager.getChildCount() == 0 || state.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMin = Math.min(layoutManager.getPosition(view), layoutManager.getPosition(view2));
        int iMax2 = Math.max(layoutManager.getPosition(view), layoutManager.getPosition(view2));
        if (z10) {
            iMax = Math.max(0, (state.b() - iMax2) - 1);
        } else {
            iMax = Math.max(0, iMin);
        }
        if (!z6) {
            return iMax;
        }
        return Math.round((iMax * (Math.abs(orientationHelper.d(view2) - orientationHelper.g(view)) / (Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1))) + (orientationHelper.m() - orientationHelper.g(view)));
    }

    static int c(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z6) {
        if (layoutManager.getChildCount() != 0 && state.b() != 0 && view != null && view2 != null) {
            if (!z6) {
                return state.b();
            }
            return (int) (((orientationHelper.d(view2) - orientationHelper.g(view)) / (Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1)) * state.b());
        }
        return 0;
    }
}
