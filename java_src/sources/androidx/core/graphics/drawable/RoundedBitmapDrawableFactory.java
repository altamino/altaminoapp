package androidx.core.graphics.drawable;

import android.graphics.Rect;
import androidx.core.view.GravityCompat;

/* JADX INFO: loaded from: classes3.dex */
public final class RoundedBitmapDrawableFactory {
    private static final String TAG = "RoundedBitmapDrawableFa";

    private static class DefaultRoundedBitmapDrawable extends RoundedBitmapDrawable {
        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        void b(int i10, int i11, int i12, Rect rect, Rect rect2) {
            GravityCompat.a(i10, i11, i12, rect, rect2, 0);
        }
    }

    private RoundedBitmapDrawableFactory() {
    }
}
