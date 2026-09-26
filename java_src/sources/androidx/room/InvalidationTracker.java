package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.collections.x0;
import kotlin.collections.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public class InvalidationTracker {

    @NotNull
    private static final String CREATE_TRACKING_TABLE_SQL = "CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)";

    @NotNull
    private static final String INVALIDATED_COLUMN_NAME = "invalidated";

    @NotNull
    public static final String RESET_UPDATED_TABLES_SQL = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1";

    @NotNull
    public static final String SELECT_UPDATED_TABLES_SQL = "SELECT * FROM room_table_modification_log WHERE invalidated = 1;";

    @NotNull
    private static final String TABLE_ID_COLUMN_NAME = "table_id";

    @NotNull
    private static final String UPDATE_TABLE_NAME = "room_table_modification_log";

    @Nullable
    private AutoCloser autoCloser;

    @Nullable
    private volatile SupportSQLiteStatement cleanupStatement;

    @NotNull
    private final RoomDatabase database;
    private volatile boolean initialized;

    @NotNull
    private final InvalidationLiveDataContainer invalidationLiveDataContainer;

    @Nullable
    private MultiInstanceInvalidationClient multiInstanceInvalidationClient;

    @NotNull
    private final ObservedTableTracker observedTableTracker;

    @GuardedBy
    @NotNull
    private final SafeIterableMap<Observer, ObserverWrapper> observerMap;

    @RestrictTo
    @NotNull
    private final AtomicBoolean pendingRefresh;

    @RestrictTo
    @NotNull
    public final Runnable refreshRunnable;

    @NotNull
    private final Map<String, String> shadowTablesMap;

    @NotNull
    private final Object syncTriggersLock;

    @NotNull
    private final Map<String, Integer> tableIdLookup;

    @NotNull
    private final String[] tablesNames;

    @NotNull
    private final Object trackerLock;

    @NotNull
    private final Map<String, Set<String>> viewTables;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String[] TRIGGERS = {"UPDATE", "DELETE", "INSERT"};

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final void a(@NotNull SupportSQLiteDatabase database) {
            kotlin.jvm.internal.t.j(database, "database");
            if (database.B0()) {
                database.A();
            } else {
                database.u();
            }
        }

        @NotNull
        public final String b(@NotNull String tableName, @NotNull String triggerType) {
            kotlin.jvm.internal.t.j(tableName, "tableName");
            kotlin.jvm.internal.t.j(triggerType, "triggerType");
            return "`room_table_modification_trigger_" + tableName + '_' + triggerType + '`';
        }
    }

    public static final class ObserverWrapper {

        @NotNull
        private final Observer observer;

        @NotNull
        private final Set<String> singleTableSet;

        @NotNull
        private final int[] tableIds;

        @NotNull
        private final String[] tableNames;

        @NotNull
        public final int[] a() {
            return this.tableIds;
        }

        public final void b(@NotNull Set<Integer> invalidatedTablesIds) {
            Set<String> setE;
            kotlin.jvm.internal.t.j(invalidatedTablesIds, "invalidatedTablesIds");
            int[] iArr = this.tableIds;
            int length = iArr.length;
            if (length != 0) {
                int i10 = 0;
                if (length != 1) {
                    Set setB = x0.b();
                    int[] iArr2 = this.tableIds;
                    int length2 = iArr2.length;
                    int i11 = 0;
                    while (i10 < length2) {
                        int i12 = i11 + 1;
                        if (invalidatedTablesIds.contains(Integer.valueOf(iArr2[i10]))) {
                            setB.add(this.tableNames[i11]);
                        }
                        i10++;
                        i11 = i12;
                    }
                    setE = x0.a(setB);
                } else {
                    setE = invalidatedTablesIds.contains(Integer.valueOf(iArr[0])) ? this.singleTableSet : y0.e();
                }
            } else {
                setE = y0.e();
            }
            if (!setE.isEmpty()) {
                this.observer.c(setE);
            }
        }

        public ObserverWrapper(@NotNull Observer observer, @NotNull int[] tableIds, @NotNull String[] tableNames) {
            boolean z6;
            kotlin.jvm.internal.t.j(observer, "observer");
            kotlin.jvm.internal.t.j(tableIds, "tableIds");
            kotlin.jvm.internal.t.j(tableNames, "tableNames");
            this.observer = observer;
            this.tableIds = tableIds;
            this.tableNames = tableNames;
            if (tableNames.length == 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.singleTableSet = z6 ^ true ? x0.d(tableNames[0]) : y0.e();
            if (tableIds.length == tableNames.length) {
            } else {
                throw new IllegalStateException("Check failed.".toString());
            }
        }

        public final void c(@NotNull String[] tables) {
            Set<String> setE;
            kotlin.jvm.internal.t.j(tables, "tables");
            int length = this.tableNames.length;
            if (length == 0) {
                setE = y0.e();
            } else if (length != 1) {
                Set setB = x0.b();
                for (String str : tables) {
                    for (String str2 : this.tableNames) {
                        if (kotlin.text.t.w(str2, str, true)) {
                            setB.add(str2);
                        }
                    }
                }
                setE = x0.a(setB);
            } else {
                int length2 = tables.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length2) {
                        setE = y0.e();
                        break;
                    } else {
                        if (kotlin.text.t.w(tables[i10], this.tableNames[0], true)) {
                            setE = this.singleTableSet;
                            break;
                        }
                        i10++;
                    }
                }
            }
            if (!setE.isEmpty()) {
                this.observer.c(setE);
            }
        }
    }

    @RestrictTo
    public InvalidationTracker(@NotNull RoomDatabase database, @NotNull Map<String, String> shadowTablesMap, @NotNull Map<String, Set<String>> viewTables, @NotNull String... tableNames) {
        String lowerCase;
        kotlin.jvm.internal.t.j(database, "database");
        kotlin.jvm.internal.t.j(shadowTablesMap, "shadowTablesMap");
        kotlin.jvm.internal.t.j(viewTables, "viewTables");
        kotlin.jvm.internal.t.j(tableNames, "tableNames");
        this.database = database;
        this.shadowTablesMap = shadowTablesMap;
        this.viewTables = viewTables;
        this.pendingRefresh = new AtomicBoolean(false);
        this.observedTableTracker = new ObservedTableTracker(tableNames.length);
        this.invalidationLiveDataContainer = new InvalidationLiveDataContainer(database);
        this.observerMap = new SafeIterableMap<>();
        this.syncTriggersLock = new Object();
        this.trackerLock = new Object();
        this.tableIdLookup = new LinkedHashMap();
        int length = tableNames.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            String str = tableNames[i10];
            Locale US = Locale.US;
            kotlin.jvm.internal.t.i(US, "US");
            String lowerCase2 = str.toLowerCase(US);
            kotlin.jvm.internal.t.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            this.tableIdLookup.put(lowerCase2, Integer.valueOf(i10));
            String str2 = this.shadowTablesMap.get(tableNames[i10]);
            if (str2 != null) {
                kotlin.jvm.internal.t.i(US, "US");
                lowerCase = str2.toLowerCase(US);
                kotlin.jvm.internal.t.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr[i10] = lowerCase2;
        }
        this.tablesNames = strArr;
        for (Map.Entry<String, String> entry : this.shadowTablesMap.entrySet()) {
            String value = entry.getValue();
            Locale US2 = Locale.US;
            kotlin.jvm.internal.t.i(US2, "US");
            String lowerCase3 = value.toLowerCase(US2);
            kotlin.jvm.internal.t.i(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
            if (this.tableIdLookup.containsKey(lowerCase3)) {
                String key = entry.getKey();
                kotlin.jvm.internal.t.i(US2, "US");
                String lowerCase4 = key.toLowerCase(US2);
                kotlin.jvm.internal.t.i(lowerCase4, "this as java.lang.String).toLowerCase(locale)");
                Map<String, Integer> map = this.tableIdLookup;
                map.put(lowerCase4, (Integer) s0.i(map, lowerCase3));
            }
        }
        this.refreshRunnable = new Runnable() { // from class: androidx.room.InvalidationTracker$refreshRunnable$1
            private final Set<Integer> a() throws IOException {
                InvalidationTracker invalidationTracker = this.this$0;
                Set setB = x0.b();
                Cursor cursorB = RoomDatabase.B(invalidationTracker.g(), new SimpleSQLiteQuery(InvalidationTracker.SELECT_UPDATED_TABLES_SQL), null, 2, null);
                while (cursorB.moveToNext()) {
                    try {
                        setB.add(Integer.valueOf(cursorB.getInt(0)));
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            kotlin.io.c.a(cursorB, th);
                            throw th2;
                        }
                    }
                }
                l0 l0Var = l0.INSTANCE;
                kotlin.io.c.a(cursorB, null);
                Set<Integer> setA = x0.a(setB);
                if (!setA.isEmpty()) {
                    if (this.this$0.f() == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    SupportSQLiteStatement supportSQLiteStatementF = this.this$0.f();
                    if (supportSQLiteStatementF == null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    supportSQLiteStatementF.x();
                }
                return setA;
            }

            @Override // java.lang.Runnable
            public void run() {
                Set<Integer> setE;
                AutoCloser autoCloser;
                Lock lockL = this.this$0.g().l();
                lockL.lock();
                try {
                    try {
                        if (!this.this$0.e()) {
                            lockL.unlock();
                            AutoCloser autoCloser2 = this.this$0.autoCloser;
                            if (autoCloser2 != null) {
                                autoCloser2.e();
                                return;
                            }
                            return;
                        }
                        if (!this.this$0.i().compareAndSet(true, false)) {
                            lockL.unlock();
                            AutoCloser autoCloser3 = this.this$0.autoCloser;
                            if (autoCloser3 != null) {
                                autoCloser3.e();
                                return;
                            }
                            return;
                        }
                        if (this.this$0.g().t()) {
                            lockL.unlock();
                            AutoCloser autoCloser4 = this.this$0.autoCloser;
                            if (autoCloser4 != null) {
                                autoCloser4.e();
                                return;
                            }
                            return;
                        }
                        SupportSQLiteDatabase writableDatabase = this.this$0.g().n().getWritableDatabase();
                        writableDatabase.A();
                        try {
                            setE = a();
                            writableDatabase.d0();
                            writableDatabase.i0();
                            lockL.unlock();
                            autoCloser = this.this$0.autoCloser;
                            if (autoCloser != null) {
                                autoCloser.e();
                            }
                            if (!setE.isEmpty()) {
                                SafeIterableMap<InvalidationTracker.Observer, InvalidationTracker.ObserverWrapper> safeIterableMapH = this.this$0.h();
                                InvalidationTracker invalidationTracker = this.this$0;
                                synchronized (safeIterableMapH) {
                                    try {
                                        Iterator<Map.Entry<K, V>> it = invalidationTracker.h().iterator();
                                        while (it.hasNext()) {
                                            ((InvalidationTracker.ObserverWrapper) ((Map.Entry) it.next()).getValue()).b(setE);
                                        }
                                        l0 l0Var = l0.INSTANCE;
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            writableDatabase.i0();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        lockL.unlock();
                        AutoCloser autoCloser5 = this.this$0.autoCloser;
                        if (autoCloser5 != null) {
                            autoCloser5.e();
                        }
                        throw th3;
                    }
                } catch (SQLiteException e) {
                    Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e);
                    setE = y0.e();
                    lockL.unlock();
                    autoCloser = this.this$0.autoCloser;
                    if (autoCloser != null) {
                    }
                } catch (IllegalStateException e2) {
                    Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e2);
                    setE = y0.e();
                    lockL.unlock();
                    autoCloser = this.this$0.autoCloser;
                    if (autoCloser != null) {
                    }
                }
            }
        };
    }

    @Nullable
    public final SupportSQLiteStatement f() {
        return this.cleanupStatement;
    }

    @NotNull
    public final RoomDatabase g() {
        return this.database;
    }

    @NotNull
    public final SafeIterableMap<Observer, ObserverWrapper> h() {
        return this.observerMap;
    }

    @RestrictTo
    @NotNull
    public final AtomicBoolean i() {
        return this.pendingRefresh;
    }

    @NotNull
    public final Map<String, Integer> j() {
        return this.tableIdLookup;
    }

    public static final class ObservedTableTracker {
        public static final int ADD = 1;

        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int NO_OP = 0;
        public static final int REMOVE = 2;
        private boolean needsSync;

        @NotNull
        private final long[] tableObservers;

        @NotNull
        private final int[] triggerStateChanges;

        @NotNull
        private final boolean[] triggerStates;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }
        }

        @VisibleForTesting
        @Nullable
        public final int[] a() {
            synchronized (this) {
                try {
                    if (!this.needsSync) {
                        return null;
                    }
                    long[] jArr = this.tableObservers;
                    int length = jArr.length;
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < length) {
                        int i12 = i11 + 1;
                        int i13 = 1;
                        boolean z6 = jArr[i10] > 0;
                        boolean[] zArr = this.triggerStates;
                        if (z6 != zArr[i11]) {
                            int[] iArr = this.triggerStateChanges;
                            if (!z6) {
                                i13 = 2;
                            }
                            iArr[i11] = i13;
                        } else {
                            this.triggerStateChanges[i11] = 0;
                        }
                        zArr[i11] = z6;
                        i10++;
                        i11 = i12;
                    }
                    this.needsSync = false;
                    return (int[]) this.triggerStateChanges.clone();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void d() {
            synchronized (this) {
                Arrays.fill(this.triggerStates, false);
                this.needsSync = true;
                l0 l0Var = l0.INSTANCE;
            }
        }

        public ObservedTableTracker(int i10) {
            this.tableObservers = new long[i10];
            this.triggerStates = new boolean[i10];
            this.triggerStateChanges = new int[i10];
        }

        public final boolean b(@NotNull int... tableIds) {
            boolean z6;
            kotlin.jvm.internal.t.j(tableIds, "tableIds");
            synchronized (this) {
                try {
                    z6 = false;
                    for (int i10 : tableIds) {
                        long[] jArr = this.tableObservers;
                        long j6 = jArr[i10];
                        jArr[i10] = 1 + j6;
                        if (j6 == 0) {
                            z6 = true;
                            this.needsSync = true;
                        }
                    }
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z6;
        }

        public final boolean c(@NotNull int... tableIds) {
            boolean z6;
            kotlin.jvm.internal.t.j(tableIds, "tableIds");
            synchronized (this) {
                try {
                    z6 = false;
                    for (int i10 : tableIds) {
                        long[] jArr = this.tableObservers;
                        long j6 = jArr[i10];
                        jArr[i10] = j6 - 1;
                        if (j6 == 1) {
                            z6 = true;
                            this.needsSync = true;
                        }
                    }
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z6;
        }
    }

    public static abstract class Observer {

        @NotNull
        private final String[] tables;

        @NotNull
        public final String[] a() {
            return this.tables;
        }

        public boolean b() {
            return false;
        }

        public abstract void c(@NotNull Set<String> set);

        public Observer(@NotNull String[] tables) {
            kotlin.jvm.internal.t.j(tables, "tables");
            this.tables = tables;
        }
    }

    public static final class WeakObserver extends Observer {

        @NotNull
        private final WeakReference<Observer> delegateRef;

        @NotNull
        private final InvalidationTracker tracker;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WeakObserver(@NotNull InvalidationTracker tracker, @NotNull Observer delegate) {
            super(delegate.a());
            kotlin.jvm.internal.t.j(tracker, "tracker");
            kotlin.jvm.internal.t.j(delegate, "delegate");
            this.tracker = tracker;
            this.delegateRef = new WeakReference<>(delegate);
        }

        @Override // androidx.room.InvalidationTracker.Observer
        public void c(@NotNull Set<String> tables) {
            kotlin.jvm.internal.t.j(tables, "tables");
            Observer observer = this.delegateRef.get();
            if (observer == null) {
                this.tracker.o(this);
            } else {
                observer.c(tables);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        synchronized (this.trackerLock) {
            this.initialized = false;
            this.observedTableTracker.d();
            SupportSQLiteStatement supportSQLiteStatement = this.cleanupStatement;
            if (supportSQLiteStatement != null) {
                supportSQLiteStatement.close();
                l0 l0Var = l0.INSTANCE;
            }
        }
    }

    private final void s(SupportSQLiteDatabase supportSQLiteDatabase, int i10) {
        supportSQLiteDatabase.W("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i10 + ", 0)");
        String str = this.tablesNames[i10];
        for (String str2 : TRIGGERS) {
            String str3 = "CREATE TEMP TRIGGER IF NOT EXISTS " + Companion.b(str, str2) + " AFTER " + str2 + " ON `" + str + "` BEGIN UPDATE " + UPDATE_TABLE_NAME + " SET " + INVALIDATED_COLUMN_NAME + " = 1 WHERE " + TABLE_ID_COLUMN_NAME + " = " + i10 + " AND " + INVALIDATED_COLUMN_NAME + " = 0; END";
            kotlin.jvm.internal.t.i(str3, "StringBuilder().apply(builderAction).toString()");
            supportSQLiteDatabase.W(str3);
        }
    }

    private final void t(SupportSQLiteDatabase supportSQLiteDatabase, int i10) {
        String str = this.tablesNames[i10];
        for (String str2 : TRIGGERS) {
            String str3 = "DROP TRIGGER IF EXISTS " + Companion.b(str, str2);
            kotlin.jvm.internal.t.i(str3, "StringBuilder().apply(builderAction).toString()");
            supportSQLiteDatabase.W(str3);
        }
    }

    public final boolean e() {
        if (!this.database.z()) {
            return false;
        }
        if (!this.initialized) {
            this.database.n().getWritableDatabase();
        }
        if (this.initialized) {
            return true;
        }
        Log.e(Room.LOG_TAG, "database is not initialized even though it is open");
        return false;
    }

    public final void k(@NotNull SupportSQLiteDatabase database) {
        kotlin.jvm.internal.t.j(database, "database");
        synchronized (this.trackerLock) {
            if (this.initialized) {
                Log.e(Room.LOG_TAG, "Invalidation tracker is initialized twice :/.");
                return;
            }
            database.W("PRAGMA temp_store = MEMORY;");
            database.W("PRAGMA recursive_triggers='ON';");
            database.W(CREATE_TRACKING_TABLE_SQL);
            v(database);
            this.cleanupStatement = database.q0(RESET_UPDATED_TABLES_SQL);
            this.initialized = true;
            l0 l0Var = l0.INSTANCE;
        }
    }

    public void n() {
        if (this.pendingRefresh.compareAndSet(false, true)) {
            AutoCloser autoCloser = this.autoCloser;
            if (autoCloser != null) {
                autoCloser.j();
            }
            this.database.o().execute(this.refreshRunnable);
        }
    }

    public final void q(@NotNull AutoCloser autoCloser) {
        kotlin.jvm.internal.t.j(autoCloser, "autoCloser");
        this.autoCloser = autoCloser;
        autoCloser.l(new Runnable() { // from class: androidx.room.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f823a.m();
            }
        });
    }

    public final void r(@NotNull Context context, @NotNull String name, @NotNull Intent serviceIntent) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(serviceIntent, "serviceIntent");
        this.multiInstanceInvalidationClient = new MultiInstanceInvalidationClient(context, name, serviceIntent, this, this.database.o());
    }

    public final void u() {
        if (this.database.z()) {
            v(this.database.n().getWritableDatabase());
        }
    }

    public final void v(@NotNull SupportSQLiteDatabase database) {
        kotlin.jvm.internal.t.j(database, "database");
        if (database.z0()) {
            return;
        }
        try {
            Lock lockL = this.database.l();
            lockL.lock();
            try {
                synchronized (this.syncTriggersLock) {
                    int[] iArrA = this.observedTableTracker.a();
                    if (iArrA == null) {
                        lockL.unlock();
                        return;
                    }
                    Companion.a(database);
                    try {
                        int length = iArrA.length;
                        int i10 = 0;
                        int i11 = 0;
                        while (i10 < length) {
                            int i12 = iArrA[i10];
                            int i13 = i11 + 1;
                            if (i12 == 1) {
                                s(database, i11);
                            } else if (i12 == 2) {
                                t(database, i11);
                            }
                            i10++;
                            i11 = i13;
                        }
                        database.d0();
                        database.i0();
                        l0 l0Var = l0.INSTANCE;
                        lockL.unlock();
                    } catch (Throwable th) {
                        database.i0();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                lockL.unlock();
                throw th2;
            }
        } catch (SQLiteException e) {
            Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e);
        } catch (IllegalStateException e2) {
            Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e2);
        }
    }

    private final String[] p(String[] strArr) {
        Set setB = x0.b();
        for (String str : strArr) {
            Map<String, Set<String>> map = this.viewTables;
            Locale US = Locale.US;
            kotlin.jvm.internal.t.i(US, "US");
            String lowerCase = str.toLowerCase(US);
            kotlin.jvm.internal.t.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (map.containsKey(lowerCase)) {
                Map<String, Set<String>> map2 = this.viewTables;
                kotlin.jvm.internal.t.i(US, "US");
                String lowerCase2 = str.toLowerCase(US);
                kotlin.jvm.internal.t.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                Set<String> set = map2.get(lowerCase2);
                kotlin.jvm.internal.t.g(set);
                setB.addAll(set);
            } else {
                setB.add(str);
            }
        }
        Object[] array = x0.a(setB).toArray(new String[0]);
        kotlin.jvm.internal.t.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    @SuppressLint({"RestrictedApi"})
    @WorkerThread
    public void c(@NotNull Observer observer) {
        ObserverWrapper observerWrapperJ;
        kotlin.jvm.internal.t.j(observer, "observer");
        String[] strArrP = p(observer.a());
        ArrayList arrayList = new ArrayList(strArrP.length);
        for (String str : strArrP) {
            Map<String, Integer> map = this.tableIdLookup;
            Locale US = Locale.US;
            kotlin.jvm.internal.t.i(US, "US");
            String lowerCase = str.toLowerCase(US);
            kotlin.jvm.internal.t.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            Integer num = map.get(lowerCase);
            if (num != null) {
                arrayList.add(Integer.valueOf(num.intValue()));
            } else {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
        }
        int[] iArrT0 = d0.T0(arrayList);
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, iArrT0, strArrP);
        synchronized (this.observerMap) {
            observerWrapperJ = this.observerMap.j(observer, observerWrapper);
        }
        if (observerWrapperJ == null && this.observedTableTracker.b(Arrays.copyOf(iArrT0, iArrT0.length))) {
            u();
        }
    }

    @RestrictTo
    public void d(@NotNull Observer observer) {
        kotlin.jvm.internal.t.j(observer, "observer");
        c(new WeakObserver(this, observer));
    }

    @RestrictTo
    @VisibleForTesting
    public final void l(@NotNull String... tables) {
        kotlin.jvm.internal.t.j(tables, "tables");
        synchronized (this.observerMap) {
            try {
                Iterator<Map.Entry<K, V>> it = this.observerMap.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    kotlin.jvm.internal.t.i(entry, "(observer, wrapper)");
                    Observer observer = (Observer) entry.getKey();
                    ObserverWrapper observerWrapper = (ObserverWrapper) entry.getValue();
                    if (!observer.b()) {
                        observerWrapper.c(tables);
                    }
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @SuppressLint({"RestrictedApi"})
    @WorkerThread
    public void o(@NotNull Observer observer) {
        ObserverWrapper observerWrapperM;
        kotlin.jvm.internal.t.j(observer, "observer");
        synchronized (this.observerMap) {
            observerWrapperM = this.observerMap.m(observer);
        }
        if (observerWrapperM != null) {
            ObservedTableTracker observedTableTracker = this.observedTableTracker;
            int[] iArrA = observerWrapperM.a();
            if (observedTableTracker.c(Arrays.copyOf(iArrA, iArrA.length))) {
                u();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo
    public InvalidationTracker(@NotNull RoomDatabase database, @NotNull String... tableNames) {
        this(database, s0.h(), s0.h(), (String[]) Arrays.copyOf(tableNames, tableNames.length));
        kotlin.jvm.internal.t.j(database, "database");
        kotlin.jvm.internal.t.j(tableNames, "tableNames");
    }
}
