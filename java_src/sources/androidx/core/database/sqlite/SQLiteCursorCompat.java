package androidx.core.database.sqlite;

import android.database.sqlite.SQLiteCursor;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes9.dex */
public final class SQLiteCursorCompat {

    @RequiresApi
    static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static void a(SQLiteCursor sQLiteCursor, boolean z6) {
            sQLiteCursor.setFillWindowForwardOnly(z6);
        }
    }

    private SQLiteCursorCompat() {
    }
}
