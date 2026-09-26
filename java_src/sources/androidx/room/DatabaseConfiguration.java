package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.RestrictTo;
import androidx.room.migration.AutoMigrationSpec;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class DatabaseConfiguration {
    public final boolean allowDestructiveMigrationOnDowngrade;
    public final boolean allowMainThreadQueries;

    @NotNull
    public final List<AutoMigrationSpec> autoMigrationSpecs;

    @Nullable
    public final List<RoomDatabase.Callback> callbacks;

    @NotNull
    public final Context context;

    @Nullable
    public final String copyFromAssetPath;

    @Nullable
    public final File copyFromFile;

    @Nullable
    public final Callable<InputStream> copyFromInputStream;

    @NotNull
    public final RoomDatabase.JournalMode journalMode;

    @NotNull
    public final RoomDatabase.MigrationContainer migrationContainer;

    @Nullable
    private final Set<Integer> migrationNotRequiredFrom;
    public final boolean multiInstanceInvalidation;

    @RestrictTo
    @Nullable
    public final Intent multiInstanceInvalidationServiceIntent;

    @Nullable
    public final String name;

    @Nullable
    public final RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback;

    @NotNull
    public final Executor queryExecutor;
    public final boolean requireMigration;

    @NotNull
    public final SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory;

    @NotNull
    public final Executor transactionExecutor;

    @NotNull
    public final List<Object> typeConverters;

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"LambdaLast"})
    @RestrictTo
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z6, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, @Nullable Intent intent, boolean z10, boolean z11, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, @NotNull List<? extends Object> typeConverters, @NotNull List<? extends AutoMigrationSpec> autoMigrationSpecs) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        kotlin.jvm.internal.t.j(migrationContainer, "migrationContainer");
        kotlin.jvm.internal.t.j(journalMode, "journalMode");
        kotlin.jvm.internal.t.j(queryExecutor, "queryExecutor");
        kotlin.jvm.internal.t.j(transactionExecutor, "transactionExecutor");
        kotlin.jvm.internal.t.j(typeConverters, "typeConverters");
        kotlin.jvm.internal.t.j(autoMigrationSpecs, "autoMigrationSpecs");
        this.context = context;
        this.name = str;
        this.sqliteOpenHelperFactory = sqliteOpenHelperFactory;
        this.migrationContainer = migrationContainer;
        this.callbacks = list;
        this.allowMainThreadQueries = z6;
        this.journalMode = journalMode;
        this.queryExecutor = queryExecutor;
        this.transactionExecutor = transactionExecutor;
        this.multiInstanceInvalidationServiceIntent = intent;
        this.requireMigration = z10;
        this.allowDestructiveMigrationOnDowngrade = z11;
        this.migrationNotRequiredFrom = set;
        this.copyFromAssetPath = str2;
        this.copyFromFile = file;
        this.copyFromInputStream = callable;
        this.prepackagedDatabaseCallback = prepackagedDatabaseCallback;
        this.typeConverters = typeConverters;
        this.autoMigrationSpecs = autoMigrationSpecs;
        this.multiInstanceInvalidation = intent != null;
    }

    public boolean a(int i10, int i11) {
        if ((i10 > i11 && this.allowDestructiveMigrationOnDowngrade) || !this.requireMigration) {
            return false;
        }
        Set<Integer> set = this.migrationNotRequiredFrom;
        return set == null || !set.contains(Integer.valueOf(i10));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z6, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, boolean z10, @Nullable Set<Integer> set) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z6, journalMode, queryExecutor, queryExecutor, (Intent) null, z10, false, set, (String) null, (File) null, (Callable<InputStream>) null, (RoomDatabase.PrepackagedDatabaseCallback) null, (List<? extends Object>) kotlin.collections.v.m(), (List<? extends AutoMigrationSpec>) kotlin.collections.v.m());
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        kotlin.jvm.internal.t.j(migrationContainer, "migrationContainer");
        kotlin.jvm.internal.t.j(journalMode, "journalMode");
        kotlin.jvm.internal.t.j(queryExecutor, "queryExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z6, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z10, boolean z11, boolean z12, @Nullable Set<Integer> set) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z6, journalMode, queryExecutor, transactionExecutor, z10 ? new Intent(context, (Class<?>) MultiInstanceInvalidationService.class) : null, z11, z12, set, (String) null, (File) null, (Callable<InputStream>) null, (RoomDatabase.PrepackagedDatabaseCallback) null, (List<? extends Object>) kotlin.collections.v.m(), (List<? extends AutoMigrationSpec>) kotlin.collections.v.m());
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        kotlin.jvm.internal.t.j(migrationContainer, "migrationContainer");
        kotlin.jvm.internal.t.j(journalMode, "journalMode");
        kotlin.jvm.internal.t.j(queryExecutor, "queryExecutor");
        kotlin.jvm.internal.t.j(transactionExecutor, "transactionExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z6, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z10, boolean z11, boolean z12, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z6, journalMode, queryExecutor, transactionExecutor, z10 ? new Intent(context, (Class<?>) MultiInstanceInvalidationService.class) : null, z11, z12, set, str2, file, (Callable<InputStream>) null, (RoomDatabase.PrepackagedDatabaseCallback) null, (List<? extends Object>) kotlin.collections.v.m(), (List<? extends AutoMigrationSpec>) kotlin.collections.v.m());
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        kotlin.jvm.internal.t.j(migrationContainer, "migrationContainer");
        kotlin.jvm.internal.t.j(journalMode, "journalMode");
        kotlin.jvm.internal.t.j(queryExecutor, "queryExecutor");
        kotlin.jvm.internal.t.j(transactionExecutor, "transactionExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z6, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z10, boolean z11, boolean z12, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z6, journalMode, queryExecutor, transactionExecutor, z10 ? new Intent(context, (Class<?>) MultiInstanceInvalidationService.class) : null, z11, z12, set, str2, file, callable, (RoomDatabase.PrepackagedDatabaseCallback) null, (List<? extends Object>) kotlin.collections.v.m(), (List<? extends AutoMigrationSpec>) kotlin.collections.v.m());
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        kotlin.jvm.internal.t.j(migrationContainer, "migrationContainer");
        kotlin.jvm.internal.t.j(journalMode, "journalMode");
        kotlin.jvm.internal.t.j(queryExecutor, "queryExecutor");
        kotlin.jvm.internal.t.j(transactionExecutor, "transactionExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"LambdaLast"})
    @RestrictTo
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z6, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z10, boolean z11, boolean z12, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z6, journalMode, queryExecutor, transactionExecutor, z10 ? new Intent(context, (Class<?>) MultiInstanceInvalidationService.class) : null, z11, z12, set, str2, file, callable, prepackagedDatabaseCallback, (List<? extends Object>) kotlin.collections.v.m(), (List<? extends AutoMigrationSpec>) kotlin.collections.v.m());
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        kotlin.jvm.internal.t.j(migrationContainer, "migrationContainer");
        kotlin.jvm.internal.t.j(journalMode, "journalMode");
        kotlin.jvm.internal.t.j(queryExecutor, "queryExecutor");
        kotlin.jvm.internal.t.j(transactionExecutor, "transactionExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"LambdaLast"})
    @RestrictTo
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z6, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z10, boolean z11, boolean z12, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, @NotNull List<? extends Object> typeConverters) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z6, journalMode, queryExecutor, transactionExecutor, z10 ? new Intent(context, (Class<?>) MultiInstanceInvalidationService.class) : null, z11, z12, set, str2, file, callable, prepackagedDatabaseCallback, typeConverters, (List<? extends AutoMigrationSpec>) kotlin.collections.v.m());
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        kotlin.jvm.internal.t.j(migrationContainer, "migrationContainer");
        kotlin.jvm.internal.t.j(journalMode, "journalMode");
        kotlin.jvm.internal.t.j(queryExecutor, "queryExecutor");
        kotlin.jvm.internal.t.j(transactionExecutor, "transactionExecutor");
        kotlin.jvm.internal.t.j(typeConverters, "typeConverters");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"LambdaLast"})
    @RestrictTo
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z6, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z10, boolean z11, boolean z12, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, @NotNull List<? extends Object> typeConverters, @NotNull List<? extends AutoMigrationSpec> autoMigrationSpecs) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z6, journalMode, queryExecutor, transactionExecutor, z10 ? new Intent(context, (Class<?>) MultiInstanceInvalidationService.class) : null, z11, z12, set, str2, file, callable, (RoomDatabase.PrepackagedDatabaseCallback) null, typeConverters, autoMigrationSpecs);
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        kotlin.jvm.internal.t.j(migrationContainer, "migrationContainer");
        kotlin.jvm.internal.t.j(journalMode, "journalMode");
        kotlin.jvm.internal.t.j(queryExecutor, "queryExecutor");
        kotlin.jvm.internal.t.j(transactionExecutor, "transactionExecutor");
        kotlin.jvm.internal.t.j(typeConverters, "typeConverters");
        kotlin.jvm.internal.t.j(autoMigrationSpecs, "autoMigrationSpecs");
    }
}
