package androidx.room;

import androidx.sqlite.db.SupportSQLiteDatabase;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setLocale$1 extends kotlin.jvm.internal.v implements e8.l<SupportSQLiteDatabase, Object> {
    final /* synthetic */ Locale $locale;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setLocale$1(Locale locale) {
        super(1);
        this.$locale = locale;
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SupportSQLiteDatabase db) {
        kotlin.jvm.internal.t.j(db, "db");
        db.j0(this.$locale);
        return null;
    }
}
