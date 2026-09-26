package androidx.core.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class DisplayManagerCompat {
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
    private static final WeakHashMap<Context, DisplayManagerCompat> sInstances = new WeakHashMap<>();
    private final Context mContext;

    @RequiresApi
    static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        static Display a(DisplayManager displayManager, int i10) {
            return displayManager.getDisplay(i10);
        }

        @DoNotInline
        static Display[] b(DisplayManager displayManager) {
            return displayManager.getDisplays();
        }
    }
}
