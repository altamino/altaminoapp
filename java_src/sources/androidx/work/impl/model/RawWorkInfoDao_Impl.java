package androidx.work.impl.model;

import android.database.Cursor;
import androidx.collection.ArrayMap;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.Data;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes9.dex */
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {
    private final RoomDatabase __db;

    /* JADX INFO: renamed from: androidx.work.impl.model.RawWorkInfoDao_Impl$1, reason: invalid class name */
    class AnonymousClass1 implements Callable<List<WorkSpec.WorkInfoPojo>> {
        final /* synthetic */ RawWorkInfoDao_Impl this$0;
        final /* synthetic */ SupportSQLiteQuery val$_internalQuery;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            Data dataG;
            Cursor cursorB = DBUtil.b(this.this$0.__db, this.val$_internalQuery, true, null);
            try {
                int iD = CursorUtil.d(cursorB, "id");
                int iD2 = CursorUtil.d(cursorB, "state");
                int iD3 = CursorUtil.d(cursorB, "output");
                int iD4 = CursorUtil.d(cursorB, "run_attempt_count");
                int iD5 = CursorUtil.d(cursorB, "generation");
                ArrayMap arrayMap = new ArrayMap();
                ArrayMap arrayMap2 = new ArrayMap();
                while (cursorB.moveToNext()) {
                    String string = cursorB.getString(iD);
                    if (((ArrayList) arrayMap.get(string)) == null) {
                        arrayMap.put(string, new ArrayList());
                    }
                    String string2 = cursorB.getString(iD);
                    if (((ArrayList) arrayMap2.get(string2)) == null) {
                        arrayMap2.put(string2, new ArrayList());
                    }
                }
                cursorB.moveToPosition(-1);
                this.this$0.c(arrayMap);
                this.this$0.b(arrayMap2);
                ArrayList arrayList = new ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    String string3 = (iD == -1 || cursorB.isNull(iD)) ? null : cursorB.getString(iD);
                    WorkInfo.State stateF = iD2 == -1 ? null : WorkTypeConverters.f(cursorB.getInt(iD2));
                    if (iD3 == -1) {
                        dataG = null;
                    } else {
                        dataG = Data.g(cursorB.isNull(iD3) ? null : cursorB.getBlob(iD3));
                    }
                    int i10 = iD4 == -1 ? 0 : cursorB.getInt(iD4);
                    int i11 = iD5 != -1 ? cursorB.getInt(iD5) : 0;
                    ArrayList arrayList2 = (ArrayList) arrayMap.get(cursorB.getString(iD));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    ArrayList arrayList3 = arrayList2;
                    ArrayList arrayList4 = (ArrayList) arrayMap2.get(cursorB.getString(iD));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, stateF, dataG, i10, i11, arrayList3, arrayList4));
                }
                return arrayList;
            } finally {
                cursorB.close();
            }
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public List<WorkSpec.WorkInfoPojo> a(final SupportSQLiteQuery query) {
        Data dataG;
        this.__db.d();
        Cursor cursorB = DBUtil.b(this.__db, query, true, null);
        try {
            int iD = CursorUtil.d(cursorB, "id");
            int iD2 = CursorUtil.d(cursorB, "state");
            int iD3 = CursorUtil.d(cursorB, "output");
            int iD4 = CursorUtil.d(cursorB, "run_attempt_count");
            int iD5 = CursorUtil.d(cursorB, "generation");
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
            while (cursorB.moveToNext()) {
                String string = cursorB.getString(iD);
                if (arrayMap.get(string) == null) {
                    arrayMap.put(string, new ArrayList<>());
                }
                String string2 = cursorB.getString(iD);
                if (arrayMap2.get(string2) == null) {
                    arrayMap2.put(string2, new ArrayList<>());
                }
            }
            cursorB.moveToPosition(-1);
            c(arrayMap);
            b(arrayMap2);
            ArrayList arrayList = new ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                String string3 = (iD == -1 || cursorB.isNull(iD)) ? null : cursorB.getString(iD);
                WorkInfo.State stateF = iD2 == -1 ? null : WorkTypeConverters.f(cursorB.getInt(iD2));
                if (iD3 == -1) {
                    dataG = null;
                } else {
                    dataG = Data.g(cursorB.isNull(iD3) ? null : cursorB.getBlob(iD3));
                }
                int i10 = iD4 == -1 ? 0 : cursorB.getInt(iD4);
                int i11 = iD5 != -1 ? cursorB.getInt(iD5) : 0;
                ArrayList<String> arrayList2 = arrayMap.get(cursorB.getString(iD));
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                }
                ArrayList<String> arrayList3 = arrayList2;
                ArrayList<Data> arrayList4 = arrayMap2.get(cursorB.getString(iD));
                if (arrayList4 == null) {
                    arrayList4 = new ArrayList<>();
                }
                arrayList.add(new WorkSpec.WorkInfoPojo(string3, stateF, dataG, i10, i11, arrayList3, arrayList4));
            }
            return arrayList;
        } finally {
            cursorB.close();
        }
    }

    public RawWorkInfoDao_Impl(RoomDatabase __db) {
        this.__db = __db;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final ArrayMap<String, ArrayList<Data>> _map) {
        byte[] blob;
        Set<String> setKeySet = _map.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            ArrayMap<String, ArrayList<Data>> arrayMap = new ArrayMap<>(999);
            int size = _map.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                arrayMap.put(_map.l(i10), _map.p(i10));
                i10++;
                i11++;
                if (i11 == 999) {
                    b(arrayMap);
                    arrayMap = new ArrayMap<>(999);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                b(arrayMap);
                return;
            }
            return;
        }
        StringBuilder sbB = StringUtil.b();
        sbB.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size2 = setKeySet.size();
        StringUtil.a(sbB, size2);
        sbB.append(")");
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a(sbB.toString(), size2);
        int i12 = 1;
        for (String str : setKeySet) {
            if (str == null) {
                roomSQLiteQueryA.P(i12);
            } else {
                roomSQLiteQueryA.s(i12, str);
            }
            i12++;
        }
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iD = CursorUtil.d(cursorB, "work_spec_id");
            if (iD == -1) {
                return;
            }
            while (cursorB.moveToNext()) {
                ArrayList<Data> arrayList = _map.get(cursorB.getString(iD));
                if (arrayList != null) {
                    if (cursorB.isNull(0)) {
                        blob = null;
                    } else {
                        blob = cursorB.getBlob(0);
                    }
                    arrayList.add(Data.g(blob));
                }
            }
        } finally {
            cursorB.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final ArrayMap<String, ArrayList<String>> _map) {
        String string;
        Set<String> setKeySet = _map.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>(999);
            int size = _map.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                arrayMap.put(_map.l(i10), _map.p(i10));
                i10++;
                i11++;
                if (i11 == 999) {
                    c(arrayMap);
                    arrayMap = new ArrayMap<>(999);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                c(arrayMap);
                return;
            }
            return;
        }
        StringBuilder sbB = StringUtil.b();
        sbB.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size2 = setKeySet.size();
        StringUtil.a(sbB, size2);
        sbB.append(")");
        RoomSQLiteQuery roomSQLiteQueryA = RoomSQLiteQuery.a(sbB.toString(), size2);
        int i12 = 1;
        for (String str : setKeySet) {
            if (str == null) {
                roomSQLiteQueryA.P(i12);
            } else {
                roomSQLiteQueryA.s(i12, str);
            }
            i12++;
        }
        Cursor cursorB = DBUtil.b(this.__db, roomSQLiteQueryA, false, null);
        try {
            int iD = CursorUtil.d(cursorB, "work_spec_id");
            if (iD == -1) {
                return;
            }
            while (cursorB.moveToNext()) {
                ArrayList<String> arrayList = _map.get(cursorB.getString(iD));
                if (arrayList != null) {
                    if (cursorB.isNull(0)) {
                        string = null;
                    } else {
                        string = cursorB.getString(0);
                    }
                    arrayList.add(string);
                }
            }
        } finally {
            cursorB.close();
        }
    }

    public static List<Class<?>> g() {
        return Collections.emptyList();
    }
}
