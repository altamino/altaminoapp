package androidx.sqlite.db;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    public static abstract class Callback {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private static final String TAG = "SupportSQLite";
        public final int version;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        public void b(@NotNull SupportSQLiteDatabase db) {
            t.j(db, "db");
        }

        public abstract void d(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public void f(@NotNull SupportSQLiteDatabase db) {
            t.j(db, "db");
        }

        public abstract void g(@NotNull SupportSQLiteDatabase supportSQLiteDatabase, int i10, int i11);

        private final void a(String str) {
            if (kotlin.text.t.w(str, ":memory:", true)) {
                return;
            }
            int length = str.length() - 1;
            int i10 = 0;
            boolean z6 = false;
            while (i10 <= length) {
                boolean z10 = t.l(str.charAt(!z6 ? i10 : length), 32) <= 0;
                if (z6) {
                    if (!z10) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z10) {
                    i10++;
                } else {
                    z6 = true;
                }
            }
            if (str.subSequence(i10, length + 1).toString().length() == 0) {
                return;
            }
            Log.w(TAG, "deleting the database file: " + str);
            try {
                SupportSQLiteCompat.Api16Impl.b(new File(str));
            } catch (Exception e) {
                Log.w(TAG, "delete failed: ", e);
            }
        }

        public void e(@NotNull SupportSQLiteDatabase db, int i10, int i11) {
            t.j(db, "db");
            throw new SQLiteException("Can't downgrade database from version " + i10 + " to " + i11);
        }

        public Callback(int i10) {
            this.version = i10;
        }

        public void c(@NotNull SupportSQLiteDatabase db) {
            t.j(db, "db");
            Log.e(TAG, "Corruption reported by sqlite on database: " + db + ".path");
            if (!db.isOpen()) {
                String path = db.getPath();
                if (path != null) {
                    a(path);
                    return;
                }
                return;
            }
            List<Pair<String, String>> listW = null;
            try {
                try {
                    listW = db.w();
                } finally {
                    if (listW != null) {
                        Iterator<T> it = listW.iterator();
                        while (it.hasNext()) {
                            Object obj = ((Pair) it.next()).second;
                            t.i(obj, "p.second");
                            a((String) obj);
                        }
                    } else {
                        String path2 = db.getPath();
                        if (path2 != null) {
                            a(path2);
                        }
                    }
                }
            } catch (SQLiteException unused) {
            }
            try {
                db.close();
            } catch (IOException unused2) {
            }
        }
    }

    public static final class Configuration {

        @NotNull
        public static final Companion Companion = new Companion(null);
        public final boolean allowDataLossOnRecovery;

        @NotNull
        public final Callback callback;

        @NotNull
        public final Context context;

        @Nullable
        public final String name;
        public final boolean useNoBackupDirectory;

        public static class Builder {
            private boolean allowDataLossOnRecovery;

            @Nullable
            private Callback callback;

            @NotNull
            private final Context context;

            @Nullable
            private String name;
            private boolean useNoBackupDirectory;

            @NotNull
            public Builder a(boolean z6) {
                this.allowDataLossOnRecovery = z6;
                return this;
            }

            @NotNull
            public Builder c(@NotNull Callback callback) {
                t.j(callback, "callback");
                this.callback = callback;
                return this;
            }

            @NotNull
            public Builder d(@Nullable String str) {
                this.name = str;
                return this;
            }

            @NotNull
            public Builder e(boolean z6) {
                this.useNoBackupDirectory = z6;
                return this;
            }

            public Builder(@NotNull Context context) {
                t.j(context, "context");
                this.context = context;
            }

            @NotNull
            public Configuration b() {
                String str;
                Callback callback = this.callback;
                if (callback == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.".toString());
                }
                if (this.useNoBackupDirectory && ((str = this.name) == null || str.length() == 0)) {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.".toString());
                }
                return new Configuration(this.context, this.name, callback, this.useNoBackupDirectory, this.allowDataLossOnRecovery);
            }
        }

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final Builder a(@NotNull Context context) {
                t.j(context, "context");
                return new Builder(context);
            }
        }

        public Configuration(@NotNull Context context, @Nullable String str, @NotNull Callback callback, boolean z6, boolean z10) {
            t.j(context, "context");
            t.j(callback, "callback");
            this.context = context;
            this.name = str;
            this.callback = callback;
            this.useNoBackupDirectory = z6;
            this.allowDataLossOnRecovery = z10;
        }

        @NotNull
        public static final Builder a(@NotNull Context context) {
            return Companion.a(context);
        }

        public /* synthetic */ Configuration(Context context, String str, Callback callback, boolean z6, boolean z10, int i10, k kVar) {
            this(context, str, callback, (i10 & 8) != 0 ? false : z6, (i10 & 16) != 0 ? false : z10);
        }
    }

    public interface Factory {
        @NotNull
        SupportSQLiteOpenHelper a(@NotNull Configuration configuration);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    @Nullable
    String getDatabaseName();

    @NotNull
    SupportSQLiteDatabase getReadableDatabase();

    @NotNull
    SupportSQLiteDatabase getWritableDatabase();

    @RequiresApi
    void setWriteAheadLoggingEnabled(boolean z6);
}
