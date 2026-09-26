package com.ss.android.tea.common.applog;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.bytedance.tea.common.utility.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String[] f3143a = {"_id", "name", TypedValues.TransitionType.S_DURATION, "session_id"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String[] f3144b = {"_id", "value", "is_crash", "timestamp", "retry_count", "retry_time", "log_type"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String[] f3145c = {"_id", "value", "timestamp", TypedValues.TransitionType.S_DURATION, "non_page", "app_version", "version_code", "pausetime", "launch_sent", "event_index"};
    static final String[] d = {"_id", "category", "tag", "label", "value", "ext_value", "ext_json", "user_id", "timestamp", "session_id", "event_index"};
    static final String[] e = {"_id", "log_type", "value", "session_id"};
    static final String[] f = {"_id", "log_type", "value"};
    private static final Object g = new Object();
    private static m h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private SQLiteDatabase f3146i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Context f3147j;

    private static class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, "ss_app_log.db", (SQLiteDatabase.CursorFactory) null, 9);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            if (i10 < 2) {
                sQLiteDatabase.execSQL("ALTER TABLE event ADD COLUMN user_id INTEGER");
            }
            if (i10 < 3) {
                sQLiteDatabase.execSQL("ALTER TABLE session ADD COLUMN launch_sent INTEGER NOT NULL DEFAULT 0");
            }
            if (i10 < 4) {
                sQLiteDatabase.execSQL("ALTER TABLE queue ADD COLUMN is_crash INTEGER NOT NULL DEFAULT 0");
            }
            if (i10 < 5) {
                sQLiteDatabase.execSQL("ALTER TABLE event ADD COLUMN ext_json TEXT");
            }
            if (i10 < 6) {
                sQLiteDatabase.execSQL("ALTER TABLE queue ADD COLUMN log_type INTEGER NOT NULL DEFAULT 0");
                sQLiteDatabase.execSQL("CREATE TABLE mon_log ( _id INTEGER PRIMARY KEY AUTOINCREMENT, log_type VARCHAR, value TEXT )");
            }
            if (i10 < 7) {
                sQLiteDatabase.execSQL("CREATE TABLE misc_log ( _id INTEGER PRIMARY KEY AUTOINCREMENT, log_type VARCHAR, value TEXT, session_id INTEGER  )");
            }
            if (i10 < 8) {
                sQLiteDatabase.execSQL("ALTER TABLE event ADD COLUMN event_index INTEGER NOT NULL DEFAULT 0");
            }
            if (i10 < 9) {
                sQLiteDatabase.execSQL("ALTER TABLE session ADD COLUMN event_index INTEGER NOT NULL DEFAULT 0");
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL("CREATE TABLE session ( _id INTEGER PRIMARY KEY AUTOINCREMENT, value VARCHAR NOT NULL, timestamp INTEGER, duration INTEGER, non_page INTEGER, app_version VARCHAR, version_code INTEGER, pausetime INTEGER,launch_sent INTEGER NOT NULL DEFAULT 0 , event_index INTEGER NOT NULL DEFAULT 0  )");
                sQLiteDatabase.execSQL("CREATE TABLE event ( _id INTEGER PRIMARY KEY AUTOINCREMENT, category VARCHAR, tag VARCHAR, label VARCHAR, value INTEGER, ext_value INTEGER, ext_json TEXT, user_id INTEGER, timestamp INTEGER, session_id INTEGER, event_index INTEGER NOT NULL DEFAULT 0 )");
                sQLiteDatabase.execSQL("CREATE TABLE page ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR, duration INTEGER, session_id INTEGER )");
                sQLiteDatabase.execSQL("CREATE TABLE queue ( _id INTEGER PRIMARY KEY AUTOINCREMENT, value TEXT, is_crash INTEGER NOT NULL DEFAULT 0, log_type INTEGER NOT NULL DEFAULT 0, timestamp INTEGER, retry_count INTEGER, retry_time INTEGER )");
                sQLiteDatabase.execSQL("CREATE TABLE mon_log ( _id INTEGER PRIMARY KEY AUTOINCREMENT, log_type VARCHAR, value TEXT )");
                sQLiteDatabase.execSQL("CREATE TABLE misc_log ( _id INTEGER PRIMARY KEY AUTOINCREMENT, log_type VARCHAR, value TEXT, session_id INTEGER  )");
            } catch (Exception e) {
                Logger.e("AppLog", "create db exception " + e);
            }
        }
    }

    private long o(String str) {
        return g(str, 0);
    }

    private synchronized void q() {
        try {
            SQLiteDatabase sQLiteDatabase = this.f3146i;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                this.f3146i.close();
                this.f3146i = null;
            }
        } catch (Throwable th) {
            Logger.w("AppLog", "closeDatabase error: " + th);
        }
    }

    synchronized long a(long j6, String str, String str2) {
        ContentValues contentValues;
        contentValues = new ContentValues();
        contentValues.put("log_type", str);
        contentValues.put("value", str2);
        contentValues.put("session_id", Long.valueOf(j6));
        return this.f3146i.insert("misc_log", null, contentValues);
    }

    public synchronized long b(q qVar) {
        try {
            SQLiteDatabase sQLiteDatabase = this.f3146i;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("category", qVar.f3154b);
                contentValues.put("tag", qVar.f3155c);
                if (!com.bytedance.tea.common.utility.d.a(qVar.d)) {
                    contentValues.put("label", qVar.d);
                }
                contentValues.put("value", Long.valueOf(qVar.e));
                contentValues.put("ext_value", Long.valueOf(qVar.f));
                if (!com.bytedance.tea.common.utility.d.a(qVar.f3157j)) {
                    contentValues.put("ext_json", qVar.f3157j);
                }
                contentValues.put("user_id", Long.valueOf(qVar.g));
                contentValues.put("timestamp", Long.valueOf(qVar.h));
                contentValues.put("session_id", Long.valueOf(qVar.f3156i));
                contentValues.put("event_index", Long.valueOf(qVar.l));
                return this.f3146i.insert(NotificationCompat.CATEGORY_EVENT, null, contentValues);
            }
            Logger.w("AppLog", "db not establish and open");
            return -1L;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized long c(s sVar, long j6) {
        SQLiteDatabase sQLiteDatabase = this.f3146i;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            Logger.w("AppLog", "db not establish and open");
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("pausetime", Long.valueOf(j6));
            this.f3146i.update("session", contentValues, "_id = ?", new String[]{String.valueOf(sVar.f3163c)});
        } catch (Exception e2) {
            Logger.w("AppLog", "update session pausetime exception: " + e2);
        }
        try {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("name", sVar.f3161a);
            contentValues2.put(TypedValues.TransitionType.S_DURATION, Integer.valueOf(sVar.f3162b));
            contentValues2.put("session_id", Long.valueOf(sVar.f3163c));
            return this.f3146i.insert("page", null, contentValues2);
        } catch (Exception e6) {
            Logger.w("AppLog", "insert page exception: " + e6);
            return 0L;
        }
    }

    public synchronized long d(x xVar) {
        SQLiteDatabase sQLiteDatabase = this.f3146i;
        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
            boolean z6 = xVar.f3179i;
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", xVar.f3177b);
            contentValues.put("timestamp", Long.valueOf(xVar.f3178c));
            contentValues.put(TypedValues.TransitionType.S_DURATION, Integer.valueOf(xVar.e));
            contentValues.put("non_page", Integer.valueOf(z6 ? 1 : 0));
            contentValues.put("app_version", xVar.f);
            contentValues.put("version_code", Integer.valueOf(xVar.g));
            contentValues.put("event_index", Long.valueOf(xVar.d));
            return this.f3146i.insert("session", null, contentValues);
        }
        Logger.w("AppLog", "db not establish and open");
        return -1L;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x02ad A[Catch: all -> 0x01a6, Exception -> 0x01ab, TRY_ENTER, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x02be A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x02c7 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x02d3 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x02de A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x031e A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0326  */
    /* JADX WARN: Code duplicated, block: B:134:0x0337  */
    /* JADX WARN: Code duplicated, block: B:141:0x0365  */
    /* JADX WARN: Code duplicated, block: B:150:0x038f  */
    /* JADX WARN: Code duplicated, block: B:159:0x03ca A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x040a A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:169:0x042b A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x0438 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x0443 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:176:0x045b A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x0495 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x04a0 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:196:0x04c5 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:232:0x036b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x013e A[Catch: all -> 0x004b, Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:11:0x0025, B:13:0x002d, B:15:0x0031, B:21:0x0058, B:24:0x0070, B:40:0x00df, B:43:0x0115, B:45:0x0127, B:51:0x013e, B:53:0x0145, B:55:0x0162), top: B:219:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0145 A[Catch: all -> 0x004b, Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:11:0x0025, B:13:0x002d, B:15:0x0031, B:21:0x0058, B:24:0x0070, B:40:0x00df, B:43:0x0115, B:45:0x0127, B:51:0x013e, B:53:0x0145, B:55:0x0162), top: B:219:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x015e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0187 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x01a1 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x01b8 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:73:0x01cc A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:77:0x01e4 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:81:0x01f5 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0200  */
    /* JADX WARN: Code duplicated, block: B:85:0x0218  */
    /* JADX WARN: Code duplicated, block: B:88:0x0220  */
    /* JADX WARN: Code duplicated, block: B:91:0x0228  */
    /* JADX WARN: Code duplicated, block: B:94:0x022d A[Catch: all -> 0x01a6, Exception -> 0x01ab, TRY_ENTER, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0247 A[Catch: all -> 0x01a6, Exception -> 0x01ab, TryCatch #2 {Exception -> 0x01ab, blocks: (B:56:0x0172, B:57:0x0181, B:59:0x0187, B:61:0x01a1, B:67:0x01b1, B:69:0x01b8, B:71:0x01c5, B:73:0x01cc, B:75:0x01dd, B:77:0x01e4, B:79:0x01ee, B:81:0x01f5, B:83:0x0204, B:86:0x021a, B:94:0x022d, B:95:0x0232, B:97:0x0247, B:99:0x024d, B:124:0x02fc, B:111:0x02ad, B:113:0x02be, B:116:0x02c7, B:119:0x02d3, B:122:0x02de, B:123:0x02e4, B:127:0x031e, B:130:0x032a, B:132:0x0330, B:135:0x0339, B:137:0x0356, B:139:0x035c, B:148:0x038b, B:163:0x03d7, B:165:0x03db, B:168:0x040a, B:173:0x0443, B:174:0x0455, B:176:0x045b, B:177:0x0460, B:179:0x0469, B:181:0x0471, B:183:0x0479, B:185:0x0481, B:187:0x0489, B:197:0x04ca, B:191:0x0495, B:193:0x04a0, B:194:0x04a6, B:196:0x04c5, B:169:0x042b, B:171:0x0438, B:155:0x0397, B:157:0x03a0, B:159:0x03ca, B:160:0x03d0, B:147:0x0375), top: B:221:0x0172 }] */
    public synchronized long e(x xVar, x xVar2, JSONObject jSONObject, boolean z6, long[] jArr, String[] strArr, b.e eVar, boolean z10, JSONObject jSONObject2) {
        Throwable th;
        Cursor cursor;
        Exception exc;
        JSONObject jSONObject3;
        JSONArray jSONArray;
        JSONObject jSONObject4;
        boolean z11;
        String str;
        String[] strArr2;
        Cursor cursorQuery;
        JSONArray jSONArray2;
        JSONArray jSONArray3;
        long j6;
        int i10;
        int i11;
        int i12;
        JSONObject jSONObject5;
        boolean z12;
        Object obj;
        JSONObject jSONObject6;
        int i13;
        String[] strArr3;
        int i14;
        JSONObject jSONObject7;
        JSONArray jSONArray4;
        JSONObject jSONObject8;
        JSONObject jSONObject9;
        JSONArray jSONArrayJ;
        boolean z13;
        JSONObject jSONObject10;
        String[] strArr4;
        String string;
        long jO;
        JSONObject jSONObject11;
        long j10;
        String string2;
        String string3;
        String string4;
        long j11;
        long j12;
        String string5;
        long j13;
        long j14;
        long j15;
        long j16;
        int i15;
        long j17;
        JSONObject jSONObject12;
        JSONArray jSONArray5;
        long j18;
        SQLiteDatabase sQLiteDatabase = this.f3146i;
        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
            int i16 = 1;
            String[] strArr5 = {String.valueOf(xVar.f3176a)};
            try {
                try {
                    if (com.bytedance.tea.common.utility.d.a(xVar.f) || xVar.g <= 0) {
                        jSONObject3 = jSONObject;
                    } else {
                        JSONObject jSONObject13 = new JSONObject(jSONObject, b.f3091a);
                        jSONObject13.put("app_version", xVar.f);
                        jSONObject13.put("version_code", xVar.g);
                        jSONObject3 = jSONObject13;
                    }
                    this.f3146i.beginTransaction();
                    JSONObject jSONObject14 = new JSONObject();
                    JSONArray jSONArray6 = new JSONArray();
                    try {
                        try {
                            if (!xVar.f3179i && !z6) {
                                int i17 = 2;
                                Cursor cursorQuery2 = this.f3146i.query("page", f3143a, "session_id = ?", strArr5, null, null, "_id ASC", "500");
                                try {
                                    JSONArray jSONArray7 = new JSONArray();
                                    int i18 = 0;
                                    int i19 = 0;
                                    while (cursorQuery2.moveToNext()) {
                                        JSONArray jSONArray8 = jSONArray6;
                                        String string6 = cursorQuery2.getString(i16);
                                        int i20 = cursorQuery2.getInt(i17);
                                        if (!com.bytedance.tea.common.utility.d.a(string6) && i20 > 0) {
                                            JSONArray jSONArray9 = new JSONArray();
                                            jSONArray9.put(0, string6);
                                            jSONArray9.put(1, i20);
                                            i18 += i20;
                                            i19++;
                                            jSONArray7.put(jSONArray9);
                                        }
                                        jSONArray6 = jSONArray8;
                                        jSONObject3 = jSONObject3;
                                        i17 = 2;
                                        i16 = 1;
                                    }
                                    jSONArray = jSONArray6;
                                    jSONObject4 = jSONObject3;
                                    cursorQuery2.close();
                                    if (i19 > 0) {
                                        JSONObject jSONObject15 = new JSONObject();
                                        jSONObject15.put(TypedValues.TransitionType.S_DURATION, i18);
                                        jSONObject15.put("datetime", b.v(xVar.f3178c));
                                        jSONObject15.put("session_id", xVar.f3177b);
                                        jSONObject15.put("activites", jSONArray7);
                                        jSONObject15.put("local_time_ms", System.currentTimeMillis());
                                        b.b0(jSONObject15);
                                        if (eVar != null) {
                                            try {
                                                eVar.b(xVar.f3176a, xVar.f3177b, jSONObject15);
                                            } catch (Exception unused) {
                                            }
                                        }
                                        JSONArray jSONArray10 = new JSONArray();
                                        jSONArray10.put(jSONObject15);
                                        jSONObject14.put("terminate", jSONArray10);
                                        int i21 = b.r;
                                        if (i21 > 0) {
                                            jSONObject14.put("launch_from", i21);
                                            b.r = 0;
                                        }
                                    } else {
                                        z11 = true;
                                    }
                                    if (z6) {
                                        j18 = jArr[0];
                                        if (j18 > 0) {
                                            str = "_id > ? AND session_id=?";
                                            strArr2 = new String[]{String.valueOf(j18), String.valueOf(xVar.f3176a)};
                                        } else {
                                            str = "session_id = ?";
                                            strArr2 = strArr5;
                                        }
                                    } else {
                                        str = "session_id = ?";
                                        strArr2 = strArr5;
                                    }
                                    cursorQuery = this.f3146i.query(NotificationCompat.CATEGORY_EVENT, d, str, strArr2, null, null, "_id ASC", "200");
                                    jSONArray2 = new JSONArray();
                                    jSONArray3 = new JSONArray();
                                    j6 = 0;
                                    i10 = 0;
                                    i11 = 0;
                                    i12 = 0;
                                    jSONObject5 = jSONObject14;
                                    while (cursorQuery.moveToNext()) {
                                        boolean z14 = z11;
                                        j10 = cursorQuery.getLong(0);
                                        String[] strArr6 = strArr5;
                                        string2 = cursorQuery.getString(1);
                                        string3 = cursorQuery.getString(2);
                                        if (cursorQuery.isNull(3)) {
                                            string4 = null;
                                        } else {
                                            string4 = cursorQuery.getString(3);
                                        }
                                        if (cursorQuery.isNull(4)) {
                                            j11 = 0;
                                        } else {
                                            j11 = cursorQuery.getLong(4);
                                        }
                                        if (cursorQuery.isNull(5)) {
                                            j12 = 0;
                                        } else {
                                            j12 = cursorQuery.getLong(5);
                                        }
                                        if (cursorQuery.isNull(6)) {
                                            string5 = null;
                                        } else {
                                            string5 = cursorQuery.getString(6);
                                        }
                                        if (cursorQuery.isNull(7)) {
                                            j13 = j12;
                                            j14 = 0;
                                        } else {
                                            long j19 = j12;
                                            j14 = cursorQuery.getLong(7);
                                            j13 = j19;
                                        }
                                        j15 = j11;
                                        j16 = cursorQuery.getLong(8);
                                        i15 = i11;
                                        long j20 = cursorQuery.getLong(10);
                                        if (j6 < j10) {
                                            j6 = j10;
                                        }
                                        if (com.bytedance.tea.common.utility.d.a(string5)) {
                                            j17 = j6;
                                        } else {
                                            j17 = j6;
                                            try {
                                                jSONObject12 = new JSONObject(string5);
                                            } catch (Exception unused2) {
                                                jSONObject12 = null;
                                            }
                                            if (jSONObject12 == null) {
                                                jSONObject12 = new JSONObject();
                                            }
                                            jSONObject12.put("tea_event_index", j20);
                                            jSONObject12.put("local_time_ms", j16);
                                            if (jSONObject12.optInt("_event_v3", 0) == 1 || com.bytedance.tea.common.utility.d.a(string2) || !string2.equalsIgnoreCase("event_v3")) {
                                                jSONObject12.put("category", string2);
                                                jSONObject12.put("tag", string3);
                                                if (!com.bytedance.tea.common.utility.d.a(string4)) {
                                                    jSONObject12.put("label", string4);
                                                }
                                                if (j15 != 0) {
                                                    jSONObject12.put("value", j15);
                                                }
                                                if (j13 != 0) {
                                                    jSONObject12.put("ext_value", j13);
                                                }
                                                if (j14 > 0) {
                                                    jSONObject12.put("user_id", j14);
                                                }
                                                jSONObject12.put("session_id", xVar.f3177b);
                                                jSONObject12.put("datetime", b.v(j16));
                                                jSONArray5 = jSONArray2;
                                                jSONArray5.put(jSONObject12);
                                                i10++;
                                            } else {
                                                try {
                                                    JSONObject jSONObject16 = new JSONObject();
                                                    if (jSONObject12.has("nt")) {
                                                        jSONObject16.put("nt", jSONObject12.optInt("nt"));
                                                    }
                                                    jSONObject12.remove("nt");
                                                    jSONObject12.remove("_event_v3");
                                                    if (j14 > 0) {
                                                        jSONObject16.put("user_id", j14);
                                                    }
                                                    jSONObject16.put(NotificationCompat.CATEGORY_EVENT, string3);
                                                    jSONObject16.put("params", jSONObject12);
                                                    jSONObject16.put("session_id", xVar.f3177b);
                                                    jSONObject16.put("datetime", b.v(j16));
                                                    jSONArray3.put(jSONObject16);
                                                    i11 = i15 + 1;
                                                    jSONArray5 = jSONArray2;
                                                    i10 = i10;
                                                } catch (Exception unused3) {
                                                    jSONArray5 = jSONArray2;
                                                    i10 = i10;
                                                    i11 = i15;
                                                }
                                                i12++;
                                                jSONArray2 = jSONArray5;
                                                z11 = z14;
                                                j6 = j17;
                                                strArr5 = strArr6;
                                                jSONObject5 = jSONObject5;
                                            }
                                            i11 = i15;
                                            i12++;
                                            jSONArray2 = jSONArray5;
                                            z11 = z14;
                                            j6 = j17;
                                            strArr5 = strArr6;
                                            jSONObject5 = jSONObject5;
                                        }
                                        jSONObject12 = null;
                                        if (jSONObject12 == null) {
                                            jSONObject12 = new JSONObject();
                                        }
                                        jSONObject12.put("tea_event_index", j20);
                                        jSONObject12.put("local_time_ms", j16);
                                        if (jSONObject12.optInt("_event_v3", 0) == 1) {
                                            jSONObject12.put("category", string2);
                                            jSONObject12.put("tag", string3);
                                            if (!com.bytedance.tea.common.utility.d.a(string4)) {
                                                jSONObject12.put("label", string4);
                                            }
                                            if (j15 != 0) {
                                                jSONObject12.put("value", j15);
                                            }
                                            if (j13 != 0) {
                                                jSONObject12.put("ext_value", j13);
                                            }
                                            if (j14 > 0) {
                                                jSONObject12.put("user_id", j14);
                                            }
                                            jSONObject12.put("session_id", xVar.f3177b);
                                            jSONObject12.put("datetime", b.v(j16));
                                            jSONArray5 = jSONArray2;
                                            jSONArray5.put(jSONObject12);
                                            i10++;
                                            i11 = i15;
                                        } else {
                                            jSONObject12.put("category", string2);
                                            jSONObject12.put("tag", string3);
                                            if (!com.bytedance.tea.common.utility.d.a(string4)) {
                                                jSONObject12.put("label", string4);
                                            }
                                            if (j15 != 0) {
                                                jSONObject12.put("value", j15);
                                            }
                                            if (j13 != 0) {
                                                jSONObject12.put("ext_value", j13);
                                            }
                                            if (j14 > 0) {
                                                jSONObject12.put("user_id", j14);
                                            }
                                            jSONObject12.put("session_id", xVar.f3177b);
                                            jSONObject12.put("datetime", b.v(j16));
                                            jSONArray5 = jSONArray2;
                                            jSONArray5.put(jSONObject12);
                                            i10++;
                                            i11 = i15;
                                        }
                                        i12++;
                                        jSONArray2 = jSONArray5;
                                        z11 = z14;
                                        j6 = j17;
                                        strArr5 = strArr6;
                                        jSONObject5 = jSONObject5;
                                    }
                                    z12 = z11;
                                    obj = jSONArray2;
                                    jSONObject6 = jSONObject5;
                                    i13 = i11;
                                    strArr3 = strArr5;
                                    i14 = i12;
                                    if (i10 > 0) {
                                        jSONObject11 = jSONObject6;
                                        jSONObject11.put(NotificationCompat.CATEGORY_EVENT, obj);
                                    } else {
                                        jSONObject7 = jSONObject6;
                                    }
                                    if (i13 > 0 && b.F0()) {
                                        jSONObject7 = jSONObject11;
                                        jSONObject7.put("event_v3", jSONArray3);
                                    }
                                    if (i14 > 0) {
                                        z12 = true;
                                    }
                                    jSONArray4 = jSONArray;
                                    jSONObject8 = jSONObject7;
                                    jSONObject9 = jSONObject4;
                                    jSONArrayJ = j(z10, xVar.f3176a, xVar.f3177b, jSONObject9, jSONObject2);
                                    if (jSONArrayJ != null || jSONArrayJ.length() <= 0) {
                                        z13 = z12;
                                    } else {
                                        jSONObject8.put("log_data", jSONArrayJ);
                                        z13 = true;
                                    }
                                    if (eVar != 0) {
                                        try {
                                            eVar.a(xVar.f3176a, xVar.f3177b, jSONObject8);
                                        } catch (Exception e2) {
                                            Logger.w("AppLog", "onLogSessionBatchEvent exception: " + e2);
                                        }
                                    }
                                    if (xVar.f3180j) {
                                        z13 = false;
                                    }
                                    if ((z6 || !z10) && z13 && jSONObject8.isNull("terminate")) {
                                        jSONObject10 = new JSONObject();
                                        jSONObject10.put("datetime", b.v(xVar.f3178c));
                                        jSONObject10.put("session_id", xVar.f3177b);
                                        jSONObject10.put("local_time_ms", xVar.f3178c);
                                        jSONObject10.put("tea_event_index", xVar.d);
                                        if (xVar.f3179i) {
                                            jSONObject10.put("is_background", true);
                                        }
                                        jSONArray4.put(jSONObject10);
                                    }
                                    if (xVar2 != null && !xVar2.f3179i) {
                                        JSONObject jSONObject17 = new JSONObject();
                                        jSONObject17.put("datetime", b.v(xVar2.f3178c));
                                        jSONObject17.put("session_id", xVar2.f3177b);
                                        jSONObject17.put("local_time_ms", xVar2.f3178c);
                                        jSONObject17.put("tea_event_index", xVar2.d);
                                        jSONArray4.put(jSONObject17);
                                    }
                                    if (i14 >= 200) {
                                        this.f3146i.delete(NotificationCompat.CATEGORY_EVENT, "session_id= ? AND _id<= ?", new String[]{String.valueOf(xVar.f3176a), String.valueOf(j6)});
                                        jArr[0] = j6;
                                        strArr4 = strArr3;
                                    } else {
                                        strArr4 = strArr3;
                                        this.f3146i.delete(NotificationCompat.CATEGORY_EVENT, "session_id = ?", strArr4);
                                        if (z10) {
                                            this.f3146i.delete("session", "_id = ?", strArr4);
                                        }
                                    }
                                    if (z10) {
                                        this.f3146i.delete("page", "session_id = ?", strArr4);
                                        this.f3146i.delete("misc_log", "session_id = ?", strArr4);
                                    }
                                    if (jSONArray4.length() > 0) {
                                        jSONObject8.put("launch", jSONArray4);
                                    }
                                    if (!jSONObject8.isNull("terminate") && jSONObject8.isNull(NotificationCompat.CATEGORY_EVENT) && jSONObject8.isNull("launch") && jSONObject8.isNull("item_impression") && jSONObject8.isNull("log_data") && jSONObject8.isNull("event_v3")) {
                                        jO = 0;
                                    } else {
                                        jSONObject8.put("magic_tag", "ss_app_log");
                                        if (jSONObject2 != null) {
                                            jSONObject8.put("time_sync", jSONObject2);
                                        }
                                        jSONObject8.put("header", jSONObject9);
                                        jSONObject8.put("_gen_time", System.currentTimeMillis());
                                        string = jSONObject8.toString();
                                        strArr[0] = string;
                                        jO = o(string);
                                        if (Logger.debug()) {
                                            p.f(this.f3147j, jO, string);
                                        }
                                    }
                                    this.f3146i.setTransactionSuccessful();
                                    m(cursorQuery, this.f3146i);
                                    return jO;
                                } catch (Exception e6) {
                                    exc = e6;
                                    cursor = cursorQuery2;
                                    try {
                                        Logger.w("AppLog", "batchSession exception " + exc);
                                        m(cursor, this.f3146i);
                                        return 0L;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        m(cursor, this.f3146i);
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    cursor = cursorQuery2;
                                    m(cursor, this.f3146i);
                                    throw th;
                                }
                            }
                            jSONArray = jSONArray6;
                            jSONObject4 = jSONObject3;
                            jSONArray2 = new JSONArray();
                            jSONArray3 = new JSONArray();
                            j6 = 0;
                            i10 = 0;
                            i11 = 0;
                            i12 = 0;
                            jSONObject5 = jSONObject14;
                            while (cursorQuery.moveToNext()) {
                                boolean z15 = z11;
                                j10 = cursorQuery.getLong(0);
                                String[] strArr7 = strArr5;
                                string2 = cursorQuery.getString(1);
                                string3 = cursorQuery.getString(2);
                                if (cursorQuery.isNull(3)) {
                                    string4 = cursorQuery.getString(3);
                                } else {
                                    string4 = null;
                                }
                                if (cursorQuery.isNull(4)) {
                                    j11 = cursorQuery.getLong(4);
                                } else {
                                    j11 = 0;
                                }
                                if (cursorQuery.isNull(5)) {
                                    j12 = cursorQuery.getLong(5);
                                } else {
                                    j12 = 0;
                                }
                                if (cursorQuery.isNull(6)) {
                                    string5 = cursorQuery.getString(6);
                                } else {
                                    string5 = null;
                                }
                                if (cursorQuery.isNull(7)) {
                                    long j110 = j12;
                                    j14 = cursorQuery.getLong(7);
                                    j13 = j110;
                                } else {
                                    j13 = j12;
                                    j14 = 0;
                                }
                                j15 = j11;
                                j16 = cursorQuery.getLong(8);
                                i15 = i11;
                                long j21 = cursorQuery.getLong(10);
                                if (j6 < j10) {
                                    j6 = j10;
                                }
                                if (com.bytedance.tea.common.utility.d.a(string5)) {
                                    j17 = j6;
                                    jSONObject12 = new JSONObject(string5);
                                    if (jSONObject12 == null) {
                                        jSONObject12 = new JSONObject();
                                    }
                                    jSONObject12.put("tea_event_index", j21);
                                    jSONObject12.put("local_time_ms", j16);
                                    if (jSONObject12.optInt("_event_v3", 0) == 1) {
                                        jSONObject12.put("category", string2);
                                        jSONObject12.put("tag", string3);
                                        if (!com.bytedance.tea.common.utility.d.a(string4)) {
                                            jSONObject12.put("label", string4);
                                        }
                                        if (j15 != 0) {
                                            jSONObject12.put("value", j15);
                                        }
                                        if (j13 != 0) {
                                            jSONObject12.put("ext_value", j13);
                                        }
                                        if (j14 > 0) {
                                            jSONObject12.put("user_id", j14);
                                        }
                                        jSONObject12.put("session_id", xVar.f3177b);
                                        jSONObject12.put("datetime", b.v(j16));
                                        jSONArray5 = jSONArray2;
                                        jSONArray5.put(jSONObject12);
                                        i10++;
                                        i11 = i15;
                                    } else {
                                        jSONObject12.put("category", string2);
                                        jSONObject12.put("tag", string3);
                                        if (!com.bytedance.tea.common.utility.d.a(string4)) {
                                            jSONObject12.put("label", string4);
                                        }
                                        if (j15 != 0) {
                                            jSONObject12.put("value", j15);
                                        }
                                        if (j13 != 0) {
                                            jSONObject12.put("ext_value", j13);
                                        }
                                        if (j14 > 0) {
                                            jSONObject12.put("user_id", j14);
                                        }
                                        jSONObject12.put("session_id", xVar.f3177b);
                                        jSONObject12.put("datetime", b.v(j16));
                                        jSONArray5 = jSONArray2;
                                        jSONArray5.put(jSONObject12);
                                        i10++;
                                        i11 = i15;
                                    }
                                    i12++;
                                    jSONArray2 = jSONArray5;
                                    z11 = z15;
                                    j6 = j17;
                                    strArr5 = strArr7;
                                    jSONObject5 = jSONObject5;
                                } else {
                                    j17 = j6;
                                }
                                jSONObject12 = null;
                                if (jSONObject12 == null) {
                                    jSONObject12 = new JSONObject();
                                }
                                jSONObject12.put("tea_event_index", j21);
                                jSONObject12.put("local_time_ms", j16);
                                if (jSONObject12.optInt("_event_v3", 0) == 1) {
                                    jSONObject12.put("category", string2);
                                    jSONObject12.put("tag", string3);
                                    if (!com.bytedance.tea.common.utility.d.a(string4)) {
                                        jSONObject12.put("label", string4);
                                    }
                                    if (j15 != 0) {
                                        jSONObject12.put("value", j15);
                                    }
                                    if (j13 != 0) {
                                        jSONObject12.put("ext_value", j13);
                                    }
                                    if (j14 > 0) {
                                        jSONObject12.put("user_id", j14);
                                    }
                                    jSONObject12.put("session_id", xVar.f3177b);
                                    jSONObject12.put("datetime", b.v(j16));
                                    jSONArray5 = jSONArray2;
                                    jSONArray5.put(jSONObject12);
                                    i10++;
                                    i11 = i15;
                                } else {
                                    jSONObject12.put("category", string2);
                                    jSONObject12.put("tag", string3);
                                    if (!com.bytedance.tea.common.utility.d.a(string4)) {
                                        jSONObject12.put("label", string4);
                                    }
                                    if (j15 != 0) {
                                        jSONObject12.put("value", j15);
                                    }
                                    if (j13 != 0) {
                                        jSONObject12.put("ext_value", j13);
                                    }
                                    if (j14 > 0) {
                                        jSONObject12.put("user_id", j14);
                                    }
                                    jSONObject12.put("session_id", xVar.f3177b);
                                    jSONObject12.put("datetime", b.v(j16));
                                    jSONArray5 = jSONArray2;
                                    jSONArray5.put(jSONObject12);
                                    i10++;
                                    i11 = i15;
                                }
                                i12++;
                                jSONArray2 = jSONArray5;
                                z11 = z15;
                                j6 = j17;
                                strArr5 = strArr7;
                                jSONObject5 = jSONObject5;
                            }
                            z12 = z11;
                            obj = jSONArray2;
                            jSONObject6 = jSONObject5;
                            i13 = i11;
                            strArr3 = strArr5;
                            i14 = i12;
                            if (i10 > 0) {
                                jSONObject11 = jSONObject6;
                                jSONObject11.put(NotificationCompat.CATEGORY_EVENT, obj);
                            } else {
                                jSONObject7 = jSONObject6;
                            }
                            if (i13 > 0) {
                                jSONObject7 = jSONObject11;
                                jSONObject7.put("event_v3", jSONArray3);
                            }
                            if (i14 > 0) {
                                z12 = true;
                            }
                            jSONArray4 = jSONArray;
                            jSONObject8 = jSONObject7;
                            jSONObject9 = jSONObject4;
                            jSONArrayJ = j(z10, xVar.f3176a, xVar.f3177b, jSONObject9, jSONObject2);
                            if (jSONArrayJ != null) {
                                z13 = z12;
                            } else {
                                z13 = z12;
                            }
                            if (eVar != 0) {
                                eVar.a(xVar.f3176a, xVar.f3177b, jSONObject8);
                            }
                            if (xVar.f3180j) {
                                z13 = false;
                            }
                            if (z6) {
                                jSONObject10 = new JSONObject();
                                jSONObject10.put("datetime", b.v(xVar.f3178c));
                                jSONObject10.put("session_id", xVar.f3177b);
                                jSONObject10.put("local_time_ms", xVar.f3178c);
                                jSONObject10.put("tea_event_index", xVar.d);
                                if (xVar.f3179i) {
                                    jSONObject10.put("is_background", true);
                                }
                                jSONArray4.put(jSONObject10);
                            } else {
                                jSONObject10 = new JSONObject();
                                jSONObject10.put("datetime", b.v(xVar.f3178c));
                                jSONObject10.put("session_id", xVar.f3177b);
                                jSONObject10.put("local_time_ms", xVar.f3178c);
                                jSONObject10.put("tea_event_index", xVar.d);
                                if (xVar.f3179i) {
                                    jSONObject10.put("is_background", true);
                                }
                                jSONArray4.put(jSONObject10);
                            }
                            if (xVar2 != null) {
                                JSONObject jSONObject18 = new JSONObject();
                                jSONObject18.put("datetime", b.v(xVar2.f3178c));
                                jSONObject18.put("session_id", xVar2.f3177b);
                                jSONObject18.put("local_time_ms", xVar2.f3178c);
                                jSONObject18.put("tea_event_index", xVar2.d);
                                jSONArray4.put(jSONObject18);
                            }
                            if (i14 >= 200) {
                                this.f3146i.delete(NotificationCompat.CATEGORY_EVENT, "session_id= ? AND _id<= ?", new String[]{String.valueOf(xVar.f3176a), String.valueOf(j6)});
                                jArr[0] = j6;
                                strArr4 = strArr3;
                            } else {
                                strArr4 = strArr3;
                                this.f3146i.delete(NotificationCompat.CATEGORY_EVENT, "session_id = ?", strArr4);
                                if (z10) {
                                    this.f3146i.delete("session", "_id = ?", strArr4);
                                }
                            }
                            if (z10) {
                                this.f3146i.delete("page", "session_id = ?", strArr4);
                                this.f3146i.delete("misc_log", "session_id = ?", strArr4);
                            }
                            if (jSONArray4.length() > 0) {
                                jSONObject8.put("launch", jSONArray4);
                            }
                            if (!jSONObject8.isNull("terminate")) {
                                jSONObject8.put("magic_tag", "ss_app_log");
                                if (jSONObject2 != null) {
                                    jSONObject8.put("time_sync", jSONObject2);
                                }
                                jSONObject8.put("header", jSONObject9);
                                jSONObject8.put("_gen_time", System.currentTimeMillis());
                                string = jSONObject8.toString();
                                strArr[0] = string;
                                jO = o(string);
                                if (Logger.debug()) {
                                    p.f(this.f3147j, jO, string);
                                }
                            } else {
                                jSONObject8.put("magic_tag", "ss_app_log");
                                if (jSONObject2 != null) {
                                    jSONObject8.put("time_sync", jSONObject2);
                                }
                                jSONObject8.put("header", jSONObject9);
                                jSONObject8.put("_gen_time", System.currentTimeMillis());
                                string = jSONObject8.toString();
                                strArr[0] = string;
                                jO = o(string);
                                if (Logger.debug()) {
                                    p.f(this.f3147j, jO, string);
                                }
                            }
                            this.f3146i.setTransactionSuccessful();
                            m(cursorQuery, this.f3146i);
                            return jO;
                        } catch (Exception e7) {
                            exc = e7;
                            cursor = cursorQuery;
                            Logger.w("AppLog", "batchSession exception " + exc);
                            m(cursor, this.f3146i);
                            return 0L;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        cursor = cursorQuery;
                        m(cursor, this.f3146i);
                        throw th;
                    }
                    z11 = false;
                    if (z6) {
                        j18 = jArr[0];
                        if (j18 > 0) {
                            str = "_id > ? AND session_id=?";
                            strArr2 = new String[]{String.valueOf(j18), String.valueOf(xVar.f3176a)};
                        } else {
                            str = "session_id = ?";
                            strArr2 = strArr5;
                        }
                    } else {
                        str = "session_id = ?";
                        strArr2 = strArr5;
                    }
                    cursorQuery = this.f3146i.query(NotificationCompat.CATEGORY_EVENT, d, str, strArr2, null, null, "_id ASC", "200");
                } catch (Exception e10) {
                    exc = e10;
                    cursor = null;
                }
            } catch (Throwable th5) {
                th = th5;
                cursor = null;
            }
        }
        Logger.w("AppLog", "db not establish and open");
        return -1L;
    }

    long f(String str) {
        return g(str, 1);
    }

    synchronized long g(String str, int i10) {
        ContentValues contentValues;
        contentValues = new ContentValues();
        contentValues.put("value", str);
        contentValues.put("timestamp", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        contentValues.put("retry_time", (Long) 0L);
        contentValues.put("log_type", Integer.valueOf(i10));
        return this.f3146i.insert("queue", null, contentValues);
    }

    public synchronized long h(JSONObject jSONObject, JSONObject jSONObject2) {
        Cursor cursorQuery;
        String string;
        Cursor cursor = null;
        String str = null;
        try {
            try {
                cursorQuery = this.f3146i.query("mon_log", f, null, null, null, null, "_id ASC", "100");
                try {
                    try {
                        JSONArray jSONArray = new JSONArray();
                        long j6 = 0;
                        while (cursorQuery.moveToNext()) {
                            long j10 = cursorQuery.getLong(0);
                            String string2 = cursorQuery.getString(1);
                            String string3 = cursorQuery.getString(2);
                            if (j6 < j10) {
                                j6 = j10;
                            }
                            try {
                                JSONObject jSONObject3 = new JSONObject(string3);
                                jSONObject3.put("log_id", j10);
                                if (!com.bytedance.tea.common.utility.d.a(string2)) {
                                    jSONObject3.put("log_type", string2);
                                }
                                jSONArray.put(jSONObject3);
                            } catch (Exception unused) {
                            }
                        }
                        cursorQuery.close();
                        if (j6 > 0) {
                            this.f3146i.delete("mon_log", "_id<= ?", new String[]{String.valueOf(j6)});
                        }
                        if (jSONArray.length() > 0) {
                            JSONObject jSONObject4 = new JSONObject();
                            jSONObject4.put("magic_tag", "ss_app_log");
                            if (jSONObject2 != null) {
                                jSONObject4.put("time_sync", jSONObject2);
                            }
                            jSONObject4.put("data", jSONArray);
                            if (jSONObject != null) {
                                jSONObject4.put("header", jSONObject);
                            }
                            string = jSONObject4.toString();
                        } else {
                            string = null;
                        }
                        l(null);
                        str = string;
                    } catch (Exception unused2) {
                        l(cursorQuery);
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    l(cursor);
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        } catch (Exception unused3) {
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
        }
        if (str == null) {
            return 0L;
        }
        return g(str, 2);
    }

    public synchronized r i(long j6) {
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabase = this.f3146i;
        Cursor cursor = null;
        r rVar = null;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            Logger.w("AppLog", "db not establish and open");
            return null;
        }
        try {
            cursorQuery = this.f3146i.query("queue", f3144b, "_id > ?", new String[]{String.valueOf(j6)}, null, null, "_id ASC", "1");
            try {
                try {
                    if (cursorQuery.moveToNext()) {
                        r rVar2 = new r();
                        rVar2.f3158a = cursorQuery.getInt(0);
                        rVar2.f3159b = cursorQuery.getString(1);
                        boolean z6 = cursorQuery.getInt(2) > 0;
                        rVar2.f3160c = cursorQuery.getLong(3);
                        rVar2.d = cursorQuery.getInt(4);
                        rVar2.e = cursorQuery.getLong(5);
                        int i10 = cursorQuery.getInt(6);
                        rVar2.f = i10;
                        if (i10 == 0 && z6) {
                            rVar2.f = 1;
                        }
                        rVar = rVar2;
                    }
                    l(cursorQuery);
                    return rVar;
                } catch (Exception e2) {
                    e = e2;
                    Logger.w("AppLog", "getLog exception " + e);
                    l(cursorQuery);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                l(cursor);
                throw th;
            }
        } catch (Exception e6) {
            e = e6;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            l(cursor);
            throw th;
        }
    }

    public synchronized void k() {
        try {
            SQLiteDatabase sQLiteDatabase = this.f3146i;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                try {
                    this.f3146i.delete("queue", "timestamp <= ? OR retry_count > 5", new String[]{String.valueOf(System.currentTimeMillis() - 432000000)});
                } catch (Exception e2) {
                    Logger.d("AppLog", "delete expire log error:" + e2);
                }
                return;
            }
            Logger.w("AppLog", "db not establish and open");
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean n(long j6, boolean z6) {
        boolean z10;
        SQLiteDatabase sQLiteDatabase = this.f3146i;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            Logger.w("AppLog", "db not establish and open");
            return false;
        }
        if (j6 <= 0) {
            return false;
        }
        boolean z11 = true;
        String[] strArr = {String.valueOf(j6)};
        if (z6) {
            z10 = false;
        } else {
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = this.f3146i.query("queue", new String[]{"timestamp", "retry_count", "retry_time"}, "_id = ?", strArr, null, null, null);
                    if (!cursorQuery.moveToNext()) {
                        l(cursorQuery);
                        return false;
                    }
                    long j10 = cursorQuery.getLong(0);
                    int i10 = cursorQuery.getInt(1);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - j10 < 432000000 && i10 < 5) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("retry_count", Integer.valueOf(i10 + 1));
                        contentValues.put("retry_time", Long.valueOf(jCurrentTimeMillis));
                        this.f3146i.update("queue", contentValues, "_id = ?", strArr);
                        l(cursorQuery);
                        return true;
                    }
                    l(cursorQuery);
                    z10 = true;
                } catch (Exception e2) {
                    Logger.w("AppLog", "onLogSent excepiton: " + e2);
                    l(cursorQuery);
                    z10 = false;
                    z11 = false;
                }
            } catch (Throwable th) {
                l(cursorQuery);
                throw th;
            }
        }
        if (z10 && Logger.debug()) {
            p.e(this.f3147j, j6);
        }
        if (!z11) {
            return false;
        }
        try {
            this.f3146i.delete("queue", "_id = ?", strArr);
        } catch (Throwable unused) {
        }
        Logger.d("AppLog", "delete app_log: " + j6);
        return false;
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0097: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]) (LINE:152), block:B:31:0x0097 */
    public synchronized x p(long j6) {
        Cursor cursor;
        String str;
        String[] strArr;
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabase = this.f3146i;
        Cursor cursor2 = null;
        x xVar = null;
        if (sQLiteDatabase != null) {
            try {
                if (sQLiteDatabase.isOpen()) {
                    boolean z6 = true;
                    if (j6 > 0) {
                        try {
                            str = "_id < ?";
                            strArr = new String[]{String.valueOf(j6)};
                        } catch (Exception e2) {
                            e = e2;
                            cursorQuery = null;
                            Logger.w("AppLog", "getLastSession exception " + e);
                            l(cursorQuery);
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            l(cursor2);
                            throw th;
                        }
                    } else {
                        str = null;
                        strArr = null;
                    }
                    cursorQuery = this.f3146i.query("session", f3145c, str, strArr, null, null, "_id DESC", "1");
                    try {
                        if (cursorQuery.moveToNext()) {
                            x xVar2 = new x();
                            xVar2.f3176a = cursorQuery.getInt(0);
                            xVar2.f3177b = cursorQuery.getString(1);
                            xVar2.f3178c = cursorQuery.getLong(2);
                            xVar2.f3179i = cursorQuery.getInt(4) > 0;
                            xVar2.f = cursorQuery.getString(5);
                            xVar2.g = cursorQuery.getInt(6);
                            xVar2.h = cursorQuery.getInt(7);
                            if (cursorQuery.getInt(8) <= 0) {
                                z6 = false;
                            }
                            xVar2.f3180j = z6;
                            xVar2.d = cursorQuery.getLong(9);
                            xVar2.k = false;
                            xVar = xVar2;
                        }
                        l(cursorQuery);
                        return xVar;
                    } catch (Exception e6) {
                        e = e6;
                        Logger.w("AppLog", "getLastSession exception " + e);
                        l(cursorQuery);
                        return null;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
            }
        }
        Logger.w("AppLog", "db not establish and open");
        return null;
    }

    public synchronized void r(long j6) {
        try {
            SQLiteDatabase sQLiteDatabase = this.f3146i;
            if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                Logger.w("AppLog", "db not establish and open");
                return;
            }
            try {
                String[] strArr = {String.valueOf(j6)};
                ContentValues contentValues = new ContentValues();
                contentValues.put("launch_sent", (Integer) 1);
                this.f3146i.update("session", contentValues, "_id=?", strArr);
            } catch (Exception e2) {
                Logger.w("AppLog", "setSessionLaunchSent exception: " + e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private JSONArray j(boolean z6, long j6, String str, JSONObject jSONObject, JSONObject jSONObject2) throws Throwable {
        JSONArray jSONArray;
        int i10;
        JSONArray jSONArray2;
        Cursor cursor = null;
        JSONArray jSONArray3 = null;
        Cursor cursor2 = null;
        try {
            int i11 = 0;
            boolean z10 = true;
            String[] strArr = {"0", String.valueOf(j6)};
            String str2 = "_id<= ? ";
            String[] strArr2 = {"0"};
            String str3 = "100";
            Cursor cursor3 = null;
            long j10 = 0;
            while (true) {
                try {
                    strArr[i11] = String.valueOf(j10);
                    JSONArray jSONArray4 = new JSONArray();
                    String[] strArr3 = strArr2;
                    String str4 = str2;
                    int i12 = i11;
                    String[] strArr4 = strArr;
                    Cursor cursorQuery = this.f3146i.query("misc_log", e, "_id > ? AND session_id=?", strArr, null, null, "_id ASC", str3);
                    try {
                        try {
                            cursorQuery.getCount();
                            long j11 = 0;
                            while (cursorQuery.moveToNext()) {
                                long j12 = cursorQuery.getLong(i12);
                                if (j12 > 0) {
                                    if (j12 > j11) {
                                        j11 = j12;
                                    }
                                    String string = cursorQuery.getString(1);
                                    String string2 = cursorQuery.getString(2);
                                    if (com.bytedance.tea.common.utility.d.a(string2) || com.bytedance.tea.common.utility.d.a(string)) {
                                        jSONArray2 = jSONArray4;
                                    } else {
                                        try {
                                            JSONObject jSONObject3 = new JSONObject(string2);
                                            jSONObject3.put("log_id", j12);
                                            if (!com.bytedance.tea.common.utility.d.a(string)) {
                                                jSONObject3.put("log_type", string);
                                            }
                                            jSONArray2 = jSONArray4;
                                            try {
                                                jSONArray2.put(jSONObject3);
                                            } catch (Exception unused) {
                                            }
                                        } catch (Exception unused2) {
                                            jSONArray2 = jSONArray4;
                                        }
                                    }
                                    jSONArray4 = jSONArray2;
                                }
                            }
                            JSONArray jSONArray5 = jSONArray4;
                            if (j10 == 0) {
                                jSONArray3 = jSONArray5;
                                i10 = i12;
                            } else {
                                i10 = 1;
                            }
                            if (j10 >= j11) {
                                l(cursorQuery);
                                return jSONArray3;
                            }
                            strArr3[i12] = String.valueOf(j11);
                            this.f3146i.delete("misc_log", str4, strArr3);
                            if (i10 != 0 && jSONArray5.length() > 0) {
                                JSONObject jSONObject4 = new JSONObject();
                                jSONObject4.put("magic_tag", "ss_app_log");
                                if (jSONObject2 != 0) {
                                    jSONObject4.put("time_sync", jSONObject2);
                                }
                                jSONObject4.put("log_data", jSONArray5);
                                if (jSONObject != null) {
                                    jSONObject4.put("header", jSONObject);
                                }
                                jSONObject4.put("_gen_time", System.currentTimeMillis());
                                o(jSONObject4.toString());
                            }
                            str3 = str3;
                            cursor3 = cursorQuery;
                            j10 = j11;
                            strArr2 = strArr3;
                            str2 = str4;
                            i11 = i12;
                            strArr = strArr4;
                            z10 = true;
                        } catch (Exception unused3) {
                            jSONArray = jSONArray3;
                            cursor2 = cursorQuery;
                            l(cursor2);
                            return jSONArray;
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        l(cursor);
                        throw th;
                    }
                } catch (Exception unused4) {
                    jSONArray = jSONArray3;
                    cursor2 = cursor3;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursor3;
                }
            }
        } catch (Exception unused5) {
            jSONArray = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    protected static void l(Cursor cursor) {
        if (cursor != null) {
            try {
                if (cursor.isClosed()) {
                    return;
                }
                cursor.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void s() {
        synchronized (g) {
            try {
                m mVar = h;
                if (mVar != null) {
                    mVar.q();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static m t(Context context) {
        synchronized (g) {
            try {
                if (h == null) {
                    h = new m(context.getApplicationContext());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return h;
    }

    private m(Context context) {
        this.f3146i = new a(context).getWritableDatabase();
        this.f3147j = context;
    }

    protected static void m(Cursor cursor, SQLiteDatabase sQLiteDatabase) {
        l(cursor);
        if (sQLiteDatabase != null) {
            try {
                if (sQLiteDatabase.inTransaction()) {
                    sQLiteDatabase.endTransaction();
                }
            } catch (Exception unused) {
            }
        }
    }
}
