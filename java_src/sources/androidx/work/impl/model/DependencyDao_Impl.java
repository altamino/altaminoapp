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

/* JADX INFO: loaded from: classes10.dex */
public final class DependencyDao_Impl implements DependencyDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<Dependency> __insertionAdapterOfDependency;

    @Override // androidx.work.impl.model.DependencyDao
    public void a(final Dependency dependency) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfDependency.j(dependency);
            this.__db.D();
        } finally {
            this.__db.i();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public List<String> b(final String id) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
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

    @Override // androidx.work.impl.model.DependencyDao
    public boolean c(final String id) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (id == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, id);
        }
        this.__db.d();
        boolean z6 = false;
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            if (cursorB.moveToFirst()) {
                z6 = cursorB.getInt(0) != 0;
            }
            return z6;
        } finally {
            cursorB.close();
            roomSQLiteQueryA.release();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public boolean d(final String id) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (id == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, id);
        }
        this.__db.d();
        boolean z6 = false;
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            if (cursorB.moveToFirst()) {
                z6 = cursorB.getInt(0) != 0;
            }
            return z6;
        } finally {
            cursorB.close();
            roomSQLiteQueryA.release();
        }
    }

    public DependencyDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfDependency = new EntityInsertionAdapter<Dependency>(__db) { // from class: androidx.work.impl.model.DependencyDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public void i(SupportSQLiteStatement stmt, Dependency value) {
                if (value.b() == null) {
                    stmt.P(1);
                } else {
                    stmt.s(1, value.b());
                }
                if (value.a() == null) {
                    stmt.P(2);
                } else {
                    stmt.s(2, value.a());
                }
            }
        };
    }

    public static List<Class<?>> e() {
        return Collections.emptyList();
    }
}
