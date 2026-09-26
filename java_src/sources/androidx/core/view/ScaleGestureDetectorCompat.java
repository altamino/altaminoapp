package androidx.core.view;

import android.view.ScaleGestureDetector;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes4.dex */
public final class ScaleGestureDetectorCompat {

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static boolean a(ScaleGestureDetector scaleGestureDetector) {
            return scaleGestureDetector.isQuickScaleEnabled();
        }

        @DoNotInline
        static void b(ScaleGestureDetector scaleGestureDetector, boolean z6) {
            scaleGestureDetector.setQuickScaleEnabled(z6);
        }
    }

    private ScaleGestureDetectorCompat() {
    }
}
