package androidx.room;

import android.content.Context;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.room.util.DBUtil;
import androidx.room.util.FileUtil;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import androidx.sqlite.util.ProcessLock;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Callable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class SQLiteCopyOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {

    @NotNull
    private final Context context;

    @Nullable
    private final String copyFromAssetPath;

    @Nullable
    private final File copyFromFile;

    @Nullable
    private final Callable<InputStream> copyFromInputStream;
    private DatabaseConfiguration databaseConfiguration;
    private final int databaseVersion;

    @NotNull
    private final SupportSQLiteOpenHelper delegate;
    private boolean verified;

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        getDelegate().close();
        this.verified = false;
    }

    public final void e(@NotNull DatabaseConfiguration databaseConfiguration) {
        kotlin.jvm.internal.t.j(databaseConfiguration, "databaseConfiguration");
        this.databaseConfiguration = databaseConfiguration;
    }

    @Override // androidx.room.DelegatingOpenHelper
    @NotNull
    public SupportSQLiteOpenHelper getDelegate() {
        return this.delegate;
    }

    public SQLiteCopyOpenHelper(@NotNull Context context, @Nullable String str, @Nullable File file, @Nullable Callable<InputStream> callable, int i10, @NotNull SupportSQLiteOpenHelper delegate) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(delegate, "delegate");
        this.context = context;
        this.copyFromAssetPath = str;
        this.copyFromFile = file;
        this.copyFromInputStream = callable;
        this.databaseVersion = i10;
        this.delegate = delegate;
    }

    private final void a(File file, boolean z6) throws IOException {
        ReadableByteChannel readableByteChannelNewChannel;
        if (this.copyFromAssetPath != null) {
            readableByteChannelNewChannel = Channels.newChannel(this.context.getAssets().open(this.copyFromAssetPath));
            kotlin.jvm.internal.t.i(readableByteChannelNewChannel, "newChannel(context.assets.open(copyFromAssetPath))");
        } else if (this.copyFromFile != null) {
            readableByteChannelNewChannel = new FileInputStream(this.copyFromFile).getChannel();
            kotlin.jvm.internal.t.i(readableByteChannelNewChannel, "FileInputStream(copyFromFile).channel");
        } else {
            Callable<InputStream> callable = this.copyFromInputStream;
            if (callable == null) {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
            try {
                readableByteChannelNewChannel = Channels.newChannel(callable.call());
                kotlin.jvm.internal.t.i(readableByteChannelNewChannel, "newChannel(inputStream)");
            } catch (Exception e) {
                throw new IOException("inputStreamCallable exception on call", e);
            }
        }
        File intermediateFile = File.createTempFile("room-copy-helper", ".tmp", this.context.getCacheDir());
        intermediateFile.deleteOnExit();
        FileChannel output = new FileOutputStream(intermediateFile).getChannel();
        kotlin.jvm.internal.t.i(output, "output");
        FileUtil.a(readableByteChannelNewChannel, output);
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        }
        kotlin.jvm.internal.t.i(intermediateFile, "intermediateFile");
        d(intermediateFile, z6);
        if (intermediateFile.renameTo(file)) {
            return;
        }
        throw new IOException("Failed to move intermediate file (" + intermediateFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
    }

    private final void d(File file, boolean z6) throws IOException {
        DatabaseConfiguration databaseConfiguration = this.databaseConfiguration;
        if (databaseConfiguration == null) {
            kotlin.jvm.internal.t.B("databaseConfiguration");
            databaseConfiguration = null;
        }
        if (databaseConfiguration.prepackagedDatabaseCallback == null) {
            return;
        }
        SupportSQLiteOpenHelper supportSQLiteOpenHelperB = b(file);
        try {
            SupportSQLiteDatabase writableDatabase = z6 ? supportSQLiteOpenHelperB.getWritableDatabase() : supportSQLiteOpenHelperB.getReadableDatabase();
            DatabaseConfiguration databaseConfiguration2 = this.databaseConfiguration;
            if (databaseConfiguration2 == null) {
                kotlin.jvm.internal.t.B("databaseConfiguration");
                databaseConfiguration2 = null;
            }
            RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback = databaseConfiguration2.prepackagedDatabaseCallback;
            kotlin.jvm.internal.t.g(prepackagedDatabaseCallback);
            prepackagedDatabaseCallback.a(writableDatabase);
            l0 l0Var = l0.INSTANCE;
            kotlin.io.c.a(supportSQLiteOpenHelperB, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                kotlin.io.c.a(supportSQLiteOpenHelperB, th);
                throw th2;
            }
        }
    }

    private final void f(boolean z6) {
        String databaseName = getDatabaseName();
        if (databaseName == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        File databaseFile = this.context.getDatabasePath(databaseName);
        DatabaseConfiguration databaseConfiguration = this.databaseConfiguration;
        DatabaseConfiguration databaseConfiguration2 = null;
        if (databaseConfiguration == null) {
            kotlin.jvm.internal.t.B("databaseConfiguration");
            databaseConfiguration = null;
        }
        ProcessLock processLock = new ProcessLock(databaseName, this.context.getFilesDir(), databaseConfiguration.multiInstanceInvalidation);
        try {
            ProcessLock.c(processLock, false, 1, null);
            if (!databaseFile.exists()) {
                try {
                    kotlin.jvm.internal.t.i(databaseFile, "databaseFile");
                    a(databaseFile, z6);
                    processLock.d();
                    return;
                } catch (IOException e) {
                    throw new RuntimeException("Unable to copy database file.", e);
                }
            }
            try {
                kotlin.jvm.internal.t.i(databaseFile, "databaseFile");
                int iC = DBUtil.c(databaseFile);
                if (iC == this.databaseVersion) {
                    processLock.d();
                    return;
                }
                DatabaseConfiguration databaseConfiguration3 = this.databaseConfiguration;
                if (databaseConfiguration3 == null) {
                    kotlin.jvm.internal.t.B("databaseConfiguration");
                } else {
                    databaseConfiguration2 = databaseConfiguration3;
                }
                if (databaseConfiguration2.a(iC, this.databaseVersion)) {
                    processLock.d();
                    return;
                }
                if (this.context.deleteDatabase(databaseName)) {
                    try {
                        a(databaseFile, z6);
                    } catch (IOException e2) {
                        Log.w(Room.LOG_TAG, "Unable to copy database file.", e2);
                    }
                } else {
                    Log.w(Room.LOG_TAG, "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                }
                processLock.d();
                return;
            } catch (IOException e6) {
                Log.w(Room.LOG_TAG, "Unable to read database version.", e6);
                processLock.d();
                return;
            }
        } catch (Throwable th) {
            processLock.d();
            throw th;
        }
        processLock.d();
        throw th;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getReadableDatabase() {
        if (!this.verified) {
            f(false);
            this.verified = true;
        }
        return getDelegate().getReadableDatabase();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getWritableDatabase() {
        if (!this.verified) {
            f(true);
            this.verified = true;
        }
        return getDelegate().getWritableDatabase();
    }

    private final SupportSQLiteOpenHelper b(File file) {
        try {
            final int iC = DBUtil.c(file);
            FrameworkSQLiteOpenHelperFactory frameworkSQLiteOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            SupportSQLiteOpenHelper.Configuration.Builder builderD = SupportSQLiteOpenHelper.Configuration.Companion.a(this.context).d(file.getAbsolutePath());
            final int iE = j8.o.e(iC, 1);
            return frameworkSQLiteOpenHelperFactory.a(builderD.c(new SupportSQLiteOpenHelper.Callback(iE) { // from class: androidx.room.SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1
                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                public void d(@NotNull SupportSQLiteDatabase db) {
                    kotlin.jvm.internal.t.j(db, "db");
                }

                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                public void g(@NotNull SupportSQLiteDatabase db, int i10, int i11) {
                    kotlin.jvm.internal.t.j(db, "db");
                }

                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
                public void f(@NotNull SupportSQLiteDatabase db) {
                    kotlin.jvm.internal.t.j(db, "db");
                    int i10 = iC;
                    if (i10 < 1) {
                        db.p0(i10);
                    }
                }
            }).b());
        } catch (IOException e) {
            throw new RuntimeException("Malformed database file, unable to read version.", e);
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @Nullable
    public String getDatabaseName() {
        return getDelegate().getDatabaseName();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @RequiresApi
    public void setWriteAheadLoggingEnabled(boolean z6) {
        getDelegate().setWriteAheadLoggingEnabled(z6);
    }
}
