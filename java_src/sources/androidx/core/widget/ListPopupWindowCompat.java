package androidx.core.widget;

import android.view.View;
import android.widget.ListPopupWindow;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
public final class ListPopupWindowCompat {

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static View.OnTouchListener a(ListPopupWindow listPopupWindow, View view) {
            return listPopupWindow.createDragToOpenListener(view);
        }
    }

    private ListPopupWindowCompat() {
    }
}
