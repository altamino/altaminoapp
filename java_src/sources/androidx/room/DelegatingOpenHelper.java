package androidx.room;

import androidx.sqlite.db.SupportSQLiteOpenHelper;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface DelegatingOpenHelper {
    @NotNull
    SupportSQLiteOpenHelper getDelegate();
}
