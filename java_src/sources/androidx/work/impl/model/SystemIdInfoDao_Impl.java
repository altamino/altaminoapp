package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<SystemIdInfo> __insertionAdapterOfSystemIdInfo;
    private final SharedSQLiteStatement __preparedStmtOfRemoveSystemIdInfo;
    private final SharedSQLiteStatement __preparedStmtOfRemoveSystemIdInfo_1;

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo a(String str, int i10) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?", 2);
        if (str == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, str);
        }
        roomSQLiteQueryA.I(2, i10);
        this.__db.d();
        SystemIdInfo systemIdInfo = null;
        String string = null;
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iE = CursorUtil.e(cursorB, "work_spec_id");
            int iE2 = CursorUtil.e(cursorB, "generation");
            int iE3 = CursorUtil.e(cursorB, "system_id");
            if (cursorB.moveToFirst()) {
                if (!cursorB.isNull(iE)) {
                    string = cursorB.getString(iE);
                }
                systemIdInfo = new SystemIdInfo(string, cursorB.getInt(iE2), cursorB.getInt(iE3));
            }
            return systemIdInfo;
        } finally {
            cursorB.close();
            roomSQLiteQueryA.release();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void c(final SystemIdInfo systemIdInfo) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfSystemIdInfo.j(systemIdInfo);
            this.__db.D();
        } finally {
            this.__db.i();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public List<String> e() {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
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

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void f(final String workSpecId, final int generation) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfRemoveSystemIdInfo.b();
        if (workSpecId == null) {
            supportSQLiteStatementB.P(1);
        } else {
            supportSQLiteStatementB.s(1, workSpecId);
        }
        supportSQLiteStatementB.I(2, generation);
        this.__db.e();
        try {
            supportSQLiteStatementB.x();
            this.__db.D();
        } finally {
            this.__db.i();
            this.__preparedStmtOfRemoveSystemIdInfo.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void g(final String workSpecId) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfRemoveSystemIdInfo_1.b();
        if (workSpecId == null) {
            supportSQLiteStatementB.P(1);
        } else {
            supportSQLiteStatementB.s(1, workSpecId);
        }
        this.__db.e();
        try {
            supportSQLiteStatementB.x();
            this.__db.D();
        } finally {
            this.__db.i();
            this.__preparedStmtOfRemoveSystemIdInfo_1.h(supportSQLiteStatementB);
        }
    }

    public SystemIdInfoDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfSystemIdInfo = new EntityInsertionAdapter<SystemIdInfo>(__db) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public void i(SupportSQLiteStatement stmt, SystemIdInfo value) {
                String str = value.workSpecId;
                if (str == null) {
                    stmt.P(1);
                } else {
                    stmt.s(1, str);
                }
                stmt.I(2, value.a());
                stmt.I(3, value.systemId);
            }
        };
        this.__preparedStmtOfRemoveSystemIdInfo = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?";
            }
        };
        this.__preparedStmtOfRemoveSystemIdInfo_1 = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "DELETE FROM SystemIdInfo where work_spec_id=?";
            }
        };
    }

    public static List<Class<?>> h() {
        return Collections.emptyList();
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void b(final WorkGenerationalId id) {
        SystemIdInfoDao.DefaultImpls.b(this, id);
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo d(final WorkGenerationalId id) {
        return SystemIdInfoDao.DefaultImpls.a(this, id);
    }
}
