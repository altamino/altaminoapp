package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
@WorkerThread
public class m0 implements com.google.android.datatransport.runtime.scheduling.persistence.d, l2.b, com.google.android.datatransport.runtime.scheduling.persistence.c {
    private static final int LOCK_RETRY_BACK_OFF_MILLIS = 50;
    private static final String LOG_TAG = "SQLiteEventStore";
    static final int MAX_RETRIES = 16;
    private static final f2.b PROTOBUF_ENCODING = f2.b.b("proto");
    private final e config;
    private final m2.a monotonicClock;
    private final v7.a<String> packageName;
    private final t0 schemaManager;
    private final m2.a wallClock;

    interface b<T, U> {
        U apply(T t5);
    }

    private static class c {
        final String key;
        final String value;

        private c(String str, String str2) {
            this.key = str;
            this.value = str2;
        }
    }

    interface d<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h2.f a1(final long j6, SQLiteDatabase sQLiteDatabase) {
        return (h2.f) A1(sQLiteDatabase.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.d0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.Z0(j6, (Cursor) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List d1(SQLiteDatabase sQLiteDatabase) {
        return (List) A1(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.k0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.e1((Cursor) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ h2.a h1(String str, final Map map, final h2.a.C0383a c0383a, SQLiteDatabase sQLiteDatabase) {
        return (h2.a) A1(sQLiteDatabase.rawQuery(str, new String[0]), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.b0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f991a.g1(map, c0383a, (Cursor) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    @Nullable
    public k A0(final com.google.android.datatransport.runtime.p pVar, final com.google.android.datatransport.runtime.i iVar) {
        i2.a.c(LOG_TAG, "Storing event with priority=%s, name=%s for destination %s", pVar.d(), iVar.j(), pVar.b());
        long jLongValue = ((Long) Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.i0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f997a.k1(iVar, pVar, (SQLiteDatabase) obj);
            }
        })).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return k.a(jLongValue, pVar, iVar);
    }

    private h2.c.b H0(int i10) {
        h2.c.b bVar = h2.c.b.REASON_UNKNOWN;
        if (i10 == bVar.getNumber()) {
            return bVar;
        }
        h2.c.b bVar2 = h2.c.b.MESSAGE_TOO_OLD;
        if (i10 == bVar2.getNumber()) {
            return bVar2;
        }
        h2.c.b bVar3 = h2.c.b.CACHE_FULL;
        if (i10 == bVar3.getNumber()) {
            return bVar3;
        }
        h2.c.b bVar4 = h2.c.b.PAYLOAD_TOO_BIG;
        if (i10 == bVar4.getNumber()) {
            return bVar4;
        }
        h2.c.b bVar5 = h2.c.b.MAX_RETRIES_REACHED;
        if (i10 == bVar5.getNumber()) {
            return bVar5;
        }
        h2.c.b bVar6 = h2.c.b.INVALID_PAYLOD;
        if (i10 == bVar6.getNumber()) {
            return bVar6;
        }
        h2.c.b bVar7 = h2.c.b.SERVER_ERROR;
        if (i10 == bVar7.getNumber()) {
            return bVar7;
        }
        i2.a.b(LOG_TAG, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i10));
        return bVar;
    }

    private void I0(final SQLiteDatabase sQLiteDatabase) {
        x1(new d() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.g0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.d
            public final Object a() {
                return m0.V0(sQLiteDatabase);
            }
        }, new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.h0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.W0((Throwable) obj);
            }
        });
    }

    private h2.f O0() {
        final long jA = this.wallClock.a();
        return (h2.f) Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.c0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.a1(jA, (SQLiteDatabase) obj);
            }
        });
    }

    @Nullable
    private Long P0(SQLiteDatabase sQLiteDatabase, com.google.android.datatransport.runtime.p pVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(pVar.b(), String.valueOf(n2.a.a(pVar.d()))));
        if (pVar.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(pVar.c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) A1(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.s
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.b1((Cursor) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object W0(Throwable th) {
        throw new l2.a("Timed out while trying to acquire the lock.", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SQLiteDatabase X0(Throwable th) {
        throw new l2.a("Timed out while trying to open db.", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List e1(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(com.google.android.datatransport.runtime.p.a().b(cursor.getString(1)).d(n2.a.b(cursor.getInt(2))).c(u1(cursor.getString(3))).a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List f1(com.google.android.datatransport.runtime.p pVar, SQLiteDatabase sQLiteDatabase) {
        List<k> listS1 = s1(sQLiteDatabase, pVar, this.config.d());
        for (f2.d dVar : f2.d.values()) {
            if (dVar != pVar.d()) {
                int iD = this.config.d() - listS1.size();
                if (iD <= 0) {
                    break;
                }
                listS1.addAll(s1(sQLiteDatabase, pVar.f(dVar), iD));
            }
        }
        return S0(listS1, t1(sQLiteDatabase, listS1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] l1(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int length = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            length += blob.length;
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            byte[] bArr2 = (byte[]) arrayList.get(i10);
            System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
            length2 += bArr2.length;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object q1(long j6, com.google.android.datatransport.runtime.p pVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j6));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{pVar.b(), String.valueOf(n2.a.a(pVar.d()))}) < 1) {
            contentValues.put("backend_name", pVar.b());
            contentValues.put("priority", Integer.valueOf(n2.a.a(pVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r1(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.wallClock.a()).execute();
        return null;
    }

    private List<k> s1(SQLiteDatabase sQLiteDatabase, final com.google.android.datatransport.runtime.p pVar, int i10) {
        final ArrayList arrayList = new ArrayList();
        Long lP0 = P0(sQLiteDatabase, pVar);
        if (lP0 == null) {
            return arrayList;
        }
        A1(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", ApiRequest.MULTIPART_NAME_PAYLOAD, "code", "inline"}, "context_id = ?", new String[]{lP0.toString()}, null, null, null, String.valueOf(i10)), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.y
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f1022a.i1(arrayList, pVar, (Cursor) obj);
            }
        });
        return arrayList;
    }

    private Map<Long, Set<c>> t1(SQLiteDatabase sQLiteDatabase, List<k> list) {
        final HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb.append(list.get(i10).c());
            if (i10 < list.size() - 1) {
                sb.append(kotlinx.serialization.json.internal.b.COMMA);
            }
        }
        sb.append(')');
        A1(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.t
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.j1(map, (Cursor) obj);
            }
        });
        return map;
    }

    private static byte[] u1(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    private <T> T x1(d<T> dVar, b<Throwable, T> bVar) {
        long jA = this.monotonicClock.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.monotonicClock.a() >= ((long) this.config.b()) + jA) {
                    return bVar.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    private static f2.b y1(@Nullable String str) {
        return str == null ? PROTOBUF_ENCODING : f2.b.b(str);
    }

    private static String z1(Iterable<k> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<k> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().c());
            if (it.hasNext()) {
                sb.append(kotlinx.serialization.json.internal.b.COMMA);
            }
        }
        sb.append(')');
        return sb.toString();
    }

    @VisibleForTesting
    SQLiteDatabase L0() {
        final t0 t0Var = this.schemaManager;
        Objects.requireNonNull(t0Var);
        return (SQLiteDatabase) x1(new d() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.w
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.d
            public final Object a() {
                return t0Var.getWritableDatabase();
            }
        }, new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.e0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.X0((Throwable) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    public Iterable<com.google.android.datatransport.runtime.p> a0() {
        return (Iterable) Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.l
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.d1((SQLiteDatabase) obj);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.schemaManager.close();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public void d() {
        Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.o
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f1009a.r1((SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public void i(final long j6, final h2.c.b bVar, final String str) {
        Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.m
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.p1(str, bVar, j6, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    public boolean m0(final com.google.android.datatransport.runtime.p pVar) {
        return ((Boolean) Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.l0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f1002a.c1(pVar, (SQLiteDatabase) obj);
            }
        })).booleanValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    public Iterable<k> r0(final com.google.android.datatransport.runtime.p pVar) {
        return (Iterable) Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.p
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f1010a.f1(pVar, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    public int v() {
        final long jA = this.wallClock.a() - this.config.c();
        return ((Integer) Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.j0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f1000a.U0(jA, (SQLiteDatabase) obj);
            }
        })).intValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    public void y(final com.google.android.datatransport.runtime.p pVar, final long j6) {
        Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.n
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.q1(j6, pVar, (SQLiteDatabase) obj);
            }
        });
    }

    m0(m2.a aVar, m2.a aVar2, e eVar, t0 t0Var, v7.a<String> aVar3) {
        this.schemaManager = t0Var;
        this.wallClock = aVar;
        this.monotonicClock = aVar2;
        this.config = eVar;
        this.packageName = aVar3;
    }

    @VisibleForTesting
    static <T> T A1(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    private long J0(SQLiteDatabase sQLiteDatabase, com.google.android.datatransport.runtime.p pVar) {
        Long lP0 = P0(sQLiteDatabase, pVar);
        if (lP0 != null) {
            return lP0.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", pVar.b());
        contentValues.put("priority", Integer.valueOf(n2.a.a(pVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (pVar.c() != null) {
            contentValues.put("extras", Base64.encodeToString(pVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    private h2.b M0() {
        return h2.b.b().b(h2.e.c().b(K0()).c(e.DEFAULT.f()).a()).a();
    }

    private long N0() {
        return L0().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private boolean R0() {
        if (N0() * c0() >= this.config.f()) {
            return true;
        }
        return false;
    }

    private List<k> S0(List<k> list, Map<Long, Set<c>> map) {
        ListIterator<k> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            k next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.c()))) {
                com.google.android.datatransport.runtime.i.a aVarL = next.b().l();
                for (c cVar : map.get(Long.valueOf(next.c()))) {
                    aVarL.c(cVar.key, cVar.value);
                }
                listIterator.set(k.a(next.c(), next.d(), aVarL.d()));
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object T0(Cursor cursor) {
        while (cursor.moveToNext()) {
            i(cursor.getInt(0), h2.c.b.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer U0(long j6, SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {String.valueOf(j6)};
        A1(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.r
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f1015a.T0((Cursor) obj);
            }
        });
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object V0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long Y0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h2.f Z0(long j6, Cursor cursor) {
        cursor.moveToNext();
        return h2.f.c().c(cursor.getLong(0)).b(j6).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long b1(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    private long c0() {
        return L0().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean c1(com.google.android.datatransport.runtime.p pVar, SQLiteDatabase sQLiteDatabase) {
        Long lP0 = P0(sQLiteDatabase, pVar);
        if (lP0 == null) {
            return Boolean.FALSE;
        }
        return (Boolean) A1(L0().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lP0.toString()}), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.z
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ h2.a g1(Map map, h2.a.C0383a c0383a, Cursor cursor) {
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            h2.c.b bVarH0 = H0(cursor.getInt(1));
            long j6 = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(h2.c.c().c(bVarH0).b(j6).a());
        }
        v1(c0383a, map);
        c0383a.e(O0());
        c0383a.d(M0());
        c0383a.c(this.packageName.get());
        return c0383a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object i1(List list, com.google.android.datatransport.runtime.p pVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            boolean z6 = false;
            long j6 = cursor.getLong(0);
            if (cursor.getInt(7) != 0) {
                z6 = true;
            }
            com.google.android.datatransport.runtime.i.a aVarK = com.google.android.datatransport.runtime.i.a().j(cursor.getString(1)).i(cursor.getLong(2)).k(cursor.getLong(3));
            if (z6) {
                aVarK.h(new com.google.android.datatransport.runtime.h(y1(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                aVarK.h(new com.google.android.datatransport.runtime.h(y1(cursor.getString(4)), w1(j6)));
            }
            if (!cursor.isNull(6)) {
                aVarK.g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(k.a(j6, pVar, aVarK.d()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object j1(Map map, Cursor cursor) {
        while (true) {
            if (!cursor.moveToNext()) {
                return null;
            }
            long j6 = cursor.getLong(0);
            Set hashSet = (Set) map.get(Long.valueOf(j6));
            if (hashSet == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j6), hashSet);
            }
            hashSet.add(new c(cursor.getString(1), cursor.getString(2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long k1(com.google.android.datatransport.runtime.i iVar, com.google.android.datatransport.runtime.p pVar, SQLiteDatabase sQLiteDatabase) {
        boolean z6;
        byte[] bArr;
        if (R0()) {
            i(1L, h2.c.b.CACHE_FULL, iVar.j());
            return -1L;
        }
        long jJ0 = J0(sQLiteDatabase, pVar);
        int iE = this.config.e();
        byte[] bArrA = iVar.e().a();
        if (bArrA.length <= iE) {
            z6 = true;
        } else {
            z6 = false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(jJ0));
        contentValues.put("transport_name", iVar.j());
        contentValues.put("timestamp_ms", Long.valueOf(iVar.f()));
        contentValues.put("uptime_ms", Long.valueOf(iVar.k()));
        contentValues.put("payload_encoding", iVar.e().b().a());
        contentValues.put("code", iVar.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z6));
        if (z6) {
            bArr = bArrA;
        } else {
            bArr = new byte[0];
        }
        contentValues.put(ApiRequest.MULTIPART_NAME_PAYLOAD, bArr);
        long jInsert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z6) {
            int iCeil = (int) Math.ceil(((double) bArrA.length) / ((double) iE));
            for (int i10 = 1; i10 <= iCeil; i10++) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrA, (i10 - 1) * iE, Math.min(i10 * iE, bArrA.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(jInsert));
                contentValues2.put("sequence_num", Integer.valueOf(i10));
                contentValues2.put("bytes", bArrCopyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : iVar.i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(jInsert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(jInsert);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object m1(Cursor cursor) {
        while (cursor.moveToNext()) {
            i(cursor.getInt(0), h2.c.b.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n1(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        A1(sQLiteDatabase.rawQuery(str2, null), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.x
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f1021a.m1((Cursor) obj);
            }
        });
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean o1(Cursor cursor) {
        boolean z6;
        if (cursor.getCount() > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        return Boolean.valueOf(z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object p1(String str, h2.c.b bVar, long j6, SQLiteDatabase sQLiteDatabase) {
        if (!((Boolean) A1(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(bVar.getNumber())}), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.v
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.o1((Cursor) obj);
            }
        })).booleanValue()) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(bVar.getNumber()));
            contentValues.put("events_dropped_count", Long.valueOf(j6));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        } else {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j6 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(bVar.getNumber())});
        }
        return null;
    }

    private void v1(h2.a.C0383a c0383a, Map<String, List<h2.c>> map) {
        for (Map.Entry<String, List<h2.c>> entry : map.entrySet()) {
            c0383a.a(h2.d.c().c(entry.getKey()).b(entry.getValue()).a());
        }
    }

    private byte[] w1(long j6) {
        return (byte[]) A1(L0().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j6)}, null, null, "sequence_num"), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.a0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.l1((Cursor) obj);
            }
        });
    }

    @VisibleForTesting
    long K0() {
        return N0() * c0();
    }

    @VisibleForTesting
    <T> T Q0(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase sQLiteDatabaseL0 = L0();
        sQLiteDatabaseL0.beginTransaction();
        try {
            T tApply = bVar.apply(sQLiteDatabaseL0);
            sQLiteDatabaseL0.setTransactionSuccessful();
            return tApply;
        } finally {
            sQLiteDatabaseL0.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    public void V(Iterable<k> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        L0().compileStatement("DELETE FROM events WHERE _id in " + z1(iterable)).execute();
    }

    @Override // l2.b
    public <T> T a(l2.b.a<T> aVar) {
        SQLiteDatabase sQLiteDatabaseL0 = L0();
        I0(sQLiteDatabaseL0);
        try {
            T tExecute = aVar.execute();
            sQLiteDatabaseL0.setTransactionSuccessful();
            return tExecute;
        } finally {
            sQLiteDatabaseL0.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public h2.a h() {
        final h2.a.C0383a c0383aE = h2.a.e();
        final HashMap map = new HashMap();
        final String str = "SELECT log_source, reason, events_dropped_count FROM log_event_dropped";
        return (h2.a) Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.u
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f1017a.h1(str, map, c0383aE, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    public long l0(com.google.android.datatransport.runtime.p pVar) {
        return ((Long) A1(L0().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{pVar.b(), String.valueOf(n2.a.a(pVar.d()))}), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.f0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.Y0((Cursor) obj);
            }
        })).longValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    public void n0(Iterable<k> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + z1(iterable);
        final String str2 = "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name";
        Q0(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.q
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.f1012a.n1(str, str2, (SQLiteDatabase) obj);
            }
        });
    }
}
