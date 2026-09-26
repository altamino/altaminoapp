package androidx.room;

import androidx.sqlite.db.SupportSQLiteOpenHelper;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class AutoClosingRoomOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {

    @NotNull
    private final AutoCloser autoCloser;

    @NotNull
    private final SupportSQLiteOpenHelper.Factory delegate;

    public AutoClosingRoomOpenHelperFactory(@NotNull SupportSQLiteOpenHelper.Factory delegate, @NotNull AutoCloser autoCloser) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        kotlin.jvm.internal.t.j(autoCloser, "autoCloser");
        this.delegate = delegate;
        this.autoCloser = autoCloser;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public AutoClosingRoomOpenHelper a(@NotNull SupportSQLiteOpenHelper.Configuration configuration) {
        kotlin.jvm.internal.t.j(configuration, "configuration");
        return new AutoClosingRoomOpenHelper(this.delegate.a(configuration), this.autoCloser);
    }
}
