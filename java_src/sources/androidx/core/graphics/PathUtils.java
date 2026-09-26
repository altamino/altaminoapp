package androidx.core.graphics;

import android.graphics.Path;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
public final class PathUtils {

    @RequiresApi
    static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static float[] a(Path path, float f) {
            return path.approximate(f);
        }
    }

    private PathUtils() {
    }
}
