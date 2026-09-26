package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
public class BlendModeColorFilterCompat {

    @RequiresApi
    static class Api29Impl {
        @DoNotInline
        static ColorFilter a(int i10, Object obj) {
            return new BlendModeColorFilter(i10, (BlendMode) obj);
        }

        private Api29Impl() {
        }
    }

    private BlendModeColorFilterCompat() {
    }
}
