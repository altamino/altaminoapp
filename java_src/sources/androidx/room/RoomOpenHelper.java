package androidx.room;

import android.database.Cursor;
import androidx.annotation.RestrictTo;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public class RoomOpenHelper extends SupportSQLiteOpenHelper.Callback {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private DatabaseConfiguration configuration;

    @NotNull
    private final Delegate delegate;

    @NotNull
    private final String identityHash;

    @NotNull
    private final String legacyHash;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final boolean a(@NotNull SupportSQLiteDatabase db) throws IOException {
            kotlin.jvm.internal.t.j(db, "db");
            Cursor cursorX0 = db.x0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
            try {
                boolean z6 = false;
                if (cursorX0.moveToFirst() && cursorX0.getInt(0) == 0) {
                    z6 = true;
                }
                kotlin.io.c.a(cursorX0, null);
                return z6;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    kotlin.io.c.a(cursorX0, th);
                    throw th2;
                }
            }
        }

        public final boolean b(@NotNull SupportSQLiteDatabase db) throws IOException {
            kotlin.jvm.internal.t.j(db, "db");
            Cursor cursorX0 = db.x0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
            try {
                boolean z6 = false;
                if (cursorX0.moveToFirst() && cursorX0.getInt(0) != 0) {
                    z6 = true;
                }
                kotlin.io.c.a(cursorX0, null);
                return z6;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    kotlin.io.c.a(cursorX0, th);
                    throw th2;
                }
            }
        }
    }

    @RestrictTo
    public static abstract class Delegate {
        public final int version;

        public abstract void a(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void b(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void c(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void d(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public void e(@NotNull SupportSQLiteDatabase database) {
            kotlin.jvm.internal.t.j(database, "database");
        }

        public void f(@NotNull SupportSQLiteDatabase database) {
            kotlin.jvm.internal.t.j(database, "database");
        }

        @NotNull
        public ValidationResult g(@NotNull SupportSQLiteDatabase db) {
            kotlin.jvm.internal.t.j(db, "db");
            h(db);
            return new ValidationResult(true, null);
        }

        protected void h(@NotNull SupportSQLiteDatabase db) {
            kotlin.jvm.internal.t.j(db, "db");
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }

        public Delegate(int i10) {
            this.version = i10;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomOpenHelper(@NotNull DatabaseConfiguration configuration, @NotNull Delegate delegate, @NotNull String identityHash, @NotNull String legacyHash) {
        super(delegate.version);
        kotlin.jvm.internal.t.j(configuration, "configuration");
        kotlin.jvm.internal.t.j(delegate, "delegate");
        kotlin.jvm.internal.t.j(identityHash, "identityHash");
        kotlin.jvm.internal.t.j(legacyHash, "legacyHash");
        this.configuration = configuration;
        this.delegate = delegate;
        this.identityHash = identityHash;
        this.legacyHash = legacyHash;
    }

    @RestrictTo
    public static class ValidationResult {

        @Nullable
        public final String expectedFoundMsg;
        public final boolean isValid;

        public ValidationResult(boolean z6, @Nullable String str) {
            this.isValid = z6;
            this.expectedFoundMsg = str;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RoomOpenHelper(@NotNull DatabaseConfiguration configuration, @NotNull Delegate delegate, @NotNull String legacyHash) {
        this(configuration, delegate, "", legacyHash);
        kotlin.jvm.internal.t.j(configuration, "configuration");
        kotlin.jvm.internal.t.j(delegate, "delegate");
        kotlin.jvm.internal.t.j(legacyHash, "legacyHash");
    }

    private final void h(SupportSQLiteDatabase supportSQLiteDatabase) throws IOException {
        if (!Companion.b(supportSQLiteDatabase)) {
            ValidationResult validationResultG = this.delegate.g(supportSQLiteDatabase);
            if (validationResultG.isValid) {
                this.delegate.e(supportSQLiteDatabase);
                j(supportSQLiteDatabase);
                return;
            } else {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + validationResultG.expectedFoundMsg);
            }
        }
        Cursor cursorD = supportSQLiteDatabase.D(new SimpleSQLiteQuery(RoomMasterTable.READ_QUERY));
        try {
            String string = cursorD.moveToFirst() ? cursorD.getString(0) : null;
            kotlin.io.c.a(cursorD, null);
            if (kotlin.jvm.internal.t.e(this.identityHash, string) || kotlin.jvm.internal.t.e(this.legacyHash, string)) {
                return;
            }
            throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + this.identityHash + ", found: " + string);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                kotlin.io.c.a(cursorD, th);
                throw th2;
            }
        }
    }

    private final void i(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.W(RoomMasterTable.CREATE_QUERY);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void b(@NotNull SupportSQLiteDatabase db) {
        kotlin.jvm.internal.t.j(db, "db");
        super.b(db);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void d(@NotNull SupportSQLiteDatabase db) throws IOException {
        kotlin.jvm.internal.t.j(db, "db");
        boolean zA = Companion.a(db);
        this.delegate.a(db);
        if (!zA) {
            ValidationResult validationResultG = this.delegate.g(db);
            if (!validationResultG.isValid) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + validationResultG.expectedFoundMsg);
            }
        }
        j(db);
        this.delegate.c(db);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void e(@NotNull SupportSQLiteDatabase db, int i10, int i11) {
        kotlin.jvm.internal.t.j(db, "db");
        g(db, i10, i11);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void f(@NotNull SupportSQLiteDatabase db) throws IOException {
        kotlin.jvm.internal.t.j(db, "db");
        super.f(db);
        h(db);
        this.delegate.d(db);
        this.configuration = null;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void g(@NotNull SupportSQLiteDatabase db, int i10, int i11) {
        List<Migration> listD;
        kotlin.jvm.internal.t.j(db, "db");
        DatabaseConfiguration databaseConfiguration = this.configuration;
        if (databaseConfiguration == null || (listD = databaseConfiguration.migrationContainer.d(i10, i11)) == null) {
            DatabaseConfiguration databaseConfiguration2 = this.configuration;
            if (databaseConfiguration2 != null && !databaseConfiguration2.a(i10, i11)) {
                this.delegate.b(db);
                this.delegate.a(db);
                return;
            }
            throw new IllegalStateException("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
        this.delegate.f(db);
        Iterator<T> it = listD.iterator();
        while (it.hasNext()) {
            ((Migration) it.next()).a(db);
        }
        ValidationResult validationResultG = this.delegate.g(db);
        if (validationResultG.isValid) {
            this.delegate.e(db);
            j(db);
        } else {
            throw new IllegalStateException("Migration didn't properly handle: " + validationResultG.expectedFoundMsg);
        }
    }

    private final void j(SupportSQLiteDatabase supportSQLiteDatabase) {
        i(supportSQLiteDatabase);
        supportSQLiteDatabase.W(RoomMasterTable.a(this.identityHash));
    }
}
