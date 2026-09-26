package androidx.work.impl;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.RawWorkInfoDao;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@TypeConverters
@Database
@RestrictTo
public abstract class WorkDatabase extends RoomDatabase {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SupportSQLiteOpenHelper c(Context context, SupportSQLiteOpenHelper.Configuration configuration) {
            t.j(context, "$context");
            t.j(configuration, "configuration");
            SupportSQLiteOpenHelper.Configuration.Builder builderA = SupportSQLiteOpenHelper.Configuration.Companion.a(context);
            builderA.d(configuration.name).c(configuration.callback).e(true).a(true);
            return new FrameworkSQLiteOpenHelperFactory().a(builderA.b());
        }

        @NotNull
        public final WorkDatabase b(@NotNull final Context context, @NotNull Executor queryExecutor, boolean z6) {
            t.j(context, "context");
            t.j(queryExecutor, "queryExecutor");
            return (WorkDatabase) (z6 ? Room.c(context, WorkDatabase.class).c() : Room.a(context, WorkDatabase.class, WorkDatabasePathHelperKt.WORK_DATABASE_NAME).f(new SupportSQLiteOpenHelper.Factory() { // from class: androidx.work.impl.c
                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
                public final SupportSQLiteOpenHelper a(SupportSQLiteOpenHelper.Configuration configuration) {
                    return WorkDatabase.Companion.c(context, configuration);
                }
            })).g(queryExecutor).a(CleanupCallback.INSTANCE).b(Migration_1_2.INSTANCE).b(new RescheduleMigration(context, 2, 3)).b(Migration_3_4.INSTANCE).b(Migration_4_5.INSTANCE).b(new RescheduleMigration(context, 5, 6)).b(Migration_6_7.INSTANCE).b(Migration_7_8.INSTANCE).b(Migration_8_9.INSTANCE).b(new WorkMigration9To10(context)).b(new RescheduleMigration(context, 10, 11)).b(Migration_11_12.INSTANCE).b(Migration_12_13.INSTANCE).b(Migration_15_16.INSTANCE).e().d();
        }
    }

    @NotNull
    public static final WorkDatabase F(@NotNull Context context, @NotNull Executor executor, boolean z6) {
        return Companion.b(context, executor, z6);
    }

    @NotNull
    public abstract DependencyDao G();

    @NotNull
    public abstract PreferenceDao H();

    @NotNull
    public abstract RawWorkInfoDao I();

    @NotNull
    public abstract SystemIdInfoDao J();

    @NotNull
    public abstract WorkNameDao K();

    @NotNull
    public abstract WorkProgressDao L();

    @NotNull
    public abstract WorkSpecDao M();

    @NotNull
    public abstract WorkTagDao N();
}
