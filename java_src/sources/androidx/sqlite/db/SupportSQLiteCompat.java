package androidx.sqlite.db;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo
public final class SupportSQLiteCompat {

    @RequiresApi
    @RestrictTo
    public static final class Api16Impl {

        @NotNull
        public static final Api16Impl INSTANCE = new Api16Impl();

        @RestrictTo
        public static final void a(@NotNull CancellationSignal cancellationSignal) {
            t.j(cancellationSignal, "cancellationSignal");
            cancellationSignal.cancel();
        }

        @RestrictTo
        public static final boolean b(@NotNull File file) {
            t.j(file, "file");
            return SQLiteDatabase.deleteDatabase(file);
        }

        private Api16Impl() {
        }

        @RestrictTo
        public static final boolean c(@NotNull SQLiteDatabase sQLiteDatabase) {
            t.j(sQLiteDatabase, "sQLiteDatabase");
            return sQLiteDatabase.isWriteAheadLoggingEnabled();
        }

        @RestrictTo
        @NotNull
        public static final Cursor d(@NotNull SQLiteDatabase sQLiteDatabase, @NotNull String sql, @NotNull String[] selectionArgs, @Nullable String str, @NotNull CancellationSignal cancellationSignal, @NotNull SQLiteDatabase.CursorFactory cursorFactory) {
            t.j(sQLiteDatabase, "sQLiteDatabase");
            t.j(sql, "sql");
            t.j(selectionArgs, "selectionArgs");
            t.j(cancellationSignal, "cancellationSignal");
            t.j(cursorFactory, "cursorFactory");
            Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(cursorFactory, sql, selectionArgs, str, cancellationSignal);
            t.i(cursorRawQueryWithFactory, "sQLiteDatabase.rawQueryW…ationSignal\n            )");
            return cursorRawQueryWithFactory;
        }

        @RestrictTo
        public static final void e(@NotNull SQLiteDatabase sQLiteDatabase, boolean z6) {
            t.j(sQLiteDatabase, "sQLiteDatabase");
            sQLiteDatabase.setForeignKeyConstraintsEnabled(z6);
        }

        @RestrictTo
        public static final void f(@NotNull SQLiteOpenHelper sQLiteOpenHelper, boolean z6) {
            t.j(sQLiteOpenHelper, "sQLiteOpenHelper");
            sQLiteOpenHelper.setWriteAheadLoggingEnabled(z6);
        }
    }

    @RequiresApi
    @RestrictTo
    public static final class Api19Impl {

        @NotNull
        public static final Api19Impl INSTANCE = new Api19Impl();

        @RestrictTo
        @NotNull
        public static final Uri a(@NotNull Cursor cursor) {
            t.j(cursor, "cursor");
            Uri notificationUri = cursor.getNotificationUri();
            t.i(notificationUri, "cursor.notificationUri");
            return notificationUri;
        }

        @RestrictTo
        public static final boolean b(@NotNull ActivityManager activityManager) {
            t.j(activityManager, "activityManager");
            return activityManager.isLowRamDevice();
        }

        private Api19Impl() {
        }
    }

    @RequiresApi
    @RestrictTo
    public static final class Api21Impl {

        @NotNull
        public static final Api21Impl INSTANCE = new Api21Impl();

        @RestrictTo
        @NotNull
        public static final File a(@NotNull Context context) {
            t.j(context, "context");
            File noBackupFilesDir = context.getNoBackupFilesDir();
            t.i(noBackupFilesDir, "context.noBackupFilesDir");
            return noBackupFilesDir;
        }

        private Api21Impl() {
        }
    }

    @RequiresApi
    @RestrictTo
    public static final class Api23Impl {

        @NotNull
        public static final Api23Impl INSTANCE = new Api23Impl();

        @RestrictTo
        public static final void a(@NotNull Cursor cursor, @NotNull Bundle extras) {
            t.j(cursor, "cursor");
            t.j(extras, "extras");
            cursor.setExtras(extras);
        }

        private Api23Impl() {
        }
    }

    @RequiresApi
    @RestrictTo
    public static final class Api29Impl {

        @NotNull
        public static final Api29Impl INSTANCE = new Api29Impl();

        @RestrictTo
        @NotNull
        public static final List<Uri> a(@NotNull Cursor cursor) {
            t.j(cursor, "cursor");
            List<Uri> notificationUris = cursor.getNotificationUris();
            t.g(notificationUris);
            return notificationUris;
        }

        @RestrictTo
        public static final void b(@NotNull Cursor cursor, @NotNull ContentResolver cr, @NotNull List<? extends Uri> uris) {
            t.j(cursor, "cursor");
            t.j(cr, "cr");
            t.j(uris, "uris");
            cursor.setNotificationUris(cr, uris);
        }

        private Api29Impl() {
        }
    }

    private SupportSQLiteCompat() {
    }
}
