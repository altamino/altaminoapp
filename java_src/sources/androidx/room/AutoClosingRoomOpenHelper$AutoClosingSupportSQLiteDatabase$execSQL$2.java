package androidx.room;

import androidx.sqlite.db.SupportSQLiteDatabase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$execSQL$2 extends kotlin.jvm.internal.v implements e8.l<SupportSQLiteDatabase, Object> {
    final /* synthetic */ Object[] $bindArgs;
    final /* synthetic */ String $sql;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$execSQL$2(String str, Object[] objArr) {
        super(1);
        this.$sql = str;
        this.$bindArgs = objArr;
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SupportSQLiteDatabase db) {
        kotlin.jvm.internal.t.j(db, "db");
        db.e0(this.$sql, this.$bindArgs);
        return null;
    }
}
