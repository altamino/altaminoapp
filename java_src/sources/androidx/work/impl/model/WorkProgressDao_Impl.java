package androidx.work.impl.model;

import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.SharedSQLiteStatement;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.Data;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class WorkProgressDao_Impl implements WorkProgressDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WorkProgress> __insertionAdapterOfWorkProgress;
    private final SharedSQLiteStatement __preparedStmtOfDelete;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAll;

    @Override // androidx.work.impl.model.WorkProgressDao
    public void a(final String workSpecId) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfDelete.b();
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
            this.__preparedStmtOfDelete.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void b() {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfDeleteAll.b();
        this.__db.e();
        try {
            supportSQLiteStatementB.x();
            this.__db.D();
        } finally {
            this.__db.i();
            this.__preparedStmtOfDeleteAll.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void c(final WorkProgress progress) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfWorkProgress.j(progress);
            this.__db.D();
        } finally {
            this.__db.i();
        }
    }

    public WorkProgressDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWorkProgress = new EntityInsertionAdapter<WorkProgress>(__db) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public void i(SupportSQLiteStatement stmt, WorkProgress value) throws Throwable {
                if (value.b() == null) {
                    stmt.P(1);
                } else {
                    stmt.s(1, value.b());
                }
                byte[] bArrK = Data.k(value.a());
                if (bArrK == null) {
                    stmt.P(2);
                } else {
                    stmt.K(2, bArrK);
                }
            }
        };
        this.__preparedStmtOfDelete = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "DELETE from WorkProgress where work_spec_id=?";
            }
        };
        this.__preparedStmtOfDeleteAll = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkProgressDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "DELETE FROM WorkProgress";
            }
        };
    }

    public static List<Class<?>> d() {
        return Collections.emptyList();
    }
}
