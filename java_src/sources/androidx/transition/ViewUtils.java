package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes7.dex */
class ViewUtils {
    static final Property<View, Rect> CLIP_BOUNDS;
    private static final ViewUtilsBase IMPL;
    private static final String TAG = "ViewUtils";
    static final Property<View, Float> TRANSITION_ALPHA;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            IMPL = new ViewUtilsApi29();
        } else {
            IMPL = new ViewUtilsApi23();
        }
        TRANSITION_ALPHA = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.transition.ViewUtils.1
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Float get(View view) {
                return Float.valueOf(ViewUtils.c(view));
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void set(View view, Float f) {
                ViewUtils.h(view, f.floatValue());
            }
        };
        CLIP_BOUNDS = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.transition.ViewUtils.2
            @Override // android.util.Property
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Rect get(View view) {
                return ViewCompat.w(view);
            }

            @Override // android.util.Property
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void set(View view, Rect rect) {
                ViewCompat.B0(view, rect);
            }
        };
    }

    static void a(@NonNull View view) {
        IMPL.a(view);
    }

    static ViewOverlayImpl b(@NonNull View view) {
        return new ViewOverlayApi18(view);
    }

    static float c(@NonNull View view) {
        return IMPL.c(view);
    }

    static WindowIdImpl d(@NonNull View view) {
        return new WindowIdApi18(view);
    }

    static void e(@NonNull View view) {
        IMPL.d(view);
    }

    static void f(@NonNull View view, @Nullable Matrix matrix) {
        IMPL.e(view, matrix);
    }

    static void g(@NonNull View view, int i10, int i11, int i12, int i13) {
        IMPL.f(view, i10, i11, i12, i13);
    }

    static void h(@NonNull View view, float f) {
        IMPL.g(view, f);
    }

    static void i(@NonNull View view, int i10) {
        IMPL.h(view, i10);
    }

    static void j(@NonNull View view, @NonNull Matrix matrix) {
        IMPL.i(view, matrix);
    }

    static void k(@NonNull View view, @NonNull Matrix matrix) {
        IMPL.j(view, matrix);
    }

    private ViewUtils() {
    }
}
