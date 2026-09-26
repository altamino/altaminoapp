package androidx.core.view;

import android.graphics.Point;
import android.view.Display;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
public final class DisplayCompat {
    private static final int DISPLAY_SIZE_4K_HEIGHT = 2160;
    private static final int DISPLAY_SIZE_4K_WIDTH = 3840;

    public static final class ModeCompat {
        private final boolean mIsNative;
        private final Display.Mode mMode;
        private final Point mPhysicalSize;

        @RequiresApi
        static class Api23Impl {
            private Api23Impl() {
            }

            @DoNotInline
            static int a(Display.Mode mode) {
                return mode.getPhysicalHeight();
            }

            @DoNotInline
            static int b(Display.Mode mode) {
                return mode.getPhysicalWidth();
            }
        }
    }

    @RequiresApi
    static class Api17Impl {
        private Api17Impl() {
        }
    }

    @RequiresApi
    static class Api23Impl {
        private Api23Impl() {
        }
    }

    private DisplayCompat() {
    }
}
