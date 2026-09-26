package androidx.room;

import android.content.ContentValues;
import androidx.sqlite.db.SupportSQLiteDatabase;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$insert$1 extends kotlin.jvm.internal.v implements e8.l<SupportSQLiteDatabase, Long> {
    final /* synthetic */ int $conflictAlgorithm;
    final /* synthetic */ String $table;
    final /* synthetic */ ContentValues $values;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$insert$1(String str, int i10, ContentValues contentValues) {
        super(1);
        this.$table = str;
        this.$conflictAlgorithm = i10;
        this.$values = contentValues;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Long invoke(@NotNull SupportSQLiteDatabase db) {
        kotlin.jvm.internal.t.j(db, "db");
        return Long.valueOf(db.M(this.$table, this.$conflictAlgorithm, this.$values));
    }
}
