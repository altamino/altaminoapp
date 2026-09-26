package androidx.core.database;

import android.database.CursorWindow;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
public final class CursorWindowCompat {

    @RequiresApi
    static class Api15Impl {
        @DoNotInline
        static CursorWindow a(String str) {
            return new CursorWindow(str);
        }

        private Api15Impl() {
        }
    }

    @RequiresApi
    static class Api28Impl {
        @DoNotInline
        static CursorWindow a(String str, long j6) {
            return new CursorWindow(str, j6);
        }

        private Api28Impl() {
        }
    }

    private CursorWindowCompat() {
    }
}
