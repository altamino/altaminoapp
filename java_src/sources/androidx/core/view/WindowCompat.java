package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes9.dex */
public final class WindowCompat {
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;

    @RequiresApi
    static class Api16Impl {
        private Api16Impl() {
        }

        @DoNotInline
        static void a(@NonNull Window window, boolean z6) {
            int i10;
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            if (z6) {
                i10 = systemUiVisibility & (-1793);
            } else {
                i10 = systemUiVisibility | 1792;
            }
            decorView.setSystemUiVisibility(i10);
        }
    }

    @RequiresApi
    static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static <T> T a(Window window, int i10) {
            return (T) window.requireViewById(i10);
        }
    }

    @RequiresApi
    static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        static void a(@NonNull Window window, boolean z6) {
            window.setDecorFitsSystemWindows(z6);
        }
    }

    @NonNull
    public static WindowInsetsControllerCompat a(@NonNull Window window, @NonNull View view) {
        return new WindowInsetsControllerCompat(window, view);
    }

    public static void b(@NonNull Window window, boolean z6) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.a(window, z6);
        } else {
            Api16Impl.a(window, z6);
        }
    }

    private WindowCompat() {
    }
}
