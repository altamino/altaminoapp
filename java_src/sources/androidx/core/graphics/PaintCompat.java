package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.Paint;
import android.graphics.Rect;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.util.Pair;

/* JADX INFO: loaded from: classes7.dex */
public final class PaintCompat {
    private static final String EM_STRING = "m";
    private static final String TOFU_STRING = "\udfffd";
    private static final ThreadLocal<Pair<Rect, Rect>> sRectThreadLocal = new ThreadLocal<>();

    @RequiresApi
    static class Api29Impl {
        @DoNotInline
        static void a(Paint paint, Object obj) {
            paint.setBlendMode((BlendMode) obj);
        }

        private Api29Impl() {
        }
    }

    @RequiresApi
    static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        static boolean a(Paint paint, String str) {
            return paint.hasGlyph(str);
        }
    }

    private PaintCompat() {
    }

    public static boolean a(@NonNull Paint paint, @NonNull String str) {
        return Api23Impl.a(paint, str);
    }
}
