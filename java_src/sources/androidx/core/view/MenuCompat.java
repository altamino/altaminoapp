package androidx.core.view;

import android.view.Menu;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
public final class MenuCompat {

    @RequiresApi
    static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static void a(Menu menu, boolean z6) {
            menu.setGroupDividerEnabled(z6);
        }
    }

    private MenuCompat() {
    }
}
