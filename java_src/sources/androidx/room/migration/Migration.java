package androidx.room.migration;

import androidx.annotation.NonNull;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* JADX INFO: loaded from: classes10.dex */
public abstract class Migration {
    public final int endVersion;
    public final int startVersion;

    public abstract void a(@NonNull SupportSQLiteDatabase supportSQLiteDatabase);

    public Migration(int i10, int i11) {
        this.startVersion = i10;
        this.endVersion = i11;
    }
}
