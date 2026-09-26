package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class WorkTagDao_Impl implements WorkTagDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WorkTag> __insertionAdapterOfWorkTag;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByWorkSpecId;

    @Override // androidx.work.impl.model.WorkTagDao
    public List<String> b(final String id) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (id == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, id);
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

    @Override // androidx.work.impl.model.WorkTagDao
    public void c(final WorkTag workTag) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfWorkTag.j(workTag);
            this.__db.D();
        } finally {
            this.__db.i();
        }
    }

    public WorkTagDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWorkTag = new EntityInsertionAdapter<WorkTag>(__db) { // from class: androidx.work.impl.model.WorkTagDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public void i(SupportSQLiteStatement stmt, WorkTag value) {
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
        this.__preparedStmtOfDeleteByWorkSpecId = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkTagDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "DELETE FROM worktag WHERE work_spec_id=?";
            }
        };
    }

    public static List<Class<?>> d() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public void a(final String id, final Set<String> tags) {
        WorkTagDao.DefaultImpls.a(this, id, tags);
    }
}
