package androidx.core.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
public final class ViewParentCompat {
    private static final String TAG = "ViewParentCompat";
    private static int[] sTempNestedScrollConsumed;

    public static void d(@NonNull ViewParent viewParent, @NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
        if (viewParent instanceof NestedScrollingParent3) {
            ((NestedScrollingParent3) viewParent).onNestedScroll(view, i10, i11, i12, i13, i14, iArr);
            return;
        }
        iArr[0] = iArr[0] + i12;
        iArr[1] = iArr[1] + i13;
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScroll(view, i10, i11, i12, i13, i14);
            return;
        }
        if (i14 == 0) {
            try {
                Api21Impl.d(viewParent, view, i10, i11, i12, i13);
            } catch (AbstractMethodError e) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
            }
        }
    }

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static void a(ViewParent viewParent, View view, View view2, int i10) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i10);
        }
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static boolean a(ViewParent viewParent, View view, float f, float f6, boolean z6) {
            return viewParent.onNestedFling(view, f, f6, z6);
        }

        @DoNotInline
        static boolean b(ViewParent viewParent, View view, float f, float f6) {
            return viewParent.onNestedPreFling(view, f, f6);
        }

        @DoNotInline
        static void c(ViewParent viewParent, View view, int i10, int i11, int[] iArr) {
            viewParent.onNestedPreScroll(view, i10, i11, iArr);
        }

        @DoNotInline
        static void d(ViewParent viewParent, View view, int i10, int i11, int i12, int i13) {
            viewParent.onNestedScroll(view, i10, i11, i12, i13);
        }

        @DoNotInline
        static void e(ViewParent viewParent, View view, View view2, int i10) {
            viewParent.onNestedScrollAccepted(view, view2, i10);
        }

        @DoNotInline
        static boolean f(ViewParent viewParent, View view, View view2, int i10) {
            return viewParent.onStartNestedScroll(view, view2, i10);
        }

        @DoNotInline
        static void g(ViewParent viewParent, View view) {
            viewParent.onStopNestedScroll(view);
        }
    }

    public static void c(@NonNull ViewParent viewParent, @NonNull View view, int i10, int i11, @NonNull int[] iArr, int i12) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedPreScroll(view, i10, i11, iArr, i12);
            return;
        }
        if (i12 == 0) {
            try {
                Api21Impl.c(viewParent, view, i10, i11, iArr);
            } catch (AbstractMethodError e) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
            }
        }
    }

    public static void e(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int i10, int i11) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScrollAccepted(view, view2, i10, i11);
            return;
        }
        if (i11 == 0) {
            try {
                Api21Impl.e(viewParent, view, view2, i10);
            } catch (AbstractMethodError e) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
            }
        }
    }

    public static boolean f(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int i10, int i11) {
        if (viewParent instanceof NestedScrollingParent2) {
            return ((NestedScrollingParent2) viewParent).onStartNestedScroll(view, view2, i10, i11);
        }
        if (i11 != 0) {
            return false;
        }
        try {
            return Api21Impl.f(viewParent, view, view2, i10);
        } catch (AbstractMethodError e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
            return false;
        }
    }

    public static void g(@NonNull ViewParent viewParent, @NonNull View view, int i10) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onStopNestedScroll(view, i10);
            return;
        }
        if (i10 == 0) {
            try {
                Api21Impl.g(viewParent, view);
            } catch (AbstractMethodError e) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
            }
        }
    }

    private ViewParentCompat() {
    }

    public static boolean a(@NonNull ViewParent viewParent, @NonNull View view, float f, float f6, boolean z6) {
        try {
            return Api21Impl.a(viewParent, view, f, f6, z6);
        } catch (AbstractMethodError e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
            return false;
        }
    }

    public static boolean b(@NonNull ViewParent viewParent, @NonNull View view, float f, float f6) {
        try {
            return Api21Impl.b(viewParent, view, f, f6);
        } catch (AbstractMethodError e) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
            return false;
        }
    }
}
