package androidx.room;

import androidx.sqlite.db.SupportSQLiteDatabase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class RoomDatabase$beginTransaction$1 extends kotlin.jvm.internal.v implements e8.l<SupportSQLiteDatabase, Object> {
    final /* synthetic */ RoomDatabase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomDatabase$beginTransaction$1(RoomDatabase roomDatabase) {
        super(1);
        this.this$0 = roomDatabase;
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SupportSQLiteDatabase it) {
        kotlin.jvm.internal.t.j(it, "it");
        this.this$0.v();
        return null;
    }
}
