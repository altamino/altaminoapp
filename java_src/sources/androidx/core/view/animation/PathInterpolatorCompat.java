package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
public final class PathInterpolatorCompat {

    @RequiresApi
    static class Api21Impl {
        @DoNotInline
        static PathInterpolator a(float f, float f6) {
            return new PathInterpolator(f, f6);
        }

        @DoNotInline
        static PathInterpolator b(float f, float f6, float f7, float f10) {
            return new PathInterpolator(f, f6, f7, f10);
        }

        @DoNotInline
        static PathInterpolator c(Path path) {
            return new PathInterpolator(path);
        }

        private Api21Impl() {
        }
    }

    private PathInterpolatorCompat() {
    }

    @NonNull
    public static Interpolator a(float f, float f6, float f7, float f10) {
        return Api21Impl.b(f, f6, f7, f10);
    }

    @NonNull
    public static Interpolator b(@NonNull Path path) {
        return Api21Impl.c(path);
    }
}
