package androidx.media3.datasource.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.WorkerThread;
import androidx.media3.common.util.Assertions;
import androidx.media3.database.DatabaseIOException;
import androidx.media3.database.DatabaseProvider;
import androidx.media3.database.VersionTable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
final class CacheFileMetadataIndex {
    private static final int COLUMN_INDEX_LAST_TOUCH_TIMESTAMP = 2;
    private static final int COLUMN_INDEX_LENGTH = 1;
    private static final int COLUMN_INDEX_NAME = 0;
    private static final String COLUMN_NAME = "name";
    private static final String TABLE_PREFIX = "ExoPlayerCacheFileMetadata";
    private static final String TABLE_SCHEMA = "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)";
    private static final int TABLE_VERSION = 1;
    private static final String WHERE_NAME_EQUALS = "name = ?";
    private final DatabaseProvider databaseProvider;
    private String tableName;
    private static final String COLUMN_LENGTH = "length";
    private static final String COLUMN_LAST_TOUCH_TIMESTAMP = "last_touch_timestamp";
    private static final String[] COLUMNS = {"name", COLUMN_LENGTH, COLUMN_LAST_TOUCH_TIMESTAMP};

    private static void a(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
    }

    private Cursor c() {
        Assertions.e(this.tableName);
        return this.databaseProvider.getReadableDatabase().query(this.tableName, COLUMNS, null, null, null, null, null);
    }

    private static String d(String str) {
        return TABLE_PREFIX + str;
    }

    @WorkerThread
    public void f(String str) throws DatabaseIOException {
        Assertions.e(this.tableName);
        try {
            this.databaseProvider.getWritableDatabase().delete(this.tableName, WHERE_NAME_EQUALS, new String[]{str});
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    @WorkerThread
    public void g(Set<String> set) throws DatabaseIOException {
        Assertions.e(this.tableName);
        try {
            SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator<String> it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.tableName, WHERE_NAME_EQUALS, new String[]{it.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    @WorkerThread
    public void h(String str, long j6, long j10) throws DatabaseIOException {
        Assertions.e(this.tableName);
        try {
            SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put(COLUMN_LENGTH, Long.valueOf(j6));
            contentValues.put(COLUMN_LAST_TOUCH_TIMESTAMP, Long.valueOf(j10));
            writableDatabase.replaceOrThrow(this.tableName, null, contentValues);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    public CacheFileMetadataIndex(DatabaseProvider databaseProvider) {
        this.databaseProvider = databaseProvider;
    }

    @WorkerThread
    public Map<String, CacheFileMetadata> b() throws DatabaseIOException {
        try {
            Cursor cursorC = c();
            try {
                HashMap map = new HashMap(cursorC.getCount());
                while (cursorC.moveToNext()) {
                    map.put((String) Assertions.e(cursorC.getString(0)), new CacheFileMetadata(cursorC.getLong(1), cursorC.getLong(2)));
                }
                cursorC.close();
                return map;
            } catch (Throwable th) {
                if (cursorC != null) {
                    try {
                        cursorC.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    @WorkerThread
    public void e(long j6) throws DatabaseIOException {
        try {
            String hexString = Long.toHexString(j6);
            this.tableName = d(hexString);
            if (VersionTable.b(this.databaseProvider.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    VersionTable.d(writableDatabase, 2, hexString, 1);
                    a(writableDatabase, this.tableName);
                    writableDatabase.execSQL("CREATE TABLE " + this.tableName + " " + TABLE_SCHEMA);
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }
}
