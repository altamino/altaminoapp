package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteCompat;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.collections.s0;
import kotlin.collections.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class RoomDatabase {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @RestrictTo
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    private boolean allowMainThreadQueries;

    @Nullable
    private AutoCloser autoCloser;

    @NotNull
    private final Map<String, Object> backingFieldMap;
    private SupportSQLiteOpenHelper internalOpenHelper;
    private Executor internalQueryExecutor;
    private Executor internalTransactionExecutor;

    @RestrictTo
    @Nullable
    protected List<? extends Callback> mCallbacks;

    @Nullable
    protected volatile SupportSQLiteDatabase mDatabase;

    @NotNull
    private final Map<Class<?>, Object> typeConverters;
    private boolean writeAheadLoggingEnabled;

    @NotNull
    private final InvalidationTracker invalidationTracker = g();

    @RestrictTo
    @NotNull
    private Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs = new LinkedHashMap();

    @NotNull
    private final ReentrantReadWriteLock readWriteLock = new ReentrantReadWriteLock();

    @NotNull
    private final ThreadLocal<Integer> suspendingTransactionId = new ThreadLocal<>();

    public static class Builder<T extends RoomDatabase> {
        private boolean allowDestructiveMigrationOnDowngrade;
        private boolean allowMainThreadQueries;

        @Nullable
        private TimeUnit autoCloseTimeUnit;
        private long autoCloseTimeout;

        @NotNull
        private List<AutoMigrationSpec> autoMigrationSpecs;

        @NotNull
        private final List<Callback> callbacks;

        @NotNull
        private final Context context;

        @Nullable
        private String copyFromAssetPath;

        @Nullable
        private File copyFromFile;

        @Nullable
        private Callable<InputStream> copyFromInputStream;

        @Nullable
        private SupportSQLiteOpenHelper.Factory factory;

        @NotNull
        private JournalMode journalMode;

        @NotNull
        private final Class<T> klass;

        @NotNull
        private final MigrationContainer migrationContainer;

        @Nullable
        private Set<Integer> migrationStartAndEndVersions;

        @NotNull
        private Set<Integer> migrationsNotRequiredFrom;

        @Nullable
        private Intent multiInstanceInvalidationIntent;

        @Nullable
        private final String name;

        @Nullable
        private PrepackagedDatabaseCallback prepackagedDatabaseCallback;

        @Nullable
        private QueryCallback queryCallback;

        @Nullable
        private Executor queryCallbackExecutor;

        @Nullable
        private Executor queryExecutor;
        private boolean requireMigration;

        @Nullable
        private Executor transactionExecutor;

        @NotNull
        private final List<Object> typeConverters;

        @NotNull
        public Builder<T> c() {
            this.allowMainThreadQueries = true;
            return this;
        }

        @NotNull
        public Builder<T> e() {
            this.requireMigration = false;
            this.allowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        @NotNull
        public Builder<T> f(@Nullable SupportSQLiteOpenHelper.Factory factory) {
            this.factory = factory;
            return this;
        }

        @NotNull
        public Builder<T> g(@NotNull Executor executor) {
            kotlin.jvm.internal.t.j(executor, "executor");
            this.queryExecutor = executor;
            return this;
        }

        public Builder(@NotNull Context context, @NotNull Class<T> klass, @Nullable String str) {
            kotlin.jvm.internal.t.j(context, "context");
            kotlin.jvm.internal.t.j(klass, "klass");
            this.context = context;
            this.klass = klass;
            this.name = str;
            this.callbacks = new ArrayList();
            this.typeConverters = new ArrayList();
            this.autoMigrationSpecs = new ArrayList();
            this.journalMode = JournalMode.AUTOMATIC;
            this.requireMigration = true;
            this.autoCloseTimeout = -1L;
            this.migrationContainer = new MigrationContainer();
            this.migrationsNotRequiredFrom = new LinkedHashSet();
        }

        @NotNull
        public Builder<T> a(@NotNull Callback callback) {
            kotlin.jvm.internal.t.j(callback, "callback");
            this.callbacks.add(callback);
            return this;
        }

        @NotNull
        public Builder<T> b(@NotNull Migration... migrations) {
            kotlin.jvm.internal.t.j(migrations, "migrations");
            if (this.migrationStartAndEndVersions == null) {
                this.migrationStartAndEndVersions = new HashSet();
            }
            for (Migration migration : migrations) {
                Set<Integer> set = this.migrationStartAndEndVersions;
                kotlin.jvm.internal.t.g(set);
                set.add(Integer.valueOf(migration.startVersion));
                Set<Integer> set2 = this.migrationStartAndEndVersions;
                kotlin.jvm.internal.t.g(set2);
                set2.add(Integer.valueOf(migration.endVersion));
            }
            this.migrationContainer.b((Migration[]) Arrays.copyOf(migrations, migrations.length));
            return this;
        }

        @NotNull
        public T d() {
            SupportSQLiteOpenHelper.Factory queryInterceptorOpenHelperFactory;
            Executor executor = this.queryExecutor;
            if (executor == null && this.transactionExecutor == null) {
                Executor executorG = ArchTaskExecutor.g();
                this.transactionExecutor = executorG;
                this.queryExecutor = executorG;
            } else if (executor != null && this.transactionExecutor == null) {
                this.transactionExecutor = executor;
            } else if (executor == null) {
                this.queryExecutor = this.transactionExecutor;
            }
            Set<Integer> set = this.migrationStartAndEndVersions;
            if (set != null) {
                kotlin.jvm.internal.t.g(set);
                Iterator<Integer> it = set.iterator();
                while (it.hasNext()) {
                    int iIntValue = it.next().intValue();
                    if (!(!this.migrationsNotRequiredFrom.contains(Integer.valueOf(iIntValue)))) {
                        throw new IllegalArgumentException(("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + iIntValue).toString());
                    }
                }
            }
            SupportSQLiteOpenHelper.Factory sQLiteCopyOpenHelperFactory = this.factory;
            if (sQLiteCopyOpenHelperFactory == null) {
                sQLiteCopyOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            }
            if (sQLiteCopyOpenHelperFactory != null) {
                if (this.autoCloseTimeout > 0) {
                    if (this.name == null) {
                        throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.".toString());
                    }
                    long j6 = this.autoCloseTimeout;
                    TimeUnit timeUnit = this.autoCloseTimeUnit;
                    if (timeUnit == null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    Executor executor2 = this.queryExecutor;
                    if (executor2 == null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    sQLiteCopyOpenHelperFactory = new AutoClosingRoomOpenHelperFactory(sQLiteCopyOpenHelperFactory, new AutoCloser(j6, timeUnit, executor2));
                }
                String str = this.copyFromAssetPath;
                if (str != null || this.copyFromFile != null || this.copyFromInputStream != null) {
                    if (this.name == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.".toString());
                    }
                    int i10 = str == null ? 0 : 1;
                    File file = this.copyFromFile;
                    int i11 = file == null ? 0 : 1;
                    Callable<InputStream> callable = this.copyFromInputStream;
                    if (i10 + i11 + (callable != null ? 1 : 0) != 1) {
                        throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.".toString());
                    }
                    sQLiteCopyOpenHelperFactory = new SQLiteCopyOpenHelperFactory(str, file, callable, sQLiteCopyOpenHelperFactory);
                }
            } else {
                sQLiteCopyOpenHelperFactory = null;
            }
            if (sQLiteCopyOpenHelperFactory == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            QueryCallback queryCallback = this.queryCallback;
            if (queryCallback != null) {
                Executor executor3 = this.queryCallbackExecutor;
                if (executor3 == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                if (queryCallback == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                queryInterceptorOpenHelperFactory = new QueryInterceptorOpenHelperFactory(sQLiteCopyOpenHelperFactory, executor3, queryCallback);
            } else {
                queryInterceptorOpenHelperFactory = sQLiteCopyOpenHelperFactory;
            }
            Context context = this.context;
            String str2 = this.name;
            MigrationContainer migrationContainer = this.migrationContainer;
            List<Callback> list = this.callbacks;
            boolean z6 = this.allowMainThreadQueries;
            JournalMode journalModeC = this.journalMode.c(context);
            Executor executor4 = this.queryExecutor;
            if (executor4 == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            Executor executor5 = this.transactionExecutor;
            if (executor5 == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, str2, queryInterceptorOpenHelperFactory, migrationContainer, list, z6, journalModeC, executor4, executor5, this.multiInstanceInvalidationIntent, this.requireMigration, this.allowDestructiveMigrationOnDowngrade, this.migrationsNotRequiredFrom, this.copyFromAssetPath, this.copyFromFile, this.copyFromInputStream, this.prepackagedDatabaseCallback, (List<? extends Object>) this.typeConverters, this.autoMigrationSpecs);
            T t5 = (T) Room.b(this.klass, "_Impl");
            t5.u(databaseConfiguration);
            return t5;
        }
    }

    public static abstract class Callback {
        public void a(@NotNull SupportSQLiteDatabase db) {
            kotlin.jvm.internal.t.j(db, "db");
        }

        public void b(@NotNull SupportSQLiteDatabase db) {
            kotlin.jvm.internal.t.j(db, "db");
        }

        public void c(@NotNull SupportSQLiteDatabase db) {
            kotlin.jvm.internal.t.j(db, "db");
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        @NotNull
        public final JournalMode c(@NotNull Context context) {
            kotlin.jvm.internal.t.j(context, "context");
            if (this != AUTOMATIC) {
                return this;
            }
            Object systemService = context.getSystemService("activity");
            ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
            return (activityManager == null || b(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }

        private final boolean b(ActivityManager activityManager) {
            return SupportSQLiteCompat.Api19Impl.b(activityManager);
        }
    }

    public static class MigrationContainer {

        @NotNull
        private final Map<Integer, TreeMap<Integer, Migration>> migrations = new LinkedHashMap();

        @NotNull
        public Map<Integer, Map<Integer, Migration>> f() {
            return this.migrations;
        }

        private final void a(Migration migration) {
            int i10 = migration.startVersion;
            int i11 = migration.endVersion;
            Map<Integer, TreeMap<Integer, Migration>> map = this.migrations;
            Integer numValueOf = Integer.valueOf(i10);
            TreeMap<Integer, Migration> treeMap = map.get(numValueOf);
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                map.put(numValueOf, treeMap);
            }
            TreeMap<Integer, Migration> treeMap2 = treeMap;
            if (treeMap2.containsKey(Integer.valueOf(i11))) {
                Log.w(Room.LOG_TAG, "Overriding migration " + treeMap2.get(Integer.valueOf(i11)) + " with " + migration);
            }
            treeMap2.put(Integer.valueOf(i11), migration);
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0019  */
        /* JADX WARN: Code duplicated, block: B:11:0x001e  */
        /* JADX WARN: Code duplicated, block: B:15:0x002c  */
        /* JADX WARN: Code duplicated, block: B:31:0x0016 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:36:0x0045 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:38:0x0060 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:40:0x0037 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:9:0x0017 A[DONT_INVERT] */
        private final List<Migration> e(List<Migration> list, boolean z6, int i10, int i11) {
            TreeMap<Integer, Migration> treeMap;
            Set<Integer> setKeySet;
            Iterator<Integer> it;
            boolean z10;
            Integer targetVersion;
            int i12;
            int iIntValue;
            int iIntValue2;
            do {
                if (!z6) {
                    if (i10 <= i11) {
                        return list;
                    }
                    treeMap = this.migrations.get(Integer.valueOf(i10));
                    if (treeMap == null) {
                        if (z6) {
                            setKeySet = treeMap.descendingKeySet();
                        } else {
                            setKeySet = treeMap.keySet();
                        }
                        it = setKeySet.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                z10 = false;
                                break;
                                break;
                            }
                            targetVersion = it.next();
                            if (!z6) {
                                i12 = i10 + 1;
                                kotlin.jvm.internal.t.i(targetVersion, "targetVersion");
                                iIntValue = targetVersion.intValue();
                                if (i12 <= iIntValue) {
                                    continue;
                                }
                            } else {
                                kotlin.jvm.internal.t.i(targetVersion, "targetVersion");
                                iIntValue2 = targetVersion.intValue();
                                if (i11 <= iIntValue2) {
                                    continue;
                                }
                            }
                        }
                    } else {
                        return null;
                    }
                } else {
                    if (i10 >= i11) {
                        return list;
                    }
                    treeMap = this.migrations.get(Integer.valueOf(i10));
                    if (treeMap == null) {
                        if (z6) {
                            setKeySet = treeMap.descendingKeySet();
                        } else {
                            setKeySet = treeMap.keySet();
                        }
                        it = setKeySet.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                z10 = false;
                                break;
                            }
                            targetVersion = it.next();
                            if (!z6) {
                                kotlin.jvm.internal.t.i(targetVersion, "targetVersion");
                                iIntValue2 = targetVersion.intValue();
                                if (i11 <= iIntValue2 && iIntValue2 < i10) {
                                    Migration migration = treeMap.get(targetVersion);
                                    kotlin.jvm.internal.t.g(migration);
                                    list.add(migration);
                                    i10 = targetVersion.intValue();
                                    z10 = true;
                                    break;
                                    break;
                                }
                            } else {
                                i12 = i10 + 1;
                                kotlin.jvm.internal.t.i(targetVersion, "targetVersion");
                                iIntValue = targetVersion.intValue();
                                if (i12 <= iIntValue && iIntValue <= i11) {
                                    Migration migration2 = treeMap.get(targetVersion);
                                    kotlin.jvm.internal.t.g(migration2);
                                    list.add(migration2);
                                    i10 = targetVersion.intValue();
                                    z10 = true;
                                    break;
                                }
                            }
                        }
                    } else {
                        return null;
                    }
                }
            } while (z10);
            return null;
        }

        public void b(@NotNull Migration... migrations) {
            kotlin.jvm.internal.t.j(migrations, "migrations");
            for (Migration migration : migrations) {
                a(migration);
            }
        }

        @Nullable
        public List<Migration> d(int i10, int i11) {
            if (i10 == i11) {
                return kotlin.collections.v.m();
            }
            return e(new ArrayList(), i11 > i10, i10, i11);
        }

        public final boolean c(int i10, int i11) {
            Map<Integer, Map<Integer, Migration>> mapF = f();
            if (mapF.containsKey(Integer.valueOf(i10))) {
                Map<Integer, Migration> mapH = mapF.get(Integer.valueOf(i10));
                if (mapH == null) {
                    mapH = s0.h();
                }
                return mapH.containsKey(Integer.valueOf(i11));
            }
            return false;
        }
    }

    public static abstract class PrepackagedDatabaseCallback {
        public void a(@NotNull SupportSQLiteDatabase db) {
            kotlin.jvm.internal.t.j(db, "db");
        }
    }

    public interface QueryCallback {
        void a(@NotNull String str, @NotNull List<? extends Object> list);
    }

    @NotNull
    protected abstract InvalidationTracker g();

    @NotNull
    protected abstract SupportSQLiteOpenHelper h(@NotNull DatabaseConfiguration databaseConfiguration);

    @RestrictTo
    @NotNull
    public final Map<String, Object> k() {
        return this.backingFieldMap;
    }

    @NotNull
    public InvalidationTracker m() {
        return this.invalidationTracker;
    }

    @RestrictTo
    @NotNull
    public final ThreadLocal<Integer> r() {
        return this.suspendingTransactionId;
    }

    public static /* synthetic */ Cursor B(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: query");
        }
        if ((i10 & 2) != 0) {
            cancellationSignal = null;
        }
        return roomDatabase.A(supportSQLiteQuery, cancellationSignal);
    }

    public <V> V C(@NotNull Callable<V> body) {
        kotlin.jvm.internal.t.j(body, "body");
        e();
        try {
            V vCall = body.call();
            D();
            return vCall;
        } finally {
            i();
        }
    }

    @RestrictTo
    public void c() {
        if (!this.allowMainThreadQueries && !(!y())) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.".toString());
        }
    }

    public void i() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser == null) {
            w();
        } else {
            autoCloser.g(new RoomDatabase$endTransaction$1(this));
        }
    }

    @RestrictTo
    @NotNull
    public List<Migration> j(@NotNull Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
        kotlin.jvm.internal.t.j(autoMigrationSpecs, "autoMigrationSpecs");
        return kotlin.collections.v.m();
    }

    @NotNull
    public final Lock l() {
        ReentrantReadWriteLock.ReadLock lock = this.readWriteLock.readLock();
        kotlin.jvm.internal.t.i(lock, "readWriteLock.readLock()");
        return lock;
    }

    @NotNull
    public SupportSQLiteOpenHelper n() {
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.internalOpenHelper;
        if (supportSQLiteOpenHelper != null) {
            return supportSQLiteOpenHelper;
        }
        kotlin.jvm.internal.t.B("internalOpenHelper");
        return null;
    }

    @NotNull
    public Executor o() {
        Executor executor = this.internalQueryExecutor;
        if (executor != null) {
            return executor;
        }
        kotlin.jvm.internal.t.B("internalQueryExecutor");
        return null;
    }

    @NotNull
    public Executor s() {
        Executor executor = this.internalTransactionExecutor;
        if (executor != null) {
            return executor;
        }
        kotlin.jvm.internal.t.B("internalTransactionExecutor");
        return null;
    }

    @CallSuper
    public void u(@NotNull DatabaseConfiguration configuration) {
        kotlin.jvm.internal.t.j(configuration, "configuration");
        this.internalOpenHelper = h(configuration);
        Set<Class<? extends AutoMigrationSpec>> setP = p();
        BitSet bitSet = new BitSet();
        Iterator<Class<? extends AutoMigrationSpec>> it = setP.iterator();
        while (true) {
            int i10 = -1;
            if (it.hasNext()) {
                Class<? extends AutoMigrationSpec> next = it.next();
                int size = configuration.autoMigrationSpecs.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i11 = size - 1;
                        if (next.isAssignableFrom(configuration.autoMigrationSpecs.get(size).getClass())) {
                            bitSet.set(size);
                            i10 = size;
                            break;
                        } else if (i11 < 0) {
                            break;
                        } else {
                            size = i11;
                        }
                    }
                }
                if (i10 < 0) {
                    throw new IllegalArgumentException(("A required auto migration spec (" + next.getCanonicalName() + ") is missing in the database configuration.").toString());
                }
                this.autoMigrationSpecs.put(next, configuration.autoMigrationSpecs.get(i10));
            } else {
                int size2 = configuration.autoMigrationSpecs.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i12 = size2 - 1;
                        if (!bitSet.get(size2)) {
                            throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.".toString());
                        }
                        if (i12 < 0) {
                            break;
                        } else {
                            size2 = i12;
                        }
                    }
                }
                Iterator<Migration> it2 = j(this.autoMigrationSpecs).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Migration next2 = it2.next();
                    if (!configuration.migrationContainer.c(next2.startVersion, next2.endVersion)) {
                        configuration.migrationContainer.b(next2);
                    }
                }
                SQLiteCopyOpenHelper sQLiteCopyOpenHelper = (SQLiteCopyOpenHelper) E(SQLiteCopyOpenHelper.class, n());
                if (sQLiteCopyOpenHelper != null) {
                    sQLiteCopyOpenHelper.e(configuration);
                }
                AutoClosingRoomOpenHelper autoClosingRoomOpenHelper = (AutoClosingRoomOpenHelper) E(AutoClosingRoomOpenHelper.class, n());
                if (autoClosingRoomOpenHelper != null) {
                    this.autoCloser = autoClosingRoomOpenHelper.autoCloser;
                    m().q(autoClosingRoomOpenHelper.autoCloser);
                }
                boolean z6 = configuration.journalMode == JournalMode.WRITE_AHEAD_LOGGING;
                n().setWriteAheadLoggingEnabled(z6);
                this.mCallbacks = configuration.callbacks;
                this.internalQueryExecutor = configuration.queryExecutor;
                this.internalTransactionExecutor = new TransactionExecutor(configuration.transactionExecutor);
                this.allowMainThreadQueries = configuration.allowMainThreadQueries;
                this.writeAheadLoggingEnabled = z6;
                if (configuration.multiInstanceInvalidationServiceIntent != null) {
                    if (configuration.name == null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    m().r(configuration.context, configuration.name, configuration.multiInstanceInvalidationServiceIntent);
                }
                Map<Class<?>, List<Class<?>>> mapQ = q();
                BitSet bitSet2 = new BitSet();
                for (Map.Entry<Class<?>, List<Class<?>>> entry : mapQ.entrySet()) {
                    Class<?> key = entry.getKey();
                    for (Class<?> cls : entry.getValue()) {
                        int size3 = configuration.typeConverters.size() - 1;
                        if (size3 < 0) {
                            size3 = -1;
                            break;
                        }
                        while (true) {
                            int i13 = size3 - 1;
                            if (cls.isAssignableFrom(configuration.typeConverters.get(size3).getClass())) {
                                bitSet2.set(size3);
                                break;
                            } else {
                                if (i13 < 0) {
                                    size3 = -1;
                                    break;
                                }
                                size3 = i13;
                            }
                        }
                        if (size3 < 0) {
                            throw new IllegalArgumentException(("A required type converter (" + cls + ") for " + key.getCanonicalName() + " is missing in the database configuration.").toString());
                        }
                        this.typeConverters.put(cls, configuration.typeConverters.get(size3));
                    }
                }
                int size4 = configuration.typeConverters.size() - 1;
                if (size4 < 0) {
                    return;
                }
                while (true) {
                    int i14 = size4 - 1;
                    if (!bitSet2.get(size4)) {
                        throw new IllegalArgumentException("Unexpected type converter " + configuration.typeConverters.get(size4) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                    }
                    if (i14 < 0) {
                        return;
                    } else {
                        size4 = i14;
                    }
                }
            }
        }
    }

    protected void x(@NotNull SupportSQLiteDatabase db) {
        kotlin.jvm.internal.t.j(db, "db");
        m().k(db);
    }

    @RestrictTo
    public final boolean z() {
        SupportSQLiteDatabase supportSQLiteDatabase = this.mDatabase;
        return supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen();
    }

    public RoomDatabase() {
        Map<String, Object> mapSynchronizedMap = Collections.synchronizedMap(new LinkedHashMap());
        kotlin.jvm.internal.t.i(mapSynchronizedMap, "synchronizedMap(mutableMapOf())");
        this.backingFieldMap = mapSynchronizedMap;
        this.typeConverters = new LinkedHashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T> T E(Class<T> cls, SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        if (cls.isInstance(supportSQLiteOpenHelper)) {
            return supportSQLiteOpenHelper;
        }
        if (supportSQLiteOpenHelper instanceof DelegatingOpenHelper) {
            return (T) E(cls, ((DelegatingOpenHelper) supportSQLiteOpenHelper).getDelegate());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        c();
        SupportSQLiteDatabase writableDatabase = n().getWritableDatabase();
        m().v(writableDatabase);
        if (writableDatabase.B0()) {
            writableDatabase.A();
        } else {
            writableDatabase.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w() {
        n().getWritableDatabase().i0();
        if (!t()) {
            m().n();
        }
    }

    @NotNull
    public Cursor A(@NotNull SupportSQLiteQuery query, @Nullable CancellationSignal cancellationSignal) {
        kotlin.jvm.internal.t.j(query, "query");
        c();
        d();
        if (cancellationSignal != null) {
            return n().getWritableDatabase().z(query, cancellationSignal);
        }
        return n().getWritableDatabase().D(query);
    }

    public void D() {
        n().getWritableDatabase().d0();
    }

    @RestrictTo
    public void d() {
        if (!t() && this.suspendingTransactionId.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.".toString());
        }
    }

    public void e() {
        c();
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser == null) {
            v();
        } else {
            autoCloser.g(new RoomDatabase$beginTransaction$1(this));
        }
    }

    @NotNull
    public SupportSQLiteStatement f(@NotNull String sql) {
        kotlin.jvm.internal.t.j(sql, "sql");
        c();
        d();
        return n().getWritableDatabase().q0(sql);
    }

    @RestrictTo
    @NotNull
    public Set<Class<? extends AutoMigrationSpec>> p() {
        return y0.e();
    }

    @RestrictTo
    @NotNull
    protected Map<Class<?>, List<Class<?>>> q() {
        return s0.h();
    }

    public boolean t() {
        return n().getWritableDatabase().z0();
    }

    public final boolean y() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return true;
        }
        return false;
    }
}
