package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class WorkNameDao_Impl implements WorkNameDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WorkName> __insertionAdapterOfWorkName;

    @Override // androidx.work.impl.model.WorkNameDao
    public void a(final WorkName workName) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfWorkName.j(workName);
            this.__db.D();
        } finally {
            this.__db.i();
        }
    }

    @Override // androidx.work.impl.model.WorkNameDao
    public List<String> b(final String workSpecId) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT name FROM workname WHERE work_spec_id=?", 1);
        if (workSpecId == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, workSpecId);
        }
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                arrayList.add(cursorB.isNull(0) ? null : cursorB.getString(0));
            }
            return arrayList;
        } finally {
            cursorB.close();
            roomSQLiteQueryA.release();
        }
    }

    public WorkNameDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWorkName = new EntityInsertionAdapter<WorkName>(__db) { // from class: androidx.work.impl.model.WorkNameDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public void i(SupportSQLiteStatement stmt, WorkName value) {
                if (value.a() == null) {
                    stmt.P(1);
                } else {
                    stmt.s(1, value.a());
                }
                if (value.b() == null) {
                    stmt.P(2);
                } else {
                    stmt.s(2, value.b());
                }
            }
        };
    }

    public static List<Class<?>> c() {
        return Collections.emptyList();
    }
}
