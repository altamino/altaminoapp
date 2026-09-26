package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
public final class zzat {
    @WorkerThread
    private static Set<String> zza(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
        try {
            Collections.addAll(hashSet, cursorRawQuery.getColumnNames());
            return hashSet;
        } finally {
            cursorRawQuery.close();
        }
    }

    @WorkerThread
    static void zza(zzfr zzfrVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws SQLiteException {
        if (zzfrVar != null) {
            if (!zza(zzfrVar, sQLiteDatabase, str)) {
                sQLiteDatabase.execSQL(str2);
            }
            try {
                Set<String> setZza = zza(sQLiteDatabase, str);
                for (String str4 : str3.split(",")) {
                    if (!setZza.remove(str4)) {
                        throw new SQLiteException("Table " + str + " is missing required column: " + str4);
                    }
                }
                if (strArr != null) {
                    for (int i10 = 0; i10 < strArr.length; i10 += 2) {
                        if (!setZza.remove(strArr[i10])) {
                            sQLiteDatabase.execSQL(strArr[i10 + 1]);
                        }
                    }
                }
                if (setZza.isEmpty()) {
                    return;
                }
                zzfrVar.zzu().zza("Table has extra columns. table, columns", str, TextUtils.join(", ", setZza));
                return;
            } catch (SQLiteException e) {
                zzfrVar.zzg().zza("Failed to verify columns on table that was just created", str);
                throw e;
            }
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    static void zza(zzfr zzfrVar, SQLiteDatabase sQLiteDatabase) {
        if (zzfrVar != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                zzfrVar.zzu().zza("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                zzfrVar.zzu().zza("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                zzfrVar.zzu().zza("Failed to turn on database read permission for owner");
            }
            if (file.setWritable(true, true)) {
                return;
            }
            zzfrVar.zzu().zza("Failed to turn on database write permission for owner");
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    @WorkerThread
    private static boolean zza(zzfr zzfrVar, SQLiteDatabase sQLiteDatabase, String str) {
        if (zzfrVar != null) {
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                    boolean zMoveToFirst = cursorQuery.moveToFirst();
                    cursorQuery.close();
                    return zMoveToFirst;
                } catch (SQLiteException e) {
                    zzfrVar.zzu().zza("Error querying for table", str, e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return false;
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }
}
