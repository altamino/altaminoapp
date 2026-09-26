package com.ss.android.tea.common.applog;

import android.content.Context;
import android.os.Process;
import com.bytedance.tea.common.utility.CommonHttpException;
import com.bytedance.tea.common.utility.Logger;
import com.bytedance.tea.common.utility.NetworkClient;
import com.bytedance.tea.common.utility.NetworkUtils;
import com.narvii.account.notice.AccountNotice;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.util.http.ApiRequest;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
class w extends Thread {
    private static Context p;
    private static Thread.UncaughtExceptionHandler s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedList<u> f3169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JSONObject f3171c;
    private final AtomicBoolean d;
    private final com.ss.android.tea.common.applog.b.e e;
    private long f;
    private long g;
    private x h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f3172i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AtomicLong f3173j;
    private int k;
    private volatile JSONObject l;
    private volatile long m;
    private final ConcurrentHashMap<String, String> n;
    private final ConcurrentHashMap<String, String> o;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f3174u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f3175v;
    private static final FilenameFilter q = new a();
    private static final FilenameFilter r = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Thread.UncaughtExceptionHandler f3168t = new c();

    static class a implements FilenameFilter {
        a() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str != null && str.startsWith("ss_native_crash-");
        }
    }

    static class b implements FilenameFilter {
        b() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str != null && str.startsWith("ss_crash-");
        }
    }

    static class c implements Thread.UncaughtExceptionHandler {
        c() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) throws Throwable {
            if (th != null && w.p != null) {
                FileOutputStream fileOutputStream = null;
                try {
                    JSONObject jSONObjectF = k.f(w.p, thread, th);
                    String str = "ss_crash-" + System.currentTimeMillis() + ".log";
                    File file = new File(w.p.getCacheDir().getPath(), "ss_crash_logs");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(new File(file, str));
                    try {
                        fileOutputStream2.write(jSONObjectF.toString().getBytes());
                        fileOutputStream2.close();
                        File[] fileArrListFiles = file.listFiles(w.r);
                        if (fileArrListFiles != null) {
                            if (fileArrListFiles.length > 5) {
                                Arrays.sort(fileArrListFiles, Collections.reverseOrder());
                                for (int i10 = 5; i10 < fileArrListFiles.length; i10++) {
                                    fileArrListFiles[i10].delete();
                                }
                            }
                        }
                    } catch (Exception unused) {
                        fileOutputStream = fileOutputStream2;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        com.bytedance.tea.common.utility.io.a.a(fileOutputStream);
                        throw th;
                    }
                } catch (Exception unused2) {
                } catch (Throwable th3) {
                    th = th3;
                }
                com.bytedance.tea.common.utility.io.a.a(fileOutputStream);
            }
            if (t6.d.f(w.p)) {
                if (w.s == null || w.s == w.f3168t) {
                    return;
                }
                w.s.uncaughtException(thread, th);
                return;
            }
            try {
                if (Logger.debug()) {
                    Logger.d("process", "uncaughtException kill myself");
                }
                Process.killProcess(Process.myPid());
            } catch (Throwable unused3) {
            }
        }
    }

    private synchronized void e(u uVar) {
        if (uVar == null) {
            return;
        }
        try {
            if (uVar instanceof v) {
                v vVar = (v) uVar;
                f(vVar.f3165a, vVar.f3166b, vVar.f3167c, vVar.d);
                this.h = vVar.f3166b;
                this.f3172i = System.currentTimeMillis();
            } else if (uVar instanceof t) {
                k(((t) uVar).f3164a);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void f(x xVar, x xVar2, boolean z6, long j6) {
        g(xVar, xVar2, z6, j6, true);
    }

    private void r() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                File[] fileArrListFiles = new File(t6.d.l(this.f3170b), "ss_crash_logs").listFiles(r);
                if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                    Arrays.sort(fileArrListFiles, Collections.reverseOrder());
                    String str = this.f3174u;
                    this.f3174u = fileArrListFiles[0].getName();
                    int length = fileArrListFiles.length;
                    bufferedReader = null;
                    boolean z6 = false;
                    for (int i10 = 0; i10 < length; i10++) {
                        try {
                            try {
                                File file = fileArrListFiles[i10];
                                if (i10 >= 5 || (str != null && str.equals(file.getName()))) {
                                    z6 = true;
                                }
                                if (!z6 && file.length() < 16384) {
                                    try {
                                        BufferedReader bufferedReader3 = new BufferedReader(new FileReader(file));
                                        try {
                                            String line = bufferedReader3.readLine();
                                            bufferedReader3.close();
                                            try {
                                                n(new JSONObject(line));
                                            } catch (Exception unused) {
                                            }
                                            bufferedReader = null;
                                        } catch (Exception unused2) {
                                            bufferedReader = bufferedReader3;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            bufferedReader = bufferedReader3;
                                            com.bytedance.tea.common.utility.io.a.a(bufferedReader);
                                            throw th;
                                        }
                                    } catch (Exception unused3) {
                                    }
                                }
                                try {
                                    file.delete();
                                } catch (Exception unused4) {
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Exception unused5) {
                            bufferedReader2 = bufferedReader;
                            com.bytedance.tea.common.utility.io.a.a(bufferedReader2);
                            return;
                        }
                    }
                    com.bytedance.tea.common.utility.io.a.a(bufferedReader);
                    return;
                }
                com.bytedance.tea.common.utility.io.a.a(null);
            } catch (Throwable th4) {
                bufferedReader = null;
                th = th4;
            }
        } catch (Exception unused6) {
        }
    }

    void c(int i10) {
        this.k = i10;
    }

    void h(JSONObject jSONObject) {
        this.l = jSONObject;
    }

    synchronized void l(JSONObject jSONObject) {
        try {
            for (String str : com.ss.android.tea.common.applog.b.f3091a) {
                this.f3171c.put(str, jSONObject.opt(str));
            }
        } catch (Exception e) {
            Logger.w("AppLog", "updateHeader exception: " + e);
        }
    }

    synchronized void n(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.length() != 0) {
                    try {
                        m mVarT = m.t(this.f3170b);
                        jSONObject.put("magic_tag", "ss_app_log");
                        jSONObject.put("header", this.f3171c);
                        String string = jSONObject.toString();
                        if (Logger.debug()) {
                            Logger.d("AppLog", "insert crash log data: " + string);
                        }
                        long jF = mVarT.f(string);
                        if (Logger.debug()) {
                            Logger.d("AppLog", "insert crash log id: " + jF);
                        }
                    } catch (Exception e) {
                        Logger.w("AppLog", "insertCrashlog exception: " + e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    w(Context context, JSONObject jSONObject, LinkedList<u> linkedList, AtomicBoolean atomicBoolean, com.ss.android.tea.common.applog.b.e eVar, x xVar, ConcurrentHashMap concurrentHashMap, ConcurrentHashMap concurrentHashMap2) {
        super("LogReaper");
        this.f = 0L;
        this.g = 0L;
        this.f3172i = 0L;
        this.f3173j = new AtomicLong();
        this.k = 0;
        this.l = null;
        this.m = StickerService.SHARED_REQUEST_INTERVAL;
        this.f3174u = null;
        this.f3175v = null;
        this.f3170b = context;
        this.f3171c = jSONObject;
        this.f3169a = linkedList;
        this.d = atomicBoolean;
        this.h = xVar;
        this.n = concurrentHashMap;
        this.o = concurrentHashMap2;
    }

    private String b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return jSONObject.optJSONObject("header") != null ? jSONObject.toString() : str;
        } catch (JSONException e) {
            e.printStackTrace();
            return str;
        }
    }

    private void g(x xVar, x xVar2, boolean z6, long j6, boolean z10) {
        m mVarT = m.t(this.f3170b);
        try {
            mVarT.h(this.f3171c, this.l);
        } catch (Throwable unused) {
        }
        if (xVar == null && xVar2 == null) {
            return;
        }
        if (xVar == null) {
            if (xVar2 == null || !NetworkUtils.b(this.f3170b) || this.k <= 0 || xVar2.f3179i) {
                return;
            }
            try {
                if (p()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("magic_tag", "ss_app_log");
                    jSONObject.put("header", this.f3171c);
                    JSONArray jSONArray = new JSONArray();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("datetime", com.ss.android.tea.common.applog.b.v(xVar2.f3178c));
                    jSONObject2.put("session_id", xVar2.f3177b);
                    jSONObject2.put("local_time_ms", xVar2.f3178c);
                    jSONObject2.put("tea_event_index", xVar2.d);
                    if (xVar2.f3179i) {
                        jSONObject2.put("is_background", true);
                    }
                    jSONArray.put(jSONObject2);
                    jSONObject.put("launch", jSONArray);
                    i(com.ss.android.tea.common.applog.b.n0(), jSONObject.toString(), true);
                    return;
                }
                return;
            } catch (Throwable th) {
                Logger.d("AppLog", "send launch exception: " + th);
                return;
            }
        }
        long[] jArr = new long[1];
        boolean zI = false;
        if (z6) {
            jArr[0] = j6;
        } else {
            jArr[0] = 0;
        }
        String[] strArr = new String[1];
        long jE = mVarT.e(xVar, xVar2, this.f3171c, z6, jArr, strArr, null, z10, this.l);
        if (jE > 0) {
            String str = strArr[0];
            if (jArr[0] > j6 && z10) {
                v vVar = new v();
                vVar.f3165a = xVar;
                vVar.f3167c = true;
                vVar.d = jArr[0];
                synchronized (this.f3169a) {
                    this.f3169a.add(vVar);
                }
            }
            if (NetworkUtils.b(this.f3170b)) {
                try {
                    Logger.d("AppLog", "begin to send batch logs");
                    if (com.ss.android.tea.common.applog.b.K0() && this.m == 900000) {
                        return;
                    }
                    zI = i(com.ss.android.tea.common.applog.b.n0(), str, true);
                    if (zI && xVar2 != null && p()) {
                        xVar2.f3180j = true;
                        mVarT.r(xVar2.f3176a);
                    }
                } catch (Throwable th2) {
                    Logger.d("AppLog", "send session exception: " + th2);
                }
                boolean z11 = zI;
                mVarT.n(jE, z11);
                if (z11 || this.f >= 0) {
                    return;
                }
                this.f = jE;
            }
        }
    }

    private boolean i(String str, String str2, boolean z6) throws Throwable {
        String strPost;
        try {
            String strB = b(str2);
            if (Logger.debug()) {
                Logger.d("AppLog", "app_log: " + strB);
            }
            byte[] bytes = strB.getBytes("UTF-8");
            byte[] bArr = (byte[]) bytes.clone();
            if (com.bytedance.tea.common.utility.d.a(str) || !z6 || this.f3170b == null || !com.ss.android.tea.common.applog.b.E0()) {
                strPost = NetworkClient.getDefault().post(str, bytes, true, ApiRequest.CONTENT_TYPE_JSON, false);
            } else {
                try {
                    strPost = y.g(str, bArr, this.f3170b, false);
                } catch (RuntimeException unused) {
                    strPost = NetworkClient.getDefault().post(str, bytes, true, ApiRequest.CONTENT_TYPE_JSON, false);
                }
            }
            if (strPost != null && strPost.length() != 0) {
                if (Logger.debug()) {
                    Logger.v("AppLog", "app_log response: " + strPost);
                }
                JSONObject jSONObject = new JSONObject(strPost);
                boolean z10 = "ss_app_log".equals(jSONObject.optString("magic_tag")) && "success".equals(jSONObject.optString(AccountNotice.LEVEL_MESSAGE));
                if (z10) {
                    try {
                        long jOptLong = jSONObject.optLong("server_time");
                        if (jOptLong > 0) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("server_time", jOptLong);
                            jSONObject2.put("local_time", System.currentTimeMillis() / 1000);
                            this.l = jSONObject2;
                        }
                    } catch (Exception unused2) {
                    }
                }
                try {
                    if (com.ss.android.tea.common.applog.b.K0()) {
                        if (jSONObject.optJSONObject("blacklist") != null) {
                            Logger.d("AppLog", jSONObject.optJSONObject("blacklist").toString());
                            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONObject("blacklist").optJSONArray("v1");
                            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                                int length = jSONArrayOptJSONArray.length();
                                for (int i10 = 0; i10 < length; i10++) {
                                    String string = jSONArrayOptJSONArray.getString(i10);
                                    if (!com.bytedance.tea.common.utility.d.a(string)) {
                                        this.n.put(string, "black");
                                    }
                                }
                            }
                            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONObject("blacklist").optJSONArray("v3");
                            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                                int length2 = jSONArrayOptJSONArray2.length();
                                for (int i11 = 0; i11 < length2; i11++) {
                                    String string2 = jSONArrayOptJSONArray2.getString(i11);
                                    if (!com.bytedance.tea.common.utility.d.a(string2)) {
                                        this.o.put(string2, "black");
                                    }
                                }
                            }
                        } else {
                            Logger.d("AppLog", "black list is empty");
                            if (!this.n.isEmpty()) {
                                this.n.clear();
                            }
                            if (!this.o.isEmpty()) {
                                this.o.clear();
                            }
                        }
                    }
                } catch (Throwable unused3) {
                }
                this.m = StickerService.SHARED_REQUEST_INTERVAL;
                return z10;
            }
            return false;
        } catch (Throwable th) {
            if (com.ss.android.tea.common.applog.b.K0() && (th instanceof CommonHttpException) && th.getResponseCode() == 509) {
                Logger.d("AppLog", "server return 509");
                this.m = 900000L;
            }
            throw th;
        }
    }

    private void k(long j6) {
        if (j6 <= 0) {
            return;
        }
        Logger.d("AppLog", "try to batch session  id < " + j6);
        x xVarP = m.t(this.f3170b).p(j6);
        if (xVarP != null) {
            f(xVarP, null, false, 0L);
            t tVar = new t();
            tVar.f3164a = xVarP.f3176a;
            synchronized (this.f3169a) {
                this.f3169a.add(tVar);
            }
        }
    }

    private boolean p() {
        try {
            return !com.bytedance.tea.common.utility.d.a(this.f3171c.optString("device_id", ""));
        } catch (Throwable unused) {
            return false;
        }
    }

    private void q() {
        m.t(this.f3170b).k();
    }

    private void s() {
        BufferedReader bufferedReader;
        String str;
        int i10;
        try {
            File[] fileArrListFiles = new File(t6.d.l(this.f3170b), "ss_native_crash_logs").listFiles(q);
            if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                com.bytedance.tea.common.utility.io.a.a(null);
                return;
            }
            Arrays.sort(fileArrListFiles, Collections.reverseOrder());
            String str2 = this.f3175v;
            int i11 = 0;
            this.f3175v = fileArrListFiles[0].getName();
            int length = fileArrListFiles.length;
            int i12 = 0;
            boolean z6 = false;
            BufferedReader bufferedReader2 = null;
            while (i12 < length) {
                try {
                    File file = fileArrListFiles[i12];
                    if (i12 >= 5 || (str2 != null && str2.equals(file.getName()))) {
                        z6 = true;
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    if (z6 || file.length() >= 16384) {
                        str = str2;
                        i10 = i11;
                    } else {
                        try {
                            BufferedReader bufferedReader3 = new BufferedReader(new FileReader(file));
                            str = str2;
                            int i13 = i11;
                            long j6 = 0;
                            String str3 = null;
                            while (true) {
                                try {
                                    try {
                                        String line = bufferedReader3.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        if (i13 == 0) {
                                            try {
                                                j6 = Long.parseLong(line);
                                            } catch (Exception unused) {
                                                bufferedReader2 = bufferedReader3;
                                                i10 = 0;
                                            }
                                        } else if (i13 == 1) {
                                            str3 = line;
                                        } else {
                                            stringBuffer.append(line + "\n");
                                        }
                                        i13++;
                                    } catch (Exception unused2) {
                                        i10 = 0;
                                        bufferedReader2 = bufferedReader3;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedReader = bufferedReader3;
                                }
                            }
                            bufferedReader3.close();
                            try {
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("data", stringBuffer.toString().trim());
                                jSONObject.put("is_native_crash", 1);
                                if (!str3.startsWith("no_process_name")) {
                                    jSONObject.put("process_name", str3);
                                }
                                if (j6 > 0) {
                                    jSONObject.put("crash_time", j6);
                                }
                                if (str3.contains(":")) {
                                    jSONObject.put("remote_process", 1);
                                    i10 = 0;
                                } else {
                                    i10 = 0;
                                    jSONObject.put("remote_process", 0);
                                }
                                try {
                                    n(jSONObject);
                                } catch (Exception unused3) {
                                }
                            } catch (Exception unused4) {
                                i10 = 0;
                            }
                            bufferedReader2 = null;
                        } catch (Exception unused5) {
                            str = str2;
                            i10 = i11;
                        }
                    }
                    try {
                        file.delete();
                    } catch (Exception unused6) {
                    }
                    i12++;
                    i11 = i10;
                    str2 = str;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                }
            }
            com.bytedance.tea.common.utility.io.a.a(bufferedReader2);
            return;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
        try {
            Logger.w("AppLog", "parse native crash log exceptin: " + th);
        } finally {
            com.bytedance.tea.common.utility.io.a.a(bufferedReader);
        }
    }

    void d(long j6) {
        this.f3173j.set(j6);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0058  */
    /* JADX WARN: Code duplicated, block: B:25:0x005a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0066  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:81:0x004a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x00c0 A[EDGE_INSN: B:83:0x00c0->B:51:0x00c0 BREAK  A[LOOP:1: B:4:0x001c->B:85:0x001c], SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        u uVar;
        long j6;
        long j10;
        x xVar;
        long j11;
        u uVarPoll;
        Logger.d("AppLog", "LogReaper start");
        q();
        this.g = System.currentTimeMillis();
        this.f3172i = System.currentTimeMillis();
        u uVarPoll2 = null;
        loop0: while (true) {
            int i10 = 0;
            while (true) {
                if (uVarPoll2 == null) {
                    synchronized (this.f3169a) {
                        try {
                            if (!this.d.get()) {
                                if (!this.f3169a.isEmpty()) {
                                    uVarPoll2 = this.f3169a.poll();
                                }
                                uVar = uVarPoll2;
                                if (uVar == null) {
                                    j6 = this.f3173j.get();
                                    if (j6 < 20000) {
                                        j10 = 0;
                                    } else {
                                        j10 = j6;
                                    }
                                    xVar = this.h;
                                    if (xVar != null || xVar.f3179i) {
                                        j11 = 0;
                                    } else {
                                        j11 = xVar.f3176a;
                                    }
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    if (j10 > 0 || j11 <= 0) {
                                        j10 = 0;
                                    } else if (jCurrentTimeMillis - this.f3172i > j10) {
                                        if (NetworkUtils.b(this.f3170b)) {
                                            this.f3172i = jCurrentTimeMillis;
                                            Logger.v("AppLog", "batch event " + j10);
                                            g(xVar, null, true, 0L, false);
                                        } else {
                                            j10 = 0;
                                        }
                                    }
                                    if (!t()) {
                                        break;
                                    }
                                    if (!com.ss.android.tea.common.applog.b.K0() && (i10 = i10 + 1) > 4) {
                                        this.f = -1L;
                                        break;
                                    }
                                    uVarPoll2 = uVar;
                                } else {
                                    e(uVar);
                                    uVarPoll2 = null;
                                }
                            } else {
                                break loop0;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } else {
                    uVar = uVarPoll2;
                    if (uVar == null) {
                        e(uVar);
                        uVarPoll2 = null;
                    } else {
                        j6 = this.f3173j.get();
                        if (j6 < 20000) {
                            j10 = 0;
                        } else {
                            j10 = j6;
                        }
                        xVar = this.h;
                        if (xVar != null) {
                            j11 = 0;
                        } else {
                            j11 = 0;
                        }
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        if (j10 > 0) {
                            j10 = 0;
                        } else {
                            j10 = 0;
                        }
                        if (!t()) {
                            break;
                            break;
                        } else {
                            if (!com.ss.android.tea.common.applog.b.K0()) {
                            }
                            uVarPoll2 = uVar;
                        }
                    }
                }
            }
            synchronized (this.f3169a) {
                try {
                    if (this.f3169a.isEmpty()) {
                        if (j10 > 0) {
                            try {
                                Logger.v("AppLog", "wait for batch event " + j10);
                                this.f3169a.wait(j10);
                            } catch (InterruptedException unused) {
                            }
                        } else {
                            this.f3169a.wait();
                        }
                        if (!this.d.get()) {
                            uVarPoll = uVar;
                        }
                    } else {
                        uVarPoll = this.f3169a.poll();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            uVarPoll2 = uVarPoll;
        }
        Logger.d("AppLog", "LogReaper quit");
    }

    private boolean t() throws Throwable {
        r();
        s();
        boolean zI = false;
        if (!NetworkUtils.b(this.f3170b)) {
            return false;
        }
        if (this.f < 0 && System.currentTimeMillis() - this.g > this.m) {
            this.f = 0L;
            q();
            this.g = System.currentTimeMillis();
        }
        if (this.f < 0) {
            return false;
        }
        m mVarT = m.t(this.f3170b);
        r rVarI = mVarT.i(this.f);
        if (rVarI == null) {
            this.f = -1L;
            return false;
        }
        long j6 = this.f;
        long j10 = rVarI.f3158a;
        if (j6 < j10) {
            this.f = j10;
        } else {
            this.f = j6 + 1;
        }
        String str = rVarI.f3159b;
        if (str != null && str.length() != 0) {
            try {
                int i10 = rVarI.f;
                if (i10 == 0) {
                    zI = i(com.ss.android.tea.common.applog.b.n0(), rVarI.f3159b, true);
                } else if (i10 == 1) {
                    zI = i(com.ss.android.tea.common.applog.b.x0(), rVarI.f3159b, false);
                } else {
                    zI = true;
                }
            } catch (Throwable th) {
                Logger.d("AppLog", "send session exception: " + th);
            }
            mVarT.n(rVarI.f3158a, zI);
        }
        return true;
    }
}
