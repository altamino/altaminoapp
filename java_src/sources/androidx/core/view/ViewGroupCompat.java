package androidx.core.view;

import android.view.ViewGroup;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
public final class ViewGroupCompat {
    public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
    public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;

    @RequiresApi
    static class Api18Impl {
        private Api18Impl() {
        }

        @DoNotInline
        static int a(ViewGroup viewGroup) {
            return viewGroup.getLayoutMode();
        }

        @DoNotInline
        static void b(ViewGroup viewGroup, int i10) {
            viewGroup.setLayoutMode(i10);
        }
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static int a(ViewGroup viewGroup) {
            return viewGroup.getNestedScrollAxes();
        }

        @DoNotInline
        static boolean b(ViewGroup viewGroup) {
            return viewGroup.isTransitionGroup();
        }

        @DoNotInline
        static void c(ViewGroup viewGroup, boolean z6) {
            viewGroup.setTransitionGroup(z6);
        }
    }

    private ViewGroupCompat() {
    }

    public static boolean a(@NonNull ViewGroup viewGroup) {
        return Api21Impl.b(viewGroup);
    }

    @Deprecated
    public static void b(ViewGroup viewGroup, boolean z6) {
        viewGroup.setMotionEventSplittingEnabled(z6);
    }
}
