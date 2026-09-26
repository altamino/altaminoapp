package androidx.work.impl.model;

import android.database.Cursor;
import androidx.collection.ArrayMap;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<WorkSpec> __insertionAdapterOfWorkSpec;
    private final SharedSQLiteStatement __preparedStmtOfDelete;
    private final SharedSQLiteStatement __preparedStmtOfIncrementGeneration;
    private final SharedSQLiteStatement __preparedStmtOfIncrementPeriodCount;
    private final SharedSQLiteStatement __preparedStmtOfIncrementWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfMarkWorkSpecScheduled;
    private final SharedSQLiteStatement __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast;
    private final SharedSQLiteStatement __preparedStmtOfResetScheduledState;
    private final SharedSQLiteStatement __preparedStmtOfResetWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfSetLastEnqueuedTime;
    private final SharedSQLiteStatement __preparedStmtOfSetOutput;
    private final SharedSQLiteStatement __preparedStmtOfSetState;
    private final EntityDeletionOrUpdateAdapter<WorkSpec> __updateAdapterOfWorkSpec;

    /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDao_Impl$14, reason: invalid class name */
    class AnonymousClass14 implements Callable<List<String>> {
        final /* synthetic */ WorkSpecDao_Impl this$0;
        final /* synthetic */ RoomSQLiteQuery val$_statement;

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<String> call() throws Exception {
            this.this$0.__db.e();
            try {
                Cursor cursorB = DBUtil.b(this.this$0.__db, this.val$_statement, false, null);
                try {
                    ArrayList arrayList = new ArrayList(cursorB.getCount());
                    while (cursorB.moveToNext()) {
                        arrayList.add(cursorB.isNull(0) ? null : cursorB.getString(0));
                    }
                    this.this$0.__db.D();
                    cursorB.close();
                    this.this$0.__db.i();
                    return arrayList;
                } catch (Throwable th) {
                    cursorB.close();
                    throw th;
                }
            } catch (Throwable th2) {
                this.this$0.__db.i();
                throw th2;
            }
        }

        protected void finalize() {
            this.val$_statement.release();
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDao_Impl$15, reason: invalid class name */
    class AnonymousClass15 implements Callable<List<WorkSpec.WorkInfoPojo>> {
        final /* synthetic */ WorkSpecDao_Impl this$0;
        final /* synthetic */ RoomSQLiteQuery val$_statement;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            this.this$0.__db.e();
            try {
                Cursor cursorB = DBUtil.b(this.this$0.__db, this.val$_statement, true, null);
                try {
                    ArrayMap arrayMap = new ArrayMap();
                    ArrayMap arrayMap2 = new ArrayMap();
                    while (cursorB.moveToNext()) {
                        String string = cursorB.getString(0);
                        if (((ArrayList) arrayMap.get(string)) == null) {
                            arrayMap.put(string, new ArrayList());
                        }
                        String string2 = cursorB.getString(0);
                        if (((ArrayList) arrayMap2.get(string2)) == null) {
                            arrayMap2.put(string2, new ArrayList());
                        }
                    }
                    cursorB.moveToPosition(-1);
                    this.this$0.D(arrayMap);
                    this.this$0.C(arrayMap2);
                    ArrayList arrayList = new ArrayList(cursorB.getCount());
                    while (cursorB.moveToNext()) {
                        String string3 = cursorB.isNull(0) ? null : cursorB.getString(0);
                        WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(1));
                        Data dataG = Data.g(cursorB.isNull(2) ? null : cursorB.getBlob(2));
                        int i10 = cursorB.getInt(3);
                        int i11 = cursorB.getInt(4);
                        ArrayList arrayList2 = (ArrayList) arrayMap.get(cursorB.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) arrayMap2.get(cursorB.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, stateF, dataG, i10, i11, arrayList3, arrayList4));
                    }
                    this.this$0.__db.D();
                    cursorB.close();
                    this.this$0.__db.i();
                    return arrayList;
                } catch (Throwable th) {
                    cursorB.close();
                    throw th;
                }
            } catch (Throwable th2) {
                this.this$0.__db.i();
                throw th2;
            }
        }

        protected void finalize() {
            this.val$_statement.release();
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDao_Impl$16, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    class AnonymousClass16 implements Callable<List<WorkSpec.WorkInfoPojo>> {
        final /* synthetic */ WorkSpecDao_Impl this$0;
        final /* synthetic */ RoomSQLiteQuery val$_statement;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            this.this$0.__db.e();
            try {
                Cursor cursorB = DBUtil.b(this.this$0.__db, this.val$_statement, true, null);
                try {
                    ArrayMap arrayMap = new ArrayMap();
                    ArrayMap arrayMap2 = new ArrayMap();
                    while (cursorB.moveToNext()) {
                        String string = cursorB.getString(0);
                        if (((ArrayList) arrayMap.get(string)) == null) {
                            arrayMap.put(string, new ArrayList());
                        }
                        String string2 = cursorB.getString(0);
                        if (((ArrayList) arrayMap2.get(string2)) == null) {
                            arrayMap2.put(string2, new ArrayList());
                        }
                    }
                    cursorB.moveToPosition(-1);
                    this.this$0.D(arrayMap);
                    this.this$0.C(arrayMap2);
                    ArrayList arrayList = new ArrayList(cursorB.getCount());
                    while (cursorB.moveToNext()) {
                        String string3 = cursorB.isNull(0) ? null : cursorB.getString(0);
                        WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(1));
                        Data dataG = Data.g(cursorB.isNull(2) ? null : cursorB.getBlob(2));
                        int i10 = cursorB.getInt(3);
                        int i11 = cursorB.getInt(4);
                        ArrayList arrayList2 = (ArrayList) arrayMap.get(cursorB.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) arrayMap2.get(cursorB.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, stateF, dataG, i10, i11, arrayList3, arrayList4));
                    }
                    this.this$0.__db.D();
                    cursorB.close();
                    this.this$0.__db.i();
                    return arrayList;
                } catch (Throwable th) {
                    cursorB.close();
                    throw th;
                }
            } catch (Throwable th2) {
                this.this$0.__db.i();
                throw th2;
            }
        }

        protected void finalize() {
            this.val$_statement.release();
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDao_Impl$17, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    class AnonymousClass17 implements Callable<List<WorkSpec.WorkInfoPojo>> {
        final /* synthetic */ WorkSpecDao_Impl this$0;
        final /* synthetic */ RoomSQLiteQuery val$_statement;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            this.this$0.__db.e();
            try {
                Cursor cursorB = DBUtil.b(this.this$0.__db, this.val$_statement, true, null);
                try {
                    ArrayMap arrayMap = new ArrayMap();
                    ArrayMap arrayMap2 = new ArrayMap();
                    while (cursorB.moveToNext()) {
                        String string = cursorB.getString(0);
                        if (((ArrayList) arrayMap.get(string)) == null) {
                            arrayMap.put(string, new ArrayList());
                        }
                        String string2 = cursorB.getString(0);
                        if (((ArrayList) arrayMap2.get(string2)) == null) {
                            arrayMap2.put(string2, new ArrayList());
                        }
                    }
                    cursorB.moveToPosition(-1);
                    this.this$0.D(arrayMap);
                    this.this$0.C(arrayMap2);
                    ArrayList arrayList = new ArrayList(cursorB.getCount());
                    while (cursorB.moveToNext()) {
                        String string3 = cursorB.isNull(0) ? null : cursorB.getString(0);
                        WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(1));
                        Data dataG = Data.g(cursorB.isNull(2) ? null : cursorB.getBlob(2));
                        int i10 = cursorB.getInt(3);
                        int i11 = cursorB.getInt(4);
                        ArrayList arrayList2 = (ArrayList) arrayMap.get(cursorB.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) arrayMap2.get(cursorB.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, stateF, dataG, i10, i11, arrayList3, arrayList4));
                    }
                    this.this$0.__db.D();
                    cursorB.close();
                    this.this$0.__db.i();
                    return arrayList;
                } catch (Throwable th) {
                    cursorB.close();
                    throw th;
                }
            } catch (Throwable th2) {
                this.this$0.__db.i();
                throw th2;
            }
        }

        protected void finalize() {
            this.val$_statement.release();
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.model.WorkSpecDao_Impl$18, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    class AnonymousClass18 implements Callable<Long> {
        final /* synthetic */ WorkSpecDao_Impl this$0;
        final /* synthetic */ RoomSQLiteQuery val$_statement;

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long call() throws Exception {
            Cursor cursorB = DBUtil.b(this.this$0.__db, this.val$_statement, false, null);
            try {
                return Long.valueOf(cursorB.moveToFirst() ? cursorB.getLong(0) : 0L);
            } finally {
                cursorB.close();
            }
        }

        protected void finalize() {
            this.val$_statement.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int A(final String id) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.b();
        if (id == null) {
            supportSQLiteStatementB.P(1);
        } else {
            supportSQLiteStatementB.s(1, id);
        }
        this.__db.e();
        try {
            int iX = supportSQLiteStatementB.x();
            this.__db.D();
            return iX;
        } finally {
            this.__db.i();
            this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> B(final List<String> ids) {
        StringBuilder sbB = StringUtil.b();
        sbB.append("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (");
        int size = ids.size();
        StringUtil.a(sbB, size);
        sbB.append(")");
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a(sbB.toString(), size);
        int i10 = 1;
        for (String str : ids) {
            if (str == null) {
                roomSQLiteQueryA.P(i10);
            } else {
                roomSQLiteQueryA.s(i10, str);
            }
            i10++;
        }
        this.__db.d();
        this.__db.e();
        try {
            Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, true, null);
            try {
                ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
                ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(0);
                    if (arrayMap.get(string) == null) {
                        arrayMap.put(string, new ArrayList<>());
                    }
                    String string2 = cursorB.getString(0);
                    if (arrayMap2.get(string2) == null) {
                        arrayMap2.put(string2, new ArrayList<>());
                    }
                }
                cursorB.moveToPosition(-1);
                D(arrayMap);
                C(arrayMap2);
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string3 = cursorB.isNull(0) ? null : cursorB.getString(0);
                    WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(1));
                    Data dataG = Data.g(cursorB.isNull(2) ? null : cursorB.getBlob(2));
                    int i11 = cursorB.getInt(3);
                    int i12 = cursorB.getInt(4);
                    ArrayList<String> arrayList2 = arrayMap.get(cursorB.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<String> arrayList3 = arrayList2;
                    ArrayList<Data> arrayList4 = arrayMap2.get(cursorB.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, stateF, dataG, i11, i12, arrayList3, arrayList4));
                }
                this.__db.D();
                cursorB.close();
                roomSQLiteQueryA.release();
                this.__db.i();
                return arrayList;
            } catch (Throwable th) {
                cursorB.close();
                roomSQLiteQueryA.release();
                throw th;
            }
        } catch (Throwable th2) {
            this.__db.i();
            throw th2;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void a(final String id) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfDelete.b();
        if (id == null) {
            supportSQLiteStatementB.P(1);
        } else {
            supportSQLiteStatementB.s(1, id);
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

    @Override // androidx.work.impl.model.WorkSpecDao
    public void b() {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.b();
        this.__db.e();
        try {
            supportSQLiteStatementB.x();
            this.__db.D();
        } finally {
            this.__db.i();
            this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void c(final WorkSpec workSpec) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfWorkSpec.j(workSpec);
            this.__db.D();
        } finally {
            this.__db.i();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> d(final String name) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, name);
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

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo.State e(final String id) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT state FROM workspec WHERE id=?", 1);
        if (id == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, id);
        }
        this.__db.d();
        WorkInfo.State stateF = null;
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            if (cursorB.moveToFirst()) {
                Integer numValueOf = cursorB.isNull(0) ? null : Integer.valueOf(cursorB.getInt(0));
                if (numValueOf != null) {
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    stateF = WorkTypeConverters.f(numValueOf.intValue());
                }
            }
            return stateF;
        } finally {
            cursorB.close();
            roomSQLiteQueryA.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void f(final String id, final long enqueueTime) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfSetLastEnqueuedTime.b();
        supportSQLiteStatementB.I(1, enqueueTime);
        if (id == null) {
            supportSQLiteStatementB.P(2);
        } else {
            supportSQLiteStatementB.s(2, id);
        }
        this.__db.e();
        try {
            supportSQLiteStatementB.x();
            this.__db.D();
        } finally {
            this.__db.i();
            this.__preparedStmtOfSetLastEnqueuedTime.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> g(final String tag) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, tag);
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

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<Data> h(final String id) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
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
                arrayList.add(Data.g(cursorB.isNull(0) ? null : cursorB.getBlob(0)));
            }
            return arrayList;
        } finally {
            cursorB.close();
            roomSQLiteQueryA.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> i(final String name) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, name);
        }
        this.__db.d();
        this.__db.e();
        try {
            Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, true, null);
            try {
                ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
                ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(0);
                    if (arrayMap.get(string) == null) {
                        arrayMap.put(string, new ArrayList<>());
                    }
                    String string2 = cursorB.getString(0);
                    if (arrayMap2.get(string2) == null) {
                        arrayMap2.put(string2, new ArrayList<>());
                    }
                }
                cursorB.moveToPosition(-1);
                D(arrayMap);
                C(arrayMap2);
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string3 = cursorB.isNull(0) ? null : cursorB.getString(0);
                    WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(1));
                    Data dataG = Data.g(cursorB.isNull(2) ? null : cursorB.getBlob(2));
                    int i10 = cursorB.getInt(3);
                    int i11 = cursorB.getInt(4);
                    ArrayList<String> arrayList2 = arrayMap.get(cursorB.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<String> arrayList3 = arrayList2;
                    ArrayList<Data> arrayList4 = arrayMap2.get(cursorB.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, stateF, dataG, i10, i11, arrayList3, arrayList4));
                }
                this.__db.D();
                cursorB.close();
                roomSQLiteQueryA.release();
                this.__db.i();
                return arrayList;
            } catch (Throwable th) {
                cursorB.close();
                roomSQLiteQueryA.release();
                throw th;
            }
        } catch (Throwable th2) {
            this.__db.i();
            throw th2;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> j(final int maxLimit) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?", 1);
        roomSQLiteQueryA.I(1, maxLimit);
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iE = CursorUtil.e(cursorB, "id");
            int iE2 = CursorUtil.e(cursorB, "state");
            int iE3 = CursorUtil.e(cursorB, "worker_class_name");
            int iE4 = CursorUtil.e(cursorB, "input_merger_class_name");
            int iE5 = CursorUtil.e(cursorB, "input");
            int iE6 = CursorUtil.e(cursorB, "output");
            int iE7 = CursorUtil.e(cursorB, "initial_delay");
            int iE8 = CursorUtil.e(cursorB, "interval_duration");
            int iE9 = CursorUtil.e(cursorB, "flex_duration");
            int iE10 = CursorUtil.e(cursorB, "run_attempt_count");
            int iE11 = CursorUtil.e(cursorB, "backoff_policy");
            int iE12 = CursorUtil.e(cursorB, "backoff_delay_duration");
            int iE13 = CursorUtil.e(cursorB, "last_enqueue_time");
            int iE14 = CursorUtil.e(cursorB, "minimum_retention_duration");
            roomSQLiteQuery = roomSQLiteQueryA;
            try {
                int iE15 = CursorUtil.e(cursorB, "schedule_requested_at");
                int iE16 = CursorUtil.e(cursorB, "run_in_foreground");
                int iE17 = CursorUtil.e(cursorB, "out_of_quota_policy");
                int iE18 = CursorUtil.e(cursorB, "period_count");
                int iE19 = CursorUtil.e(cursorB, "generation");
                int iE20 = CursorUtil.e(cursorB, "required_network_type");
                int iE21 = CursorUtil.e(cursorB, "requires_charging");
                int iE22 = CursorUtil.e(cursorB, "requires_device_idle");
                int iE23 = CursorUtil.e(cursorB, "requires_battery_not_low");
                int iE24 = CursorUtil.e(cursorB, "requires_storage_not_low");
                int iE25 = CursorUtil.e(cursorB, "trigger_content_update_delay");
                int iE26 = CursorUtil.e(cursorB, "trigger_max_content_delay");
                int iE27 = CursorUtil.e(cursorB, "content_uri_triggers");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.isNull(iE) ? null : cursorB.getString(iE);
                    WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(iE2));
                    String string2 = cursorB.isNull(iE3) ? null : cursorB.getString(iE3);
                    String string3 = cursorB.isNull(iE4) ? null : cursorB.getString(iE4);
                    Data dataG = Data.g(cursorB.isNull(iE5) ? null : cursorB.getBlob(iE5));
                    Data dataG2 = Data.g(cursorB.isNull(iE6) ? null : cursorB.getBlob(iE6));
                    long j6 = cursorB.getLong(iE7);
                    long j10 = cursorB.getLong(iE8);
                    long j11 = cursorB.getLong(iE9);
                    int i11 = cursorB.getInt(iE10);
                    BackoffPolicy backoffPolicyC = WorkTypeConverters.c(cursorB.getInt(iE11));
                    long j12 = cursorB.getLong(iE12);
                    long j13 = cursorB.getLong(iE13);
                    int i12 = i10;
                    long j14 = cursorB.getLong(i12);
                    int i13 = iE;
                    int i14 = iE15;
                    long j15 = cursorB.getLong(i14);
                    iE15 = i14;
                    iE16 = iE16;
                    boolean z6 = cursorB.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = WorkTypeConverters.e(cursorB.getInt(iE17));
                    iE17 = iE17;
                    int i15 = iE18;
                    int i16 = cursorB.getInt(i15);
                    iE18 = i15;
                    int i17 = iE19;
                    int i18 = cursorB.getInt(i17);
                    iE19 = i17;
                    int i19 = iE20;
                    NetworkType networkTypeD = WorkTypeConverters.d(cursorB.getInt(i19));
                    iE20 = i19;
                    iE21 = iE21;
                    boolean z10 = cursorB.getInt(iE21) != 0;
                    boolean z11 = cursorB.getInt(iE22) != 0;
                    boolean z12 = cursorB.getInt(iE23) != 0;
                    boolean z13 = cursorB.getInt(iE24) != 0;
                    long j16 = cursorB.getLong(iE25);
                    iE25 = iE25;
                    int i20 = iE26;
                    long j17 = cursorB.getLong(i20);
                    iE26 = i20;
                    int i21 = iE27;
                    iE27 = i21;
                    arrayList.add(new WorkSpec(string, stateF, string2, string3, dataG, dataG2, j6, j10, j11, new Constraints(networkTypeD, z10, z11, z12, z13, j16, j17, WorkTypeConverters.b(cursorB.isNull(i21) ? null : cursorB.getBlob(i21))), i11, backoffPolicyC, j12, j13, j14, j15, z6, outOfQuotaPolicyE, i16, i18));
                    iE = i13;
                    i10 = i12;
                }
                cursorB.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryA;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int k(final WorkInfo.State state, final String id) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfSetState.b();
        supportSQLiteStatementB.I(1, WorkTypeConverters.j(state));
        if (id == null) {
            supportSQLiteStatementB.P(2);
        } else {
            supportSQLiteStatementB.s(2, id);
        }
        this.__db.e();
        try {
            int iX = supportSQLiteStatementB.x();
            this.__db.D();
            return iX;
        } finally {
            this.__db.i();
            this.__preparedStmtOfSetState.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> l() {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
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

    @Override // androidx.work.impl.model.WorkSpecDao
    public boolean m() {
        boolean z6 = false;
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            if (cursorB.moveToFirst() && cursorB.getInt(0) != 0) {
                z6 = true;
            }
            return z6;
        } finally {
            cursorB.close();
            roomSQLiteQueryA.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int n(final String id) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfResetWorkSpecRunAttemptCount.b();
        if (id == null) {
            supportSQLiteStatementB.P(1);
        } else {
            supportSQLiteStatementB.s(1, id);
        }
        this.__db.e();
        try {
            int iX = supportSQLiteStatementB.x();
            this.__db.D();
            return iX;
        } finally {
            this.__db.i();
            this.__preparedStmtOfResetWorkSpecRunAttemptCount.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void o(final String id) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfIncrementPeriodCount.b();
        if (id == null) {
            supportSQLiteStatementB.P(1);
        } else {
            supportSQLiteStatementB.s(1, id);
        }
        this.__db.e();
        try {
            supportSQLiteStatementB.x();
            this.__db.D();
        } finally {
            this.__db.i();
            this.__preparedStmtOfIncrementPeriodCount.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> p(final long startingAt) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC", 1);
        roomSQLiteQueryA.I(1, startingAt);
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iE = CursorUtil.e(cursorB, "id");
            int iE2 = CursorUtil.e(cursorB, "state");
            int iE3 = CursorUtil.e(cursorB, "worker_class_name");
            int iE4 = CursorUtil.e(cursorB, "input_merger_class_name");
            int iE5 = CursorUtil.e(cursorB, "input");
            int iE6 = CursorUtil.e(cursorB, "output");
            int iE7 = CursorUtil.e(cursorB, "initial_delay");
            int iE8 = CursorUtil.e(cursorB, "interval_duration");
            int iE9 = CursorUtil.e(cursorB, "flex_duration");
            int iE10 = CursorUtil.e(cursorB, "run_attempt_count");
            int iE11 = CursorUtil.e(cursorB, "backoff_policy");
            int iE12 = CursorUtil.e(cursorB, "backoff_delay_duration");
            int iE13 = CursorUtil.e(cursorB, "last_enqueue_time");
            int iE14 = CursorUtil.e(cursorB, "minimum_retention_duration");
            roomSQLiteQuery = roomSQLiteQueryA;
            try {
                int iE15 = CursorUtil.e(cursorB, "schedule_requested_at");
                int iE16 = CursorUtil.e(cursorB, "run_in_foreground");
                int iE17 = CursorUtil.e(cursorB, "out_of_quota_policy");
                int iE18 = CursorUtil.e(cursorB, "period_count");
                int iE19 = CursorUtil.e(cursorB, "generation");
                int iE20 = CursorUtil.e(cursorB, "required_network_type");
                int iE21 = CursorUtil.e(cursorB, "requires_charging");
                int iE22 = CursorUtil.e(cursorB, "requires_device_idle");
                int iE23 = CursorUtil.e(cursorB, "requires_battery_not_low");
                int iE24 = CursorUtil.e(cursorB, "requires_storage_not_low");
                int iE25 = CursorUtil.e(cursorB, "trigger_content_update_delay");
                int iE26 = CursorUtil.e(cursorB, "trigger_max_content_delay");
                int iE27 = CursorUtil.e(cursorB, "content_uri_triggers");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.isNull(iE) ? null : cursorB.getString(iE);
                    WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(iE2));
                    String string2 = cursorB.isNull(iE3) ? null : cursorB.getString(iE3);
                    String string3 = cursorB.isNull(iE4) ? null : cursorB.getString(iE4);
                    Data dataG = Data.g(cursorB.isNull(iE5) ? null : cursorB.getBlob(iE5));
                    Data dataG2 = Data.g(cursorB.isNull(iE6) ? null : cursorB.getBlob(iE6));
                    long j6 = cursorB.getLong(iE7);
                    long j10 = cursorB.getLong(iE8);
                    long j11 = cursorB.getLong(iE9);
                    int i11 = cursorB.getInt(iE10);
                    BackoffPolicy backoffPolicyC = WorkTypeConverters.c(cursorB.getInt(iE11));
                    long j12 = cursorB.getLong(iE12);
                    long j13 = cursorB.getLong(iE13);
                    int i12 = i10;
                    long j14 = cursorB.getLong(i12);
                    int i13 = iE;
                    int i14 = iE15;
                    long j15 = cursorB.getLong(i14);
                    iE15 = i14;
                    iE16 = iE16;
                    boolean z6 = cursorB.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = WorkTypeConverters.e(cursorB.getInt(iE17));
                    iE17 = iE17;
                    int i15 = iE18;
                    int i16 = cursorB.getInt(i15);
                    iE18 = i15;
                    int i17 = iE19;
                    int i18 = cursorB.getInt(i17);
                    iE19 = i17;
                    int i19 = iE20;
                    NetworkType networkTypeD = WorkTypeConverters.d(cursorB.getInt(i19));
                    iE20 = i19;
                    iE21 = iE21;
                    boolean z10 = cursorB.getInt(iE21) != 0;
                    boolean z11 = cursorB.getInt(iE22) != 0;
                    boolean z12 = cursorB.getInt(iE23) != 0;
                    boolean z13 = cursorB.getInt(iE24) != 0;
                    long j16 = cursorB.getLong(iE25);
                    iE25 = iE25;
                    int i20 = iE26;
                    long j17 = cursorB.getLong(i20);
                    iE26 = i20;
                    int i21 = iE27;
                    iE27 = i21;
                    arrayList.add(new WorkSpec(string, stateF, string2, string3, dataG, dataG2, j6, j10, j11, new Constraints(networkTypeD, z10, z11, z12, z13, j16, j17, WorkTypeConverters.b(cursorB.isNull(i21) ? null : cursorB.getBlob(i21))), i11, backoffPolicyC, j12, j13, j14, j15, z6, outOfQuotaPolicyE, i16, i18));
                    iE = i13;
                    i10 = i12;
                }
                cursorB.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryA;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> q() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iE = CursorUtil.e(cursorB, "id");
            int iE2 = CursorUtil.e(cursorB, "state");
            int iE3 = CursorUtil.e(cursorB, "worker_class_name");
            int iE4 = CursorUtil.e(cursorB, "input_merger_class_name");
            int iE5 = CursorUtil.e(cursorB, "input");
            int iE6 = CursorUtil.e(cursorB, "output");
            int iE7 = CursorUtil.e(cursorB, "initial_delay");
            int iE8 = CursorUtil.e(cursorB, "interval_duration");
            int iE9 = CursorUtil.e(cursorB, "flex_duration");
            int iE10 = CursorUtil.e(cursorB, "run_attempt_count");
            int iE11 = CursorUtil.e(cursorB, "backoff_policy");
            int iE12 = CursorUtil.e(cursorB, "backoff_delay_duration");
            int iE13 = CursorUtil.e(cursorB, "last_enqueue_time");
            int iE14 = CursorUtil.e(cursorB, "minimum_retention_duration");
            roomSQLiteQuery = roomSQLiteQueryA;
            try {
                int iE15 = CursorUtil.e(cursorB, "schedule_requested_at");
                int iE16 = CursorUtil.e(cursorB, "run_in_foreground");
                int iE17 = CursorUtil.e(cursorB, "out_of_quota_policy");
                int iE18 = CursorUtil.e(cursorB, "period_count");
                int iE19 = CursorUtil.e(cursorB, "generation");
                int iE20 = CursorUtil.e(cursorB, "required_network_type");
                int iE21 = CursorUtil.e(cursorB, "requires_charging");
                int iE22 = CursorUtil.e(cursorB, "requires_device_idle");
                int iE23 = CursorUtil.e(cursorB, "requires_battery_not_low");
                int iE24 = CursorUtil.e(cursorB, "requires_storage_not_low");
                int iE25 = CursorUtil.e(cursorB, "trigger_content_update_delay");
                int iE26 = CursorUtil.e(cursorB, "trigger_max_content_delay");
                int iE27 = CursorUtil.e(cursorB, "content_uri_triggers");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.isNull(iE) ? null : cursorB.getString(iE);
                    WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(iE2));
                    String string2 = cursorB.isNull(iE3) ? null : cursorB.getString(iE3);
                    String string3 = cursorB.isNull(iE4) ? null : cursorB.getString(iE4);
                    Data dataG = Data.g(cursorB.isNull(iE5) ? null : cursorB.getBlob(iE5));
                    Data dataG2 = Data.g(cursorB.isNull(iE6) ? null : cursorB.getBlob(iE6));
                    long j6 = cursorB.getLong(iE7);
                    long j10 = cursorB.getLong(iE8);
                    long j11 = cursorB.getLong(iE9);
                    int i11 = cursorB.getInt(iE10);
                    BackoffPolicy backoffPolicyC = WorkTypeConverters.c(cursorB.getInt(iE11));
                    long j12 = cursorB.getLong(iE12);
                    long j13 = cursorB.getLong(iE13);
                    int i12 = i10;
                    long j14 = cursorB.getLong(i12);
                    int i13 = iE;
                    int i14 = iE15;
                    long j15 = cursorB.getLong(i14);
                    iE15 = i14;
                    iE16 = iE16;
                    boolean z6 = cursorB.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = WorkTypeConverters.e(cursorB.getInt(iE17));
                    iE17 = iE17;
                    int i15 = iE18;
                    int i16 = cursorB.getInt(i15);
                    iE18 = i15;
                    int i17 = iE19;
                    int i18 = cursorB.getInt(i17);
                    iE19 = i17;
                    int i19 = iE20;
                    NetworkType networkTypeD = WorkTypeConverters.d(cursorB.getInt(i19));
                    iE20 = i19;
                    iE21 = iE21;
                    boolean z10 = cursorB.getInt(iE21) != 0;
                    boolean z11 = cursorB.getInt(iE22) != 0;
                    boolean z12 = cursorB.getInt(iE23) != 0;
                    boolean z13 = cursorB.getInt(iE24) != 0;
                    long j16 = cursorB.getLong(iE25);
                    iE25 = iE25;
                    int i20 = iE26;
                    long j17 = cursorB.getLong(i20);
                    iE26 = i20;
                    int i21 = iE27;
                    iE27 = i21;
                    arrayList.add(new WorkSpec(string, stateF, string2, string3, dataG, dataG2, j6, j10, j11, new Constraints(networkTypeD, z10, z11, z12, z13, j16, j17, WorkTypeConverters.b(cursorB.isNull(i21) ? null : cursorB.getBlob(i21))), i11, backoffPolicyC, j12, j13, j14, j15, z6, outOfQuotaPolicyE, i16, i18));
                    iE = i13;
                    i10 = i12;
                }
                cursorB.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryA;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec.WorkInfoPojo r(String str) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id=?", 1);
        if (str == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, str);
        }
        this.__db.d();
        this.__db.e();
        try {
            WorkSpec.WorkInfoPojo workInfoPojo = null;
            byte[] blob = null;
            Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, true, null);
            try {
                ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
                ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(0);
                    if (arrayMap.get(string) == null) {
                        arrayMap.put(string, new ArrayList<>());
                    }
                    String string2 = cursorB.getString(0);
                    if (arrayMap2.get(string2) == null) {
                        arrayMap2.put(string2, new ArrayList<>());
                    }
                }
                cursorB.moveToPosition(-1);
                D(arrayMap);
                C(arrayMap2);
                if (cursorB.moveToFirst()) {
                    String string3 = cursorB.isNull(0) ? null : cursorB.getString(0);
                    WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(1));
                    if (!cursorB.isNull(2)) {
                        blob = cursorB.getBlob(2);
                    }
                    Data dataG = Data.g(blob);
                    int i10 = cursorB.getInt(3);
                    int i11 = cursorB.getInt(4);
                    ArrayList<String> arrayList = arrayMap.get(cursorB.getString(0));
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    ArrayList<String> arrayList2 = arrayList;
                    ArrayList<Data> arrayList3 = arrayMap2.get(cursorB.getString(0));
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList<>();
                    }
                    workInfoPojo = new WorkSpec.WorkInfoPojo(string3, stateF, dataG, i10, i11, arrayList2, arrayList3);
                }
                this.__db.D();
                cursorB.close();
                roomSQLiteQueryA.release();
                this.__db.i();
                return workInfoPojo;
            } catch (Throwable th) {
                cursorB.close();
                roomSQLiteQueryA.release();
                throw th;
            }
        } catch (Throwable th2) {
            this.__db.i();
            throw th2;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec s(final String id) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        WorkSpec workSpec;
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT * FROM workspec WHERE id=?", 1);
        if (id == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, id);
        }
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iE = CursorUtil.e(cursorB, "id");
            int iE2 = CursorUtil.e(cursorB, "state");
            int iE3 = CursorUtil.e(cursorB, "worker_class_name");
            int iE4 = CursorUtil.e(cursorB, "input_merger_class_name");
            int iE5 = CursorUtil.e(cursorB, "input");
            int iE6 = CursorUtil.e(cursorB, "output");
            int iE7 = CursorUtil.e(cursorB, "initial_delay");
            int iE8 = CursorUtil.e(cursorB, "interval_duration");
            int iE9 = CursorUtil.e(cursorB, "flex_duration");
            int iE10 = CursorUtil.e(cursorB, "run_attempt_count");
            int iE11 = CursorUtil.e(cursorB, "backoff_policy");
            int iE12 = CursorUtil.e(cursorB, "backoff_delay_duration");
            int iE13 = CursorUtil.e(cursorB, "last_enqueue_time");
            int iE14 = CursorUtil.e(cursorB, "minimum_retention_duration");
            roomSQLiteQuery = roomSQLiteQueryA;
            try {
                int iE15 = CursorUtil.e(cursorB, "schedule_requested_at");
                int iE16 = CursorUtil.e(cursorB, "run_in_foreground");
                int iE17 = CursorUtil.e(cursorB, "out_of_quota_policy");
                int iE18 = CursorUtil.e(cursorB, "period_count");
                int iE19 = CursorUtil.e(cursorB, "generation");
                int iE20 = CursorUtil.e(cursorB, "required_network_type");
                int iE21 = CursorUtil.e(cursorB, "requires_charging");
                int iE22 = CursorUtil.e(cursorB, "requires_device_idle");
                int iE23 = CursorUtil.e(cursorB, "requires_battery_not_low");
                int iE24 = CursorUtil.e(cursorB, "requires_storage_not_low");
                int iE25 = CursorUtil.e(cursorB, "trigger_content_update_delay");
                int iE26 = CursorUtil.e(cursorB, "trigger_max_content_delay");
                int iE27 = CursorUtil.e(cursorB, "content_uri_triggers");
                if (cursorB.moveToFirst()) {
                    workSpec = new WorkSpec(cursorB.isNull(iE) ? null : cursorB.getString(iE), WorkTypeConverters.f(cursorB.getInt(iE2)), cursorB.isNull(iE3) ? null : cursorB.getString(iE3), cursorB.isNull(iE4) ? null : cursorB.getString(iE4), Data.g(cursorB.isNull(iE5) ? null : cursorB.getBlob(iE5)), Data.g(cursorB.isNull(iE6) ? null : cursorB.getBlob(iE6)), cursorB.getLong(iE7), cursorB.getLong(iE8), cursorB.getLong(iE9), new Constraints(WorkTypeConverters.d(cursorB.getInt(iE20)), cursorB.getInt(iE21) != 0, cursorB.getInt(iE22) != 0, cursorB.getInt(iE23) != 0, cursorB.getInt(iE24) != 0, cursorB.getLong(iE25), cursorB.getLong(iE26), WorkTypeConverters.b(cursorB.isNull(iE27) ? null : cursorB.getBlob(iE27))), cursorB.getInt(iE10), WorkTypeConverters.c(cursorB.getInt(iE11)), cursorB.getLong(iE12), cursorB.getLong(iE13), cursorB.getLong(iE14), cursorB.getLong(iE15), cursorB.getInt(iE16) != 0, WorkTypeConverters.e(cursorB.getInt(iE17)), cursorB.getInt(iE18), cursorB.getInt(iE19));
                } else {
                    workSpec = null;
                }
                cursorB.close();
                roomSQLiteQuery.release();
                return workSpec;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryA;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int t() {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfResetScheduledState.b();
        this.__db.e();
        try {
            int iX = supportSQLiteStatementB.x();
            this.__db.D();
            return iX;
        } finally {
            this.__db.i();
            this.__preparedStmtOfResetScheduledState.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int u(final String id, final long startTime) {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfMarkWorkSpecScheduled.b();
        supportSQLiteStatementB.I(1, startTime);
        if (id == null) {
            supportSQLiteStatementB.P(2);
        } else {
            supportSQLiteStatementB.s(2, id);
        }
        this.__db.e();
        try {
            int iX = supportSQLiteStatementB.x();
            this.__db.D();
            return iX;
        } finally {
            this.__db.i();
            this.__preparedStmtOfMarkWorkSpecScheduled.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.IdAndState> v(final String name) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, name);
        }
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                arrayList.add(new WorkSpec.IdAndState(cursorB.isNull(0) ? null : cursorB.getString(0), WorkTypeConverters.f(cursorB.getInt(1))));
            }
            return arrayList;
        } finally {
            cursorB.close();
            roomSQLiteQueryA.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> w(final int schedulerLimit) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        roomSQLiteQueryA.I(1, schedulerLimit);
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iE = CursorUtil.e(cursorB, "id");
            int iE2 = CursorUtil.e(cursorB, "state");
            int iE3 = CursorUtil.e(cursorB, "worker_class_name");
            int iE4 = CursorUtil.e(cursorB, "input_merger_class_name");
            int iE5 = CursorUtil.e(cursorB, "input");
            int iE6 = CursorUtil.e(cursorB, "output");
            int iE7 = CursorUtil.e(cursorB, "initial_delay");
            int iE8 = CursorUtil.e(cursorB, "interval_duration");
            int iE9 = CursorUtil.e(cursorB, "flex_duration");
            int iE10 = CursorUtil.e(cursorB, "run_attempt_count");
            int iE11 = CursorUtil.e(cursorB, "backoff_policy");
            int iE12 = CursorUtil.e(cursorB, "backoff_delay_duration");
            int iE13 = CursorUtil.e(cursorB, "last_enqueue_time");
            int iE14 = CursorUtil.e(cursorB, "minimum_retention_duration");
            roomSQLiteQuery = roomSQLiteQueryA;
            try {
                int iE15 = CursorUtil.e(cursorB, "schedule_requested_at");
                int iE16 = CursorUtil.e(cursorB, "run_in_foreground");
                int iE17 = CursorUtil.e(cursorB, "out_of_quota_policy");
                int iE18 = CursorUtil.e(cursorB, "period_count");
                int iE19 = CursorUtil.e(cursorB, "generation");
                int iE20 = CursorUtil.e(cursorB, "required_network_type");
                int iE21 = CursorUtil.e(cursorB, "requires_charging");
                int iE22 = CursorUtil.e(cursorB, "requires_device_idle");
                int iE23 = CursorUtil.e(cursorB, "requires_battery_not_low");
                int iE24 = CursorUtil.e(cursorB, "requires_storage_not_low");
                int iE25 = CursorUtil.e(cursorB, "trigger_content_update_delay");
                int iE26 = CursorUtil.e(cursorB, "trigger_max_content_delay");
                int iE27 = CursorUtil.e(cursorB, "content_uri_triggers");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.isNull(iE) ? null : cursorB.getString(iE);
                    WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(iE2));
                    String string2 = cursorB.isNull(iE3) ? null : cursorB.getString(iE3);
                    String string3 = cursorB.isNull(iE4) ? null : cursorB.getString(iE4);
                    Data dataG = Data.g(cursorB.isNull(iE5) ? null : cursorB.getBlob(iE5));
                    Data dataG2 = Data.g(cursorB.isNull(iE6) ? null : cursorB.getBlob(iE6));
                    long j6 = cursorB.getLong(iE7);
                    long j10 = cursorB.getLong(iE8);
                    long j11 = cursorB.getLong(iE9);
                    int i11 = cursorB.getInt(iE10);
                    BackoffPolicy backoffPolicyC = WorkTypeConverters.c(cursorB.getInt(iE11));
                    long j12 = cursorB.getLong(iE12);
                    long j13 = cursorB.getLong(iE13);
                    int i12 = i10;
                    long j14 = cursorB.getLong(i12);
                    int i13 = iE;
                    int i14 = iE15;
                    long j15 = cursorB.getLong(i14);
                    iE15 = i14;
                    iE16 = iE16;
                    boolean z6 = cursorB.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = WorkTypeConverters.e(cursorB.getInt(iE17));
                    iE17 = iE17;
                    int i15 = iE18;
                    int i16 = cursorB.getInt(i15);
                    iE18 = i15;
                    int i17 = iE19;
                    int i18 = cursorB.getInt(i17);
                    iE19 = i17;
                    int i19 = iE20;
                    NetworkType networkTypeD = WorkTypeConverters.d(cursorB.getInt(i19));
                    iE20 = i19;
                    iE21 = iE21;
                    boolean z10 = cursorB.getInt(iE21) != 0;
                    boolean z11 = cursorB.getInt(iE22) != 0;
                    boolean z12 = cursorB.getInt(iE23) != 0;
                    boolean z13 = cursorB.getInt(iE24) != 0;
                    long j16 = cursorB.getLong(iE25);
                    iE25 = iE25;
                    int i20 = iE26;
                    long j17 = cursorB.getLong(i20);
                    iE26 = i20;
                    int i21 = iE27;
                    iE27 = i21;
                    arrayList.add(new WorkSpec(string, stateF, string2, string3, dataG, dataG2, j6, j10, j11, new Constraints(networkTypeD, z10, z11, z12, z13, j16, j17, WorkTypeConverters.b(cursorB.isNull(i21) ? null : cursorB.getBlob(i21))), i11, backoffPolicyC, j12, j13, j14, j15, z6, outOfQuotaPolicyE, i16, i18));
                    iE = i13;
                    i10 = i12;
                }
                cursorB.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryA;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void x(final String id, final Data output) throws Throwable {
        this.__db.d();
        SupportSQLiteStatement supportSQLiteStatementB = this.__preparedStmtOfSetOutput.b();
        byte[] bArrK = Data.k(output);
        if (bArrK == null) {
            supportSQLiteStatementB.P(1);
        } else {
            supportSQLiteStatementB.K(1, bArrK);
        }
        if (id == null) {
            supportSQLiteStatementB.P(2);
        } else {
            supportSQLiteStatementB.s(2, id);
        }
        this.__db.e();
        try {
            supportSQLiteStatementB.x();
            this.__db.D();
        } finally {
            this.__db.i();
            this.__preparedStmtOfSetOutput.h(supportSQLiteStatementB);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> y() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT * FROM workspec WHERE state=1", 0);
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iE = CursorUtil.e(cursorB, "id");
            int iE2 = CursorUtil.e(cursorB, "state");
            int iE3 = CursorUtil.e(cursorB, "worker_class_name");
            int iE4 = CursorUtil.e(cursorB, "input_merger_class_name");
            int iE5 = CursorUtil.e(cursorB, "input");
            int iE6 = CursorUtil.e(cursorB, "output");
            int iE7 = CursorUtil.e(cursorB, "initial_delay");
            int iE8 = CursorUtil.e(cursorB, "interval_duration");
            int iE9 = CursorUtil.e(cursorB, "flex_duration");
            int iE10 = CursorUtil.e(cursorB, "run_attempt_count");
            int iE11 = CursorUtil.e(cursorB, "backoff_policy");
            int iE12 = CursorUtil.e(cursorB, "backoff_delay_duration");
            int iE13 = CursorUtil.e(cursorB, "last_enqueue_time");
            int iE14 = CursorUtil.e(cursorB, "minimum_retention_duration");
            roomSQLiteQuery = roomSQLiteQueryA;
            try {
                int iE15 = CursorUtil.e(cursorB, "schedule_requested_at");
                int iE16 = CursorUtil.e(cursorB, "run_in_foreground");
                int iE17 = CursorUtil.e(cursorB, "out_of_quota_policy");
                int iE18 = CursorUtil.e(cursorB, "period_count");
                int iE19 = CursorUtil.e(cursorB, "generation");
                int iE20 = CursorUtil.e(cursorB, "required_network_type");
                int iE21 = CursorUtil.e(cursorB, "requires_charging");
                int iE22 = CursorUtil.e(cursorB, "requires_device_idle");
                int iE23 = CursorUtil.e(cursorB, "requires_battery_not_low");
                int iE24 = CursorUtil.e(cursorB, "requires_storage_not_low");
                int iE25 = CursorUtil.e(cursorB, "trigger_content_update_delay");
                int iE26 = CursorUtil.e(cursorB, "trigger_max_content_delay");
                int iE27 = CursorUtil.e(cursorB, "content_uri_triggers");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string = cursorB.isNull(iE) ? null : cursorB.getString(iE);
                    WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(iE2));
                    String string2 = cursorB.isNull(iE3) ? null : cursorB.getString(iE3);
                    String string3 = cursorB.isNull(iE4) ? null : cursorB.getString(iE4);
                    Data dataG = Data.g(cursorB.isNull(iE5) ? null : cursorB.getBlob(iE5));
                    Data dataG2 = Data.g(cursorB.isNull(iE6) ? null : cursorB.getBlob(iE6));
                    long j6 = cursorB.getLong(iE7);
                    long j10 = cursorB.getLong(iE8);
                    long j11 = cursorB.getLong(iE9);
                    int i11 = cursorB.getInt(iE10);
                    BackoffPolicy backoffPolicyC = WorkTypeConverters.c(cursorB.getInt(iE11));
                    long j12 = cursorB.getLong(iE12);
                    long j13 = cursorB.getLong(iE13);
                    int i12 = i10;
                    long j14 = cursorB.getLong(i12);
                    int i13 = iE;
                    int i14 = iE15;
                    long j15 = cursorB.getLong(i14);
                    iE15 = i14;
                    iE16 = iE16;
                    boolean z6 = cursorB.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = WorkTypeConverters.e(cursorB.getInt(iE17));
                    iE17 = iE17;
                    int i15 = iE18;
                    int i16 = cursorB.getInt(i15);
                    iE18 = i15;
                    int i17 = iE19;
                    int i18 = cursorB.getInt(i17);
                    iE19 = i17;
                    int i19 = iE20;
                    NetworkType networkTypeD = WorkTypeConverters.d(cursorB.getInt(i19));
                    iE20 = i19;
                    iE21 = iE21;
                    boolean z10 = cursorB.getInt(iE21) != 0;
                    boolean z11 = cursorB.getInt(iE22) != 0;
                    boolean z12 = cursorB.getInt(iE23) != 0;
                    boolean z13 = cursorB.getInt(iE24) != 0;
                    long j16 = cursorB.getLong(iE25);
                    iE25 = iE25;
                    int i20 = iE26;
                    long j17 = cursorB.getLong(i20);
                    iE26 = i20;
                    int i21 = iE27;
                    iE27 = i21;
                    arrayList.add(new WorkSpec(string, stateF, string2, string3, dataG, dataG2, j6, j10, j11, new Constraints(networkTypeD, z10, z11, z12, z13, j16, j17, WorkTypeConverters.b(cursorB.isNull(i21) ? null : cursorB.getBlob(i21))), i11, backoffPolicyC, j12, j13, j14, j15, z6, outOfQuotaPolicyE, i16, i18));
                    iE = i13;
                    i10 = i12;
                }
                cursorB.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorB.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryA;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> z(final String tag) {
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            roomSQLiteQueryA.P(1);
        } else {
            roomSQLiteQueryA.s(1, tag);
        }
        this.__db.d();
        this.__db.e();
        try {
            Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, true, null);
            try {
                ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
                ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(0);
                    if (arrayMap.get(string) == null) {
                        arrayMap.put(string, new ArrayList<>());
                    }
                    String string2 = cursorB.getString(0);
                    if (arrayMap2.get(string2) == null) {
                        arrayMap2.put(string2, new ArrayList<>());
                    }
                }
                cursorB.moveToPosition(-1);
                D(arrayMap);
                C(arrayMap2);
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string3 = cursorB.isNull(0) ? null : cursorB.getString(0);
                    WorkInfo.State stateF = WorkTypeConverters.f(cursorB.getInt(1));
                    Data dataG = Data.g(cursorB.isNull(2) ? null : cursorB.getBlob(2));
                    int i10 = cursorB.getInt(3);
                    int i11 = cursorB.getInt(4);
                    ArrayList<String> arrayList2 = arrayMap.get(cursorB.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<String> arrayList3 = arrayList2;
                    ArrayList<Data> arrayList4 = arrayMap2.get(cursorB.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, stateF, dataG, i10, i11, arrayList3, arrayList4));
                }
                this.__db.D();
                cursorB.close();
                roomSQLiteQueryA.release();
                this.__db.i();
                return arrayList;
            } catch (Throwable th) {
                cursorB.close();
                roomSQLiteQueryA.release();
                throw th;
            }
        } catch (Throwable th2) {
            this.__db.i();
            throw th2;
        }
    }

    public WorkSpecDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfWorkSpec = new EntityInsertionAdapter<WorkSpec>(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public void i(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) throws Throwable {
                String str = workSpec.id;
                if (str == null) {
                    supportSQLiteStatement.P(1);
                } else {
                    supportSQLiteStatement.s(1, str);
                }
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.I(2, WorkTypeConverters.j(workSpec.state));
                String str2 = workSpec.workerClassName;
                if (str2 == null) {
                    supportSQLiteStatement.P(3);
                } else {
                    supportSQLiteStatement.s(3, str2);
                }
                String str3 = workSpec.inputMergerClassName;
                if (str3 == null) {
                    supportSQLiteStatement.P(4);
                } else {
                    supportSQLiteStatement.s(4, str3);
                }
                byte[] bArrK = Data.k(workSpec.input);
                if (bArrK == null) {
                    supportSQLiteStatement.P(5);
                } else {
                    supportSQLiteStatement.K(5, bArrK);
                }
                byte[] bArrK2 = Data.k(workSpec.output);
                if (bArrK2 == null) {
                    supportSQLiteStatement.P(6);
                } else {
                    supportSQLiteStatement.K(6, bArrK2);
                }
                supportSQLiteStatement.I(7, workSpec.initialDelay);
                supportSQLiteStatement.I(8, workSpec.intervalDuration);
                supportSQLiteStatement.I(9, workSpec.flexDuration);
                supportSQLiteStatement.I(10, workSpec.runAttemptCount);
                supportSQLiteStatement.I(11, WorkTypeConverters.a(workSpec.backoffPolicy));
                supportSQLiteStatement.I(12, workSpec.backoffDelayDuration);
                supportSQLiteStatement.I(13, workSpec.lastEnqueueTime);
                supportSQLiteStatement.I(14, workSpec.minimumRetentionDuration);
                supportSQLiteStatement.I(15, workSpec.scheduleRequestedAt);
                supportSQLiteStatement.I(16, workSpec.expedited ? 1L : 0L);
                supportSQLiteStatement.I(17, WorkTypeConverters.h(workSpec.outOfQuotaPolicy));
                supportSQLiteStatement.I(18, workSpec.g());
                supportSQLiteStatement.I(19, workSpec.f());
                Constraints constraints = workSpec.constraints;
                if (constraints == null) {
                    supportSQLiteStatement.P(20);
                    supportSQLiteStatement.P(21);
                    supportSQLiteStatement.P(22);
                    supportSQLiteStatement.P(23);
                    supportSQLiteStatement.P(24);
                    supportSQLiteStatement.P(25);
                    supportSQLiteStatement.P(26);
                    supportSQLiteStatement.P(27);
                    return;
                }
                supportSQLiteStatement.I(20, WorkTypeConverters.g(constraints.d()));
                supportSQLiteStatement.I(21, constraints.g() ? 1L : 0L);
                supportSQLiteStatement.I(22, constraints.h() ? 1L : 0L);
                supportSQLiteStatement.I(23, constraints.f() ? 1L : 0L);
                supportSQLiteStatement.I(24, constraints.i() ? 1L : 0L);
                supportSQLiteStatement.I(25, constraints.b());
                supportSQLiteStatement.I(26, constraints.a());
                byte[] bArrI = WorkTypeConverters.i(constraints.c());
                if (bArrI == null) {
                    supportSQLiteStatement.P(27);
                } else {
                    supportSQLiteStatement.K(27, bArrI);
                }
            }
        };
        this.__updateAdapterOfWorkSpec = new EntityDeletionOrUpdateAdapter<WorkSpec>(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
            }
        };
        this.__preparedStmtOfDelete = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "DELETE FROM workspec WHERE id=?";
            }
        };
        this.__preparedStmtOfSetState = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE workspec SET state=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementPeriodCount = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfSetOutput = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE workspec SET output=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetLastEnqueuedTime = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementWorkSpecRunAttemptCount = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecRunAttemptCount = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.9
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            }
        };
        this.__preparedStmtOfMarkWorkSpecScheduled = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.10
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetScheduledState = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.11
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            }
        };
        this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.12
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            }
        };
        this.__preparedStmtOfIncrementGeneration = new SharedSQLiteStatement(__db) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.13
            @Override // androidx.room.SharedSQLiteStatement
            public String e() {
                return "UPDATE workspec SET generation=generation+1 WHERE id=?";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(final ArrayMap<String, ArrayList<Data>> _map) {
        byte[] blob;
        Set<String> setKeySet = _map.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            ArrayMap<String, ArrayList<Data>> arrayMap = new ArrayMap<>(999);
            int size = _map.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                arrayMap.put(_map.l(i10), _map.p(i10));
                i10++;
                i11++;
                if (i11 == 999) {
                    C(arrayMap);
                    arrayMap = new ArrayMap<>(999);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                C(arrayMap);
                return;
            }
            return;
        }
        StringBuilder sbB = StringUtil.b();
        sbB.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size2 = setKeySet.size();
        StringUtil.a(sbB, size2);
        sbB.append(")");
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a(sbB.toString(), size2);
        int i12 = 1;
        for (String str : setKeySet) {
            if (str == null) {
                roomSQLiteQueryA.P(i12);
            } else {
                roomSQLiteQueryA.s(i12, str);
            }
            i12++;
        }
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iD = CursorUtil.d(cursorB, "work_spec_id");
            if (iD == -1) {
                return;
            }
            while (cursorB.moveToNext()) {
                ArrayList<Data> arrayList = _map.get(cursorB.getString(iD));
                if (arrayList != null) {
                    if (cursorB.isNull(0)) {
                        blob = null;
                    } else {
                        blob = cursorB.getBlob(0);
                    }
                    arrayList.add(Data.g(blob));
                }
            }
        } finally {
            cursorB.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(final ArrayMap<String, ArrayList<String>> _map) {
        String string;
        Set<String> setKeySet = _map.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>(999);
            int size = _map.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                arrayMap.put(_map.l(i10), _map.p(i10));
                i10++;
                i11++;
                if (i11 == 999) {
                    D(arrayMap);
                    arrayMap = new ArrayMap<>(999);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                D(arrayMap);
                return;
            }
            return;
        }
        StringBuilder sbB = StringUtil.b();
        sbB.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size2 = setKeySet.size();
        StringUtil.a(sbB, size2);
        sbB.append(")");
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a(sbB.toString(), size2);
        int i12 = 1;
        for (String str : setKeySet) {
            if (str == null) {
                roomSQLiteQueryA.P(i12);
            } else {
                roomSQLiteQueryA.s(i12, str);
            }
            i12++;
        }
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iD = CursorUtil.d(cursorB, "work_spec_id");
            if (iD == -1) {
                return;
            }
            while (cursorB.moveToNext()) {
                ArrayList<String> arrayList = _map.get(cursorB.getString(iD));
                if (arrayList != null) {
                    if (cursorB.isNull(0)) {
                        string = null;
                    } else {
                        string = cursorB.getString(0);
                    }
                    arrayList.add(string);
                }
            }
        } finally {
            cursorB.close();
        }
    }

    public static List<Class<?>> H() {
        return Collections.emptyList();
    }
}
