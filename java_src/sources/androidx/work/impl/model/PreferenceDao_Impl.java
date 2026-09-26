package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes7.dex */
public final class PreferenceDao_Impl implements PreferenceDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<Preference> __insertionAdapterOfPreference;

    /* JADX INFO: renamed from: androidx.work.impl.model.PreferenceDao_Impl$2, reason: invalid class name */
    class AnonymousClass2 implements Callable<Long> {
        final /* synthetic */ PreferenceDao_Impl this$0;
        final /* synthetic */ RoomSQLiteQuery val$_statement;

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long call() throws Exception {
            Long lValueOf = null;
            Cursor cursorB = DBUtil.b(this.this$0.__db, this.val$_statement, false, null);
            try {
                if (cursorB.moveToFirst() && !cursorB.isNull(0)) {
                    lValueOf = Long.valueOf(cursorB.getLong(0));
                }
                return lValueOf;
            } finally {
                cursorB.close();
            }
        }

        protected void finalize() {
            this.val$_statement.release();
        }
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public void a(final Preference preference) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfPreference.j(preference);
            this.__db.D();
        } finally {
            this.__db.i();
        }
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public Long b(final String key) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT long_value FROM Preference where `key`=?", 1);
        if (key == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, key);
        }
        this.__db.d();
        Long lValueOf = null;
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            if (cursorB.moveToFirst() && !cursorB.isNull(0)) {
                lValueOf = Long.valueOf(cursorB.getLong(0));
            }
            return lValueOf;
        } finally {
            cursorB.close();
            roomSQLiteQueryA.release();
        }
    }

    public PreferenceDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfPreference = new EntityInsertionAdapter<Preference>(__db) { // from class: androidx.work.impl.model.PreferenceDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public void i(SupportSQLiteStatement stmt, Preference value) {
                if (value.a() == null) {
                    stmt.P(1);
                } else {
                    stmt.s(1, value.a());
                }
                if (value.b() == null) {
                    stmt.P(2);
                } else {
                    stmt.I(2, value.b().longValue());
                }
            }
        };
    }

    public static List<Class<?>> d() {
        return Collections.emptyList();
    }
}
