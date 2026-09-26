package androidx.room.util;

import android.database.Cursor;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlin.collections.d0;
import kotlin.collections.r0;
import kotlin.collections.s0;
import kotlin.collections.u;
import kotlin.collections.x0;
import kotlin.io.c;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class TableInfoKt {
    private static final List<TableInfo.ForeignKeyWithSequence> b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex(TypedValues.TransitionType.S_TO);
        List listC = u.c();
        while (cursor.moveToNext()) {
            int i10 = cursor.getInt(columnIndex);
            int i11 = cursor.getInt(columnIndex2);
            String string = cursor.getString(columnIndex3);
            t.i(string, "cursor.getString(fromColumnIndex)");
            String string2 = cursor.getString(columnIndex4);
            t.i(string2, "cursor.getString(toColumnIndex)");
            listC.add(new TableInfo.ForeignKeyWithSequence(i10, i11, string, string2));
        }
        return d0.K0(u.a(listC));
    }

    private static final Set<TableInfo.ForeignKey> c(SupportSQLiteDatabase supportSQLiteDatabase, String str) throws IOException {
        Cursor cursorX0 = supportSQLiteDatabase.x0("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = cursorX0.getColumnIndex("id");
            int columnIndex2 = cursorX0.getColumnIndex("seq");
            int columnIndex3 = cursorX0.getColumnIndex("table");
            int columnIndex4 = cursorX0.getColumnIndex("on_delete");
            int columnIndex5 = cursorX0.getColumnIndex("on_update");
            List<TableInfo.ForeignKeyWithSequence> listB = b(cursorX0);
            cursorX0.moveToPosition(-1);
            Set setB = x0.b();
            while (cursorX0.moveToNext()) {
                if (cursorX0.getInt(columnIndex2) == 0) {
                    int i10 = cursorX0.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList<TableInfo.ForeignKeyWithSequence> arrayList3 = new ArrayList();
                    for (Object obj : listB) {
                        if (((TableInfo.ForeignKeyWithSequence) obj).c() == i10) {
                            arrayList3.add(obj);
                        }
                    }
                    for (TableInfo.ForeignKeyWithSequence foreignKeyWithSequence : arrayList3) {
                        arrayList.add(foreignKeyWithSequence.b());
                        arrayList2.add(foreignKeyWithSequence.d());
                    }
                    String string = cursorX0.getString(columnIndex3);
                    t.i(string, "cursor.getString(tableColumnIndex)");
                    String string2 = cursorX0.getString(columnIndex4);
                    t.i(string2, "cursor.getString(onDeleteColumnIndex)");
                    String string3 = cursorX0.getString(columnIndex5);
                    t.i(string3, "cursor.getString(onUpdateColumnIndex)");
                    setB.add(new TableInfo.ForeignKey(string, string2, string3, arrayList, arrayList2));
                }
            }
            Set<TableInfo.ForeignKey> setA = x0.a(setB);
            c.a(cursorX0, null);
            return setA;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(cursorX0, th);
                throw th2;
            }
        }
    }

    private static final TableInfo.Index d(SupportSQLiteDatabase supportSQLiteDatabase, String str, boolean z6) throws IOException {
        Cursor cursorX0 = supportSQLiteDatabase.x0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = cursorX0.getColumnIndex("seqno");
            int columnIndex2 = cursorX0.getColumnIndex(CmcdConfiguration.KEY_CONTENT_ID);
            int columnIndex3 = cursorX0.getColumnIndex("name");
            int columnIndex4 = cursorX0.getColumnIndex("desc");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex4 != -1) {
                TreeMap treeMap = new TreeMap();
                TreeMap treeMap2 = new TreeMap();
                while (cursorX0.moveToNext()) {
                    if (cursorX0.getInt(columnIndex2) >= 0) {
                        int i10 = cursorX0.getInt(columnIndex);
                        String columnName = cursorX0.getString(columnIndex3);
                        String str2 = cursorX0.getInt(columnIndex4) > 0 ? "DESC" : "ASC";
                        Integer numValueOf = Integer.valueOf(i10);
                        t.i(columnName, "columnName");
                        treeMap.put(numValueOf, columnName);
                        treeMap2.put(Integer.valueOf(i10), str2);
                    }
                }
                Collection collectionValues = treeMap.values();
                t.i(collectionValues, "columnsMap.values");
                List listU0 = d0.U0(collectionValues);
                Collection collectionValues2 = treeMap2.values();
                t.i(collectionValues2, "ordersMap.values");
                TableInfo.Index index = new TableInfo.Index(str, z6, listU0, d0.U0(collectionValues2));
                c.a(cursorX0, null);
                return index;
            }
            c.a(cursorX0, null);
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(cursorX0, th);
                throw th2;
            }
        }
    }

    private static final Set<TableInfo.Index> e(SupportSQLiteDatabase supportSQLiteDatabase, String str) throws IOException {
        Cursor cursorX0 = supportSQLiteDatabase.x0("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = cursorX0.getColumnIndex("name");
            int columnIndex2 = cursorX0.getColumnIndex("origin");
            int columnIndex3 = cursorX0.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                Set setB = x0.b();
                while (cursorX0.moveToNext()) {
                    if (t.e("c", cursorX0.getString(columnIndex2))) {
                        String name = cursorX0.getString(columnIndex);
                        boolean z6 = true;
                        if (cursorX0.getInt(columnIndex3) != 1) {
                            z6 = false;
                        }
                        t.i(name, "name");
                        TableInfo.Index indexD = d(supportSQLiteDatabase, name, z6);
                        if (indexD == null) {
                            c.a(cursorX0, null);
                            return null;
                        }
                        setB.add(indexD);
                    }
                }
                Set<TableInfo.Index> setA = x0.a(setB);
                c.a(cursorX0, null);
                return setA;
            }
            c.a(cursorX0, null);
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(cursorX0, th);
                throw th2;
            }
        }
    }

    @NotNull
    public static final TableInfo f(@NotNull SupportSQLiteDatabase database, @NotNull String tableName) {
        t.j(database, "database");
        t.j(tableName, "tableName");
        return new TableInfo(tableName, a(database, tableName), c(database, tableName), e(database, tableName));
    }

    private static final Map<String, TableInfo.Column> a(SupportSQLiteDatabase supportSQLiteDatabase, String str) throws IOException {
        boolean z6;
        Cursor cursorX0 = supportSQLiteDatabase.x0("PRAGMA table_info(`" + str + "`)");
        try {
            if (cursorX0.getColumnCount() <= 0) {
                Map<String, TableInfo.Column> mapH = s0.h();
                c.a(cursorX0, null);
                return mapH;
            }
            int columnIndex = cursorX0.getColumnIndex("name");
            int columnIndex2 = cursorX0.getColumnIndex("type");
            int columnIndex3 = cursorX0.getColumnIndex("notnull");
            int columnIndex4 = cursorX0.getColumnIndex("pk");
            int columnIndex5 = cursorX0.getColumnIndex("dflt_value");
            Map mapC = r0.c();
            while (cursorX0.moveToNext()) {
                String name = cursorX0.getString(columnIndex);
                String type = cursorX0.getString(columnIndex2);
                if (cursorX0.getInt(columnIndex3) != 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                boolean z10 = z6;
                int i10 = cursorX0.getInt(columnIndex4);
                String string = cursorX0.getString(columnIndex5);
                t.i(name, "name");
                t.i(type, "type");
                mapC.put(name, new TableInfo.Column(name, type, z10, i10, string, 2));
            }
            Map<String, TableInfo.Column> mapB = r0.b(mapC);
            c.a(cursorX0, null);
            return mapB;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(cursorX0, th);
                throw th2;
            }
        }
    }
}
