package com.mixpanel.android.mpmetrics;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.io.FilenameFilter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
class e {
    private static final String ANONYMOUS_PEOPLE_TIME_INDEX;
    public static final int AUTOMATIC_DATA_COLUMN_INDEX = 3;
    public static final int CREATED_AT_COLUMN_INDEX = 2;
    private static final String CREATE_ANONYMOUS_PEOPLE_TABLE;
    private static final String CREATE_EVENTS_TABLE;
    private static final String CREATE_GROUPS_TABLE;
    private static final String CREATE_PEOPLE_TABLE;
    private static final String DATABASE_NAME = "mixpanel";
    private static final int DATABASE_VERSION = 7;
    public static final int DATA_COLUMN_INDEX = 1;
    public static final int DB_OUT_OF_MEMORY_ERROR = -2;
    public static final int DB_UNDEFINED_CODE = -3;
    public static final int DB_UPDATE_ERROR = -1;
    private static final String EVENTS_TIME_INDEX;
    private static final String GROUPS_TIME_INDEX;
    public static final int ID_COLUMN_INDEX = 0;
    public static final String KEY_AUTOMATIC_DATA = "automatic_data";
    public static final String KEY_CREATED_AT = "created_at";
    public static final String KEY_DATA = "data";
    public static final String KEY_TOKEN = "token";
    private static final String LOGTAG = "MixpanelAPI.Database";
    private static final int MAX_DB_VERSION = 7;
    private static final int MIN_DB_VERSION = 4;
    private static final String PEOPLE_TIME_INDEX;
    public static final int TOKEN_COLUMN_INDEX = 4;
    private static final Map<String, e> sInstances = new HashMap();
    private final a mDb;

    private static class a extends SQLiteOpenHelper {
        private final d mConfig;
        private final Context mContext;
        private final File mDatabaseFile;

        /* JADX INFO: renamed from: com.mixpanel.android.mpmetrics.e$a$a, reason: collision with other inner class name */
        class C0282a implements FilenameFilter {
            C0282a() {
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.startsWith("com.mixpanel.android.mpmetrics.MixpanelAPI_");
            }
        }

        a(Context context, String str, d dVar) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 7);
            this.mDatabaseFile = context.getDatabasePath(str);
            this.mConfig = dVar;
            this.mContext = context;
        }

        private void i(SQLiteDatabase sQLiteDatabase) {
            int i10;
            StringBuilder sb = new StringBuilder();
            sb.append("ALTER TABLE ");
            b bVar = b.EVENTS;
            sb.append(bVar.a());
            sb.append(" ADD COLUMN ");
            sb.append(e.KEY_AUTOMATIC_DATA);
            sb.append(" INTEGER DEFAULT 0");
            sQLiteDatabase.execSQL(sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ALTER TABLE ");
            b bVar2 = b.PEOPLE;
            sb2.append(bVar2.a());
            sb2.append(" ADD COLUMN ");
            sb2.append(e.KEY_AUTOMATIC_DATA);
            sb2.append(" INTEGER DEFAULT 0");
            sQLiteDatabase.execSQL(sb2.toString());
            sQLiteDatabase.execSQL("ALTER TABLE " + bVar.a() + " ADD COLUMN " + e.KEY_TOKEN + " STRING NOT NULL DEFAULT ''");
            sQLiteDatabase.execSQL("ALTER TABLE " + bVar2.a() + " ADD COLUMN " + e.KEY_TOKEN + " STRING NOT NULL DEFAULT ''");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SELECT * FROM ");
            sb3.append(bVar.a());
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery(sb3.toString(), null);
            while (cursorRawQuery.moveToNext()) {
                try {
                    String string = new JSONObject(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("data") >= 0 ? cursorRawQuery.getColumnIndex("data") : 1)).getJSONObject("properties").getString(e.KEY_TOKEN);
                    sQLiteDatabase.execSQL("UPDATE " + b.EVENTS.a() + " SET " + e.KEY_TOKEN + " = '" + string + "' WHERE _id = " + cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("_id") >= 0 ? cursorRawQuery.getColumnIndex("_id") : 0));
                } catch (JSONException unused) {
                    sQLiteDatabase.delete(b.EVENTS.a(), "_id = 0", null);
                }
            }
            Cursor cursorRawQuery2 = sQLiteDatabase.rawQuery("SELECT * FROM " + b.PEOPLE.a(), null);
            while (cursorRawQuery2.moveToNext()) {
                try {
                    String string2 = new JSONObject(cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex("data") >= 0 ? cursorRawQuery2.getColumnIndex("data") : 1)).getString("$token");
                    i10 = cursorRawQuery2.getInt(cursorRawQuery2.getColumnIndex("_id") >= 0 ? cursorRawQuery2.getColumnIndex("_id") : 0);
                    try {
                        sQLiteDatabase.execSQL("UPDATE " + b.PEOPLE.a() + " SET " + e.KEY_TOKEN + " = '" + string2 + "' WHERE _id = " + i10);
                    } catch (JSONException unused2) {
                        sQLiteDatabase.delete(b.PEOPLE.a(), "_id = " + i10, null);
                    }
                } catch (JSONException unused3) {
                    i10 = 0;
                }
            }
        }

        public boolean d() {
            if (this.mDatabaseFile.exists()) {
                return this.mDatabaseFile.length() > Math.max(this.mDatabaseFile.getUsableSpace(), (long) this.mConfig.n()) || this.mDatabaseFile.length() > ((long) this.mConfig.m());
            }
            return false;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            com.mixpanel.android.util.d.i(e.LOGTAG, "Creating a new Mixpanel events DB");
            sQLiteDatabase.execSQL(e.CREATE_EVENTS_TABLE);
            sQLiteDatabase.execSQL(e.CREATE_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(e.CREATE_GROUPS_TABLE);
            sQLiteDatabase.execSQL(e.CREATE_ANONYMOUS_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(e.EVENTS_TIME_INDEX);
            sQLiteDatabase.execSQL(e.PEOPLE_TIME_INDEX);
            sQLiteDatabase.execSQL(e.GROUPS_TIME_INDEX);
            sQLiteDatabase.execSQL(e.ANONYMOUS_PEOPLE_TIME_INDEX);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            com.mixpanel.android.util.d.i(e.LOGTAG, "Upgrading app, replacing Mixpanel events DB");
            if (i10 >= 4 && i11 <= 7) {
                if (i10 == 4) {
                    i(sQLiteDatabase);
                    j(sQLiteDatabase);
                    k(sQLiteDatabase);
                }
                if (i10 == 5) {
                    j(sQLiteDatabase);
                    k(sQLiteDatabase);
                }
                if (i10 == 6) {
                    k(sQLiteDatabase);
                    return;
                }
                return;
            }
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + b.EVENTS.a());
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + b.PEOPLE.a());
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + b.GROUPS.a());
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + b.ANONYMOUS_PEOPLE.a());
            sQLiteDatabase.execSQL(e.CREATE_EVENTS_TABLE);
            sQLiteDatabase.execSQL(e.CREATE_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(e.CREATE_GROUPS_TABLE);
            sQLiteDatabase.execSQL(e.CREATE_ANONYMOUS_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(e.EVENTS_TIME_INDEX);
            sQLiteDatabase.execSQL(e.PEOPLE_TIME_INDEX);
            sQLiteDatabase.execSQL(e.GROUPS_TIME_INDEX);
            sQLiteDatabase.execSQL(e.ANONYMOUS_PEOPLE_TIME_INDEX);
        }

        private void j(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(e.CREATE_GROUPS_TABLE);
            sQLiteDatabase.execSQL(e.GROUPS_TIME_INDEX);
        }

        private void k(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(e.CREATE_ANONYMOUS_PEOPLE_TABLE);
            sQLiteDatabase.execSQL(e.ANONYMOUS_PEOPLE_TIME_INDEX);
            File file = new File(this.mContext.getApplicationInfo().dataDir, "shared_prefs");
            if (file.exists() && file.isDirectory()) {
                for (String str : file.list(new C0282a())) {
                    SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(str.split("\\.xml")[0], 0);
                    String string = sharedPreferences.getString("waiting_array", null);
                    if (string != null) {
                        try {
                            JSONArray jSONArray = new JSONArray(string);
                            sQLiteDatabase.beginTransaction();
                            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                                try {
                                    try {
                                        JSONObject jSONObject = jSONArray.getJSONObject(i10);
                                        String string2 = jSONObject.getString("$token");
                                        ContentValues contentValues = new ContentValues();
                                        contentValues.put("data", jSONObject.toString());
                                        contentValues.put(e.KEY_CREATED_AT, Long.valueOf(System.currentTimeMillis()));
                                        contentValues.put(e.KEY_AUTOMATIC_DATA, Boolean.FALSE);
                                        contentValues.put(e.KEY_TOKEN, string2);
                                        sQLiteDatabase.insert(b.ANONYMOUS_PEOPLE.a(), null, contentValues);
                                    } catch (JSONException unused) {
                                    }
                                } catch (Throwable th) {
                                    sQLiteDatabase.endTransaction();
                                    throw th;
                                }
                            }
                            sQLiteDatabase.setTransactionSuccessful();
                            sQLiteDatabase.endTransaction();
                        } catch (JSONException unused2) {
                        }
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.remove("waiting_array");
                        editorEdit.apply();
                    }
                }
            }
        }

        public void h() {
            close();
            this.mDatabaseFile.delete();
        }
    }

    public e(Context context, d dVar) {
        this(context, q(dVar.l()), dVar);
    }

    public enum b {
        EVENTS("events"),
        PEOPLE("people"),
        ANONYMOUS_PEOPLE("anonymous_people"),
        GROUPS("groups");

        private final String mTableName;

        public String a() {
            return this.mTableName;
        }

        b(String str) {
            this.mTableName = str;
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE ");
        b bVar = b.EVENTS;
        sb.append(bVar.a());
        sb.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
        sb.append("data");
        sb.append(" STRING NOT NULL, ");
        sb.append(KEY_CREATED_AT);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(KEY_AUTOMATIC_DATA);
        sb.append(" INTEGER DEFAULT 0, ");
        sb.append(KEY_TOKEN);
        sb.append(" STRING NOT NULL DEFAULT '')");
        CREATE_EVENTS_TABLE = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("CREATE TABLE ");
        b bVar2 = b.PEOPLE;
        sb2.append(bVar2.a());
        sb2.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
        sb2.append("data");
        sb2.append(" STRING NOT NULL, ");
        sb2.append(KEY_CREATED_AT);
        sb2.append(" INTEGER NOT NULL, ");
        sb2.append(KEY_AUTOMATIC_DATA);
        sb2.append(" INTEGER DEFAULT 0, ");
        sb2.append(KEY_TOKEN);
        sb2.append(" STRING NOT NULL DEFAULT '')");
        CREATE_PEOPLE_TABLE = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("CREATE TABLE ");
        b bVar3 = b.GROUPS;
        sb3.append(bVar3.a());
        sb3.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
        sb3.append("data");
        sb3.append(" STRING NOT NULL, ");
        sb3.append(KEY_CREATED_AT);
        sb3.append(" INTEGER NOT NULL, ");
        sb3.append(KEY_AUTOMATIC_DATA);
        sb3.append(" INTEGER DEFAULT 0, ");
        sb3.append(KEY_TOKEN);
        sb3.append(" STRING NOT NULL DEFAULT '')");
        CREATE_GROUPS_TABLE = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append("CREATE TABLE ");
        b bVar4 = b.ANONYMOUS_PEOPLE;
        sb4.append(bVar4.a());
        sb4.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
        sb4.append("data");
        sb4.append(" STRING NOT NULL, ");
        sb4.append(KEY_CREATED_AT);
        sb4.append(" INTEGER NOT NULL, ");
        sb4.append(KEY_AUTOMATIC_DATA);
        sb4.append(" INTEGER DEFAULT 0, ");
        sb4.append(KEY_TOKEN);
        sb4.append(" STRING NOT NULL DEFAULT '')");
        CREATE_ANONYMOUS_PEOPLE_TABLE = sb4.toString();
        EVENTS_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON " + bVar.a() + " (" + KEY_CREATED_AT + ");";
        PEOPLE_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON " + bVar2.a() + " (" + KEY_CREATED_AT + ");";
        GROUPS_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON " + bVar3.a() + " (" + KEY_CREATED_AT + ");";
        ANONYMOUS_PEOPLE_TIME_INDEX = "CREATE INDEX IF NOT EXISTS time_idx ON " + bVar4.a() + " (" + KEY_CREATED_AT + ");";
    }

    public e(Context context, String str, d dVar) {
        this.mDb = new a(context, str, dVar);
    }

    private static String q(String str) {
        if (str == null || str.trim().isEmpty()) {
            return DATABASE_NAME;
        }
        return "mixpanel_" + str;
    }

    public static e r(Context context, d dVar) {
        e eVar;
        Map<String, e> map = sInstances;
        synchronized (map) {
            try {
                Context applicationContext = context.getApplicationContext();
                String strL = dVar.l();
                if (map.containsKey(strL)) {
                    eVar = map.get(strL);
                } else {
                    eVar = new e(applicationContext, dVar);
                    map.put(strL, eVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    protected boolean a() {
        return this.mDb.d();
    }

    public void m(String str, b bVar, String str2) {
        String strA = bVar.a();
        try {
            try {
                this.mDb.getWritableDatabase().delete(strA, new StringBuffer("_id <= " + str + " AND " + KEY_TOKEN + " = '" + str2 + "'").toString(), null);
            } catch (SQLiteException e) {
                com.mixpanel.android.util.d.d(LOGTAG, "Could not clean sent Mixpanel records from " + strA + ". Re-initializing database.", e);
                this.mDb.h();
            } catch (Exception e2) {
                com.mixpanel.android.util.d.d(LOGTAG, "Unknown exception. Could not clean sent Mixpanel records from " + strA + ".Re-initializing database.", e2);
                this.mDb.h();
            }
        } finally {
            this.mDb.close();
        }
    }

    public void n() {
        this.mDb.h();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x012b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0130  */
    /* JADX WARN: Code duplicated, block: B:57:0x0146  */
    /* JADX WARN: Code duplicated, block: B:59:0x014b  */
    /* JADX WARN: Multi-variable type inference failed */
    public String[] o(b bVar, String str) throws Throwable {
        Cursor cursorRawQuery;
        Cursor cursorRawQuery2;
        Object obj;
        String string;
        String string2;
        String str2;
        String strA = bVar.a();
        SQLiteDatabase readableDatabase = this.mDb.getReadableDatabase();
        Cursor cursor = null;
        try {
            StringBuffer stringBuffer = new StringBuffer("SELECT * FROM " + strA + " WHERE " + KEY_TOKEN + " = '" + str + "' ");
            StringBuffer stringBuffer2 = new StringBuffer("SELECT COUNT(*) FROM " + strA + " WHERE " + KEY_TOKEN + " = '" + str + "' ");
            StringBuilder sb = new StringBuilder();
            sb.append("ORDER BY created_at ASC LIMIT ");
            sb.append(Integer.toString(this.mDb.mConfig.g()));
            stringBuffer.append(sb.toString());
            cursorRawQuery2 = readableDatabase.rawQuery(stringBuffer.toString(), null);
            try {
                cursorRawQuery = readableDatabase.rawQuery(stringBuffer2.toString(), null);
                try {
                    try {
                        cursorRawQuery.moveToFirst();
                        String strValueOf = String.valueOf(cursorRawQuery.getInt(0));
                        try {
                            JSONArray jSONArray = new JSONArray();
                            string2 = null;
                            while (cursorRawQuery2.moveToNext()) {
                                if (cursorRawQuery2.isLast()) {
                                    string2 = cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex("_id") >= 0 ? cursorRawQuery2.getColumnIndex("_id") : 0);
                                }
                                try {
                                    jSONArray.put(new JSONObject(cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex("data") >= 0 ? cursorRawQuery2.getColumnIndex("data") : 1)));
                                } catch (JSONException unused) {
                                }
                            }
                            string = jSONArray.length() > 0 ? jSONArray.toString() : null;
                            this.mDb.close();
                            cursorRawQuery2.close();
                            cursorRawQuery.close();
                            str2 = strValueOf;
                        } catch (SQLiteException e) {
                            e = e;
                            obj = strValueOf;
                            com.mixpanel.android.util.d.d(LOGTAG, "Could not pull records for Mixpanel out of database " + strA + ". Waiting to send.", e);
                            this.mDb.close();
                            if (cursorRawQuery2 != null) {
                                cursorRawQuery2.close();
                            }
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            string = null;
                            string2 = null;
                            str2 = obj;
                        }
                    } catch (SQLiteException e2) {
                        e = e2;
                        obj = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery2;
                    this.mDb.close();
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e6) {
                e = e6;
                cursorRawQuery = null;
                obj = cursorRawQuery;
                com.mixpanel.android.util.d.d(LOGTAG, "Could not pull records for Mixpanel out of database " + strA + ". Waiting to send.", e);
                this.mDb.close();
                if (cursorRawQuery2 != null) {
                    cursorRawQuery2.close();
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                string = null;
                string2 = null;
                str2 = obj;
                if (string2 != null) {
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                cursorRawQuery = null;
                cursor = cursorRawQuery2;
                this.mDb.close();
                if (cursor != null) {
                    cursor.close();
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                throw th;
            }
        } catch (SQLiteException e7) {
            e = e7;
            cursorRawQuery2 = null;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
            this.mDb.close();
            if (cursor != null) {
                cursor.close();
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
        if (string2 != null || string == null) {
            return null;
        }
        return new String[]{string2, string, str2};
    }

    public File p() {
        return this.mDb.mDatabaseFile;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0154  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v7 */
    int s(String str, String str2) throws Throwable {
        Cursor cursorRawQuery;
        if (a()) {
            com.mixpanel.android.util.d.c(LOGTAG, "There is not enough space left on the device or the data was over the maximum size limit so it was discarded");
            return -2;
        }
        ?? r5 = 0;
        r5 = 0;
        int i10 = -1;
        try {
            try {
                try {
                    SQLiteDatabase writableDatabase = this.mDb.getWritableDatabase();
                    cursorRawQuery = writableDatabase.rawQuery(new StringBuffer("SELECT * FROM " + b.ANONYMOUS_PEOPLE.a() + " WHERE " + KEY_TOKEN + " = '" + str + "'").toString(), null);
                    try {
                        writableDatabase.beginTransaction();
                        while (cursorRawQuery.moveToNext()) {
                            try {
                                try {
                                    ContentValues contentValues = new ContentValues();
                                    contentValues.put(KEY_CREATED_AT, Long.valueOf(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex(KEY_CREATED_AT) >= 0 ? cursorRawQuery.getColumnIndex(KEY_CREATED_AT) : 2)));
                                    contentValues.put(KEY_AUTOMATIC_DATA, Integer.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(KEY_AUTOMATIC_DATA) >= 0 ? cursorRawQuery.getColumnIndex(KEY_AUTOMATIC_DATA) : 3)));
                                    contentValues.put(KEY_TOKEN, cursorRawQuery.getString(cursorRawQuery.getColumnIndex(KEY_TOKEN) >= 0 ? cursorRawQuery.getColumnIndex(KEY_TOKEN) : 4));
                                    JSONObject jSONObject = new JSONObject(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("data") >= 0 ? cursorRawQuery.getColumnIndex("data") : 1));
                                    jSONObject.put("$distinct_id", str2);
                                    contentValues.put("data", jSONObject.toString());
                                    writableDatabase.insert(b.PEOPLE.a(), null, contentValues);
                                    int i11 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("_id") >= 0 ? cursorRawQuery.getColumnIndex("_id") : 0);
                                    writableDatabase.delete(b.ANONYMOUS_PEOPLE.a(), "_id = " + i11, null);
                                    i10++;
                                } catch (JSONException unused) {
                                }
                            } catch (Throwable th) {
                                writableDatabase.endTransaction();
                                throw th;
                            }
                        }
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                        cursorRawQuery.close();
                    } catch (SQLiteException e) {
                        e = e;
                        com.mixpanel.android.util.d.d(LOGTAG, "Could not push anonymous updates records from " + b.ANONYMOUS_PEOPLE.a() + ". Re-initializing database.", e);
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        } else {
                            r5 = cursorRawQuery;
                        }
                        this.mDb.h();
                        if (r5 != 0) {
                            r5.close();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r5 = str;
                    if (r5 != 0) {
                        r5.close();
                    }
                    this.mDb.close();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (r5 != 0) {
                    r5.close();
                }
                this.mDb.close();
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursorRawQuery = null;
        }
        this.mDb.close();
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0121  */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00f3: MOVE (r6 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]) (LINE:244), block:B:32:0x00f3 */
    int t(Map<String, String> map, String str) throws Throwable {
        Cursor cursorRawQuery;
        Cursor cursor;
        if (a()) {
            com.mixpanel.android.util.d.c(LOGTAG, "There is not enough space left on the device or the data was over the maximum size limit so it was discarded");
            return -2;
        }
        int i10 = 0;
        Cursor cursor2 = null;
        try {
            try {
                try {
                    SQLiteDatabase writableDatabase = this.mDb.getWritableDatabase();
                    cursorRawQuery = writableDatabase.rawQuery(new StringBuffer("SELECT * FROM " + b.EVENTS.a() + " WHERE " + KEY_TOKEN + " = '" + str + "'").toString(), null);
                    try {
                        writableDatabase.beginTransaction();
                        int i11 = 0;
                        while (cursorRawQuery.moveToNext()) {
                            try {
                                try {
                                    try {
                                        ContentValues contentValues = new ContentValues();
                                        JSONObject jSONObject = new JSONObject(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("data") >= 0 ? cursorRawQuery.getColumnIndex("data") : 1));
                                        JSONObject jSONObject2 = jSONObject.getJSONObject("properties");
                                        for (Map.Entry<String, String> entry : map.entrySet()) {
                                            jSONObject2.put(entry.getKey(), entry.getValue());
                                        }
                                        jSONObject.put("properties", jSONObject2);
                                        contentValues.put("data", jSONObject.toString());
                                        int i12 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("_id") >= 0 ? cursorRawQuery.getColumnIndex("_id") : 0);
                                        writableDatabase.update(b.EVENTS.a(), contentValues, "_id = " + i12, null);
                                        i11++;
                                    } catch (JSONException unused) {
                                    }
                                } catch (Throwable th) {
                                    writableDatabase.endTransaction();
                                    throw th;
                                }
                            } catch (SQLiteException e) {
                                e = e;
                                i10 = i11;
                                com.mixpanel.android.util.d.d(LOGTAG, "Could not re-write events history. Re-initializing database.", e);
                                if (cursorRawQuery != null) {
                                    cursorRawQuery.close();
                                } else {
                                    cursor2 = cursorRawQuery;
                                }
                                this.mDb.h();
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                this.mDb.close();
                                return i10;
                            }
                        }
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                        cursorRawQuery.close();
                        this.mDb.close();
                        return i11;
                    } catch (SQLiteException e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    this.mDb.close();
                    throw th;
                }
            } catch (SQLiteException e6) {
                e = e6;
                cursorRawQuery = null;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
                cursor2.close();
            }
            this.mDb.close();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0080 A[PHI: r0
      0x0080: PHI (r0v5 android.database.Cursor) = (r0v4 android.database.Cursor), (r0v7 android.database.Cursor) binds: [B:17:0x007e, B:26:0x009a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v3 */
    public int j(JSONObject jSONObject, String str, b bVar) throws Throwable {
        Cursor cursorRawQuery;
        if (a()) {
            com.mixpanel.android.util.d.c(LOGTAG, "There is not enough space left on the device or the data was over the maximum size limit so it was discarded");
            return -2;
        }
        String strA = bVar.a();
        ?? r1 = 0;
        cursor = null;
        Cursor cursor = null;
        try {
            try {
                try {
                    SQLiteDatabase writableDatabase = this.mDb.getWritableDatabase();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("data", jSONObject.toString());
                    contentValues.put(KEY_CREATED_AT, Long.valueOf(System.currentTimeMillis()));
                    contentValues.put(KEY_TOKEN, str);
                    writableDatabase.insert(strA, null, contentValues);
                    cursorRawQuery = writableDatabase.rawQuery("SELECT COUNT(*) FROM " + strA + " WHERE token='" + str + "'", null);
                    try {
                        cursorRawQuery.moveToFirst();
                        int i10 = cursorRawQuery.getInt(0);
                        cursorRawQuery.close();
                        this.mDb.close();
                        return i10;
                    } catch (SQLiteException unused) {
                        com.mixpanel.android.util.d.c(LOGTAG, "Could not add Mixpanel data to table");
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        } else {
                            cursor = cursorRawQuery;
                        }
                        this.mDb.h();
                        if (cursor != null) {
                            cursor.close();
                        }
                        this.mDb.close();
                        return -1;
                    } catch (OutOfMemoryError unused2) {
                        cursor = cursorRawQuery;
                        com.mixpanel.android.util.d.c(LOGTAG, "Out of memory when adding Mixpanel data to table");
                        if (cursor != null) {
                            cursor.close();
                        }
                        this.mDb.close();
                        return -1;
                    }
                } catch (Throwable th) {
                    th = th;
                    r1 = jSONObject;
                    if (r1 != 0) {
                        r1.close();
                    }
                    this.mDb.close();
                    throw th;
                }
            } catch (SQLiteException unused3) {
                cursorRawQuery = null;
            } catch (OutOfMemoryError unused4) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void k(b bVar, String str) {
        String strA = bVar.a();
        try {
            try {
                this.mDb.getWritableDatabase().delete(strA, "token = '" + str + "'", null);
            } catch (SQLiteException e) {
                com.mixpanel.android.util.d.d(LOGTAG, "Could not clean timed-out Mixpanel records from " + strA + ". Re-initializing database.", e);
                this.mDb.h();
            }
        } finally {
            this.mDb.close();
        }
    }

    public void l(long j6, b bVar) {
        String strA = bVar.a();
        try {
            try {
                this.mDb.getWritableDatabase().delete(strA, "created_at <= " + j6, null);
            } catch (SQLiteException e) {
                com.mixpanel.android.util.d.d(LOGTAG, "Could not clean timed-out Mixpanel records from " + strA + ". Re-initializing database.", e);
                this.mDb.h();
            }
        } finally {
            this.mDb.close();
        }
    }
}
