package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import androidx.core.app.NotificationCompat;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
class a {
    private static final int CLEAR_ANONYMOUS_UPDATES = 7;
    private static final int EMPTY_QUEUES = 6;
    private static final int ENQUEUE_EVENTS = 1;
    private static final int ENQUEUE_GROUP = 3;
    private static final int ENQUEUE_PEOPLE = 0;
    private static final int FLUSH_QUEUE = 2;
    private static final int KILL_WORKER = 5;
    private static final String LOGTAG = "MixpanelAPI.Messages";
    private static final int PUSH_ANONYMOUS_PEOPLE_RECORDS = 4;
    private static final int REMOVE_RESIDUAL_IMAGE_FILES = 9;
    private static final int REWRITE_EVENT_PROPERTIES = 8;
    private static final Map<String, a> sInstances = new HashMap();
    protected final com.mixpanel.android.mpmetrics.d mConfig;
    protected final Context mContext;
    private final String mInstanceName;
    private final h mWorker = d();

    /* JADX INFO: renamed from: com.mixpanel.android.mpmetrics.a$a, reason: collision with other inner class name */
    static class C0280a extends d {
        private final String mEventName;
        private final boolean mIsAutomatic;
        private final JSONObject mSessionMetadata;

        public C0280a(String str, JSONObject jSONObject, String str2) {
            this(str, jSONObject, str2, false, new JSONObject());
        }

        public String c() {
            return this.mEventName;
        }

        public JSONObject e() {
            return this.mSessionMetadata;
        }

        public C0280a(String str, JSONObject jSONObject, String str2, boolean z6, JSONObject jSONObject2) {
            super(str2, jSONObject);
            this.mEventName = str;
            this.mIsAutomatic = z6;
            this.mSessionMetadata = jSONObject2;
        }

        public JSONObject d() {
            return b();
        }
    }

    class h {
        private l mSystemInformation;
        private final Object mHandlerLock = new Object();
        private long mFlushCount = 0;
        private long mAveFlushFrequency = 0;
        private long mLastFlushTime = -1;
        private Handler mHandler = f();

        /* JADX INFO: renamed from: com.mixpanel.android.mpmetrics.a$h$a, reason: collision with other inner class name */
        class HandlerC0281a extends Handler {
            private com.mixpanel.android.mpmetrics.e mDbAdapter;
            private int mFailedRetries;
            private final long mFlushInterval;
            private long mTrackEngageRetryAfter;

            /* JADX WARN: Code duplicated, block: B:45:0x0193  */
            /* JADX WARN: Code duplicated, block: B:60:0x0085 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:62:0x0199 A[SYNTHETIC] */
            private void d(com.mixpanel.android.mpmetrics.e eVar, String str, com.mixpanel.android.mpmetrics.e.b bVar, String str2) throws Throwable {
                com.mixpanel.android.util.g gVarH = a.this.h();
                String[] strArrO = eVar.o(bVar, str);
                int i10 = 0;
                Integer numValueOf = strArrO != null ? Integer.valueOf(strArrO[2]) : 0;
                while (strArrO != null && numValueOf.intValue() > 0) {
                    String str3 = strArrO[i10];
                    String str4 = strArrO[1];
                    String strC = com.mixpanel.android.util.a.c(str4);
                    HashMap map = new HashMap();
                    map.put("data", strC);
                    if (com.mixpanel.android.mpmetrics.d.DEBUG) {
                        map.put("verbose", "1");
                    }
                    try {
                        try {
                            SSLSocketFactory sSLSocketFactoryT = a.this.mConfig.t();
                            a.this.mConfig.r();
                            byte[] bArrA = gVarH.a(str2, null, map, sSLSocketFactoryT);
                            if (bArrA == null) {
                                try {
                                    a.this.i("Response was null, unexpected failure posting to " + str2 + ".");
                                } catch (OutOfMemoryError e) {
                                    e = e;
                                    com.mixpanel.android.util.d.d(a.LOGTAG, "Out of memory when posting to " + str2 + ".", e);
                                    if (i10 == 0) {
                                    }
                                    a.this.i("Not retrying this batch of events, deleting them from DB.");
                                    eVar.m(str3, bVar, str);
                                    strArrO = eVar.o(bVar, str);
                                    if (strArrO != null) {
                                        numValueOf = Integer.valueOf(strArrO[2]);
                                    }
                                    i10 = 0;
                                } catch (MalformedURLException e2) {
                                    e = e2;
                                    com.mixpanel.android.util.d.d(a.LOGTAG, "Cannot interpret " + str2 + " as a URL.", e);
                                    if (i10 == 0) {
                                    }
                                    a.this.i("Not retrying this batch of events, deleting them from DB.");
                                    eVar.m(str3, bVar, str);
                                    strArrO = eVar.o(bVar, str);
                                    if (strArrO != null) {
                                        numValueOf = Integer.valueOf(strArrO[2]);
                                    }
                                    i10 = 0;
                                }
                                removeMessages(2, str);
                                long jMax = Math.max(((long) Math.pow(2.0d, this.mFailedRetries)) * 60000, this.mTrackEngageRetryAfter);
                                this.mTrackEngageRetryAfter = jMax;
                                this.mTrackEngageRetryAfter = Math.min(jMax, 600000L);
                                Message messageObtain = Message.obtain();
                                messageObtain.what = 2;
                                messageObtain.obj = str;
                                sendMessageDelayed(messageObtain, this.mTrackEngageRetryAfter);
                                this.mFailedRetries++;
                                a.this.i("Retrying this batch of events in " + this.mTrackEngageRetryAfter + " ms");
                                return;
                            }
                            try {
                                String str5 = new String(bArrA, "UTF-8");
                                if (this.mFailedRetries > 0) {
                                    this.mFailedRetries = i10;
                                    removeMessages(2, str);
                                }
                                a.this.i("Successfully posted to " + str2 + ": \n" + str4);
                                a aVar = a.this;
                                StringBuilder sb = new StringBuilder();
                                sb.append("Response was ");
                                sb.append(str5);
                                aVar.i(sb.toString());
                                a.this.i("Not retrying this batch of events, deleting them from DB.");
                                eVar.m(str3, bVar, str);
                                strArrO = eVar.o(bVar, str);
                                if (strArrO != null) {
                                    numValueOf = Integer.valueOf(strArrO[2]);
                                }
                                i10 = 0;
                            } catch (UnsupportedEncodingException e6) {
                                throw new RuntimeException("UTF not supported on this platform?", e6);
                            }
                        } catch (OutOfMemoryError e7) {
                            e = e7;
                            i10 = 1;
                        } catch (MalformedURLException e10) {
                            e = e10;
                            i10 = 1;
                        }
                        if (i10 == 0) {
                            removeMessages(2, str);
                            long jMax2 = Math.max(((long) Math.pow(2.0d, this.mFailedRetries)) * 60000, this.mTrackEngageRetryAfter);
                            this.mTrackEngageRetryAfter = jMax2;
                            this.mTrackEngageRetryAfter = Math.min(jMax2, 600000L);
                            Message messageObtain2 = Message.obtain();
                            messageObtain2.what = 2;
                            messageObtain2.obj = str;
                            sendMessageDelayed(messageObtain2, this.mTrackEngageRetryAfter);
                            this.mFailedRetries++;
                            a.this.i("Retrying this batch of events in " + this.mTrackEngageRetryAfter + " ms");
                            return;
                        }
                        a.this.i("Not retrying this batch of events, deleting them from DB.");
                        eVar.m(str3, bVar, str);
                        strArrO = eVar.o(bVar, str);
                        if (strArrO != null) {
                            numValueOf = Integer.valueOf(strArrO[2]);
                        }
                        i10 = 0;
                    } catch (com.mixpanel.android.util.g.a e11) {
                        a.this.j("Cannot post message to " + str2 + ".", e11);
                        this.mTrackEngageRetryAfter = (long) (e11.a() * 1000);
                    } catch (SocketTimeoutException e12) {
                        a.this.j("Cannot post message to " + str2 + ".", e12);
                    } catch (IOException e13) {
                        a.this.j("Cannot post message to " + str2 + ".", e13);
                    }
                    com.mixpanel.android.util.d.d(a.LOGTAG, "Out of memory when posting to " + str2 + ".", e);
                }
            }

            public HandlerC0281a(Looper looper) {
                super(looper);
                this.mDbAdapter = null;
                h.this.mSystemInformation = l.f(a.this.mContext);
                this.mFlushInterval = a.this.mConfig.h();
            }

            private JSONObject a() throws JSONException {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("mp_lib", "android");
                jSONObject.put("$lib_version", "7.5.2");
                jSONObject.put("$os", "Android");
                String str = Build.VERSION.RELEASE;
                if (str == null) {
                    str = "UNKNOWN";
                }
                jSONObject.put("$os_version", str);
                String str2 = Build.MANUFACTURER;
                if (str2 == null) {
                    str2 = "UNKNOWN";
                }
                jSONObject.put("$manufacturer", str2);
                String str3 = Build.BRAND;
                if (str3 == null) {
                    str3 = "UNKNOWN";
                }
                jSONObject.put("$brand", str3);
                String str4 = Build.MODEL;
                jSONObject.put("$model", str4 != null ? str4 : "UNKNOWN");
                DisplayMetrics displayMetricsE = h.this.mSystemInformation.e();
                jSONObject.put("$screen_dpi", displayMetricsE.densityDpi);
                jSONObject.put("$screen_height", displayMetricsE.heightPixels);
                jSONObject.put("$screen_width", displayMetricsE.widthPixels);
                String strB = h.this.mSystemInformation.b();
                if (strB != null) {
                    jSONObject.put("$app_version", strB);
                    jSONObject.put("$app_version_string", strB);
                }
                Integer numA = h.this.mSystemInformation.a();
                if (numA != null) {
                    String strValueOf = String.valueOf(numA);
                    jSONObject.put("$app_release", strValueOf);
                    jSONObject.put("$app_build_number", strValueOf);
                }
                Boolean boolValueOf = Boolean.valueOf(h.this.mSystemInformation.g());
                if (boolValueOf != null) {
                    jSONObject.put("$has_nfc", boolValueOf.booleanValue());
                }
                Boolean boolValueOf2 = Boolean.valueOf(h.this.mSystemInformation.h());
                if (boolValueOf2 != null) {
                    jSONObject.put("$has_telephone", boolValueOf2.booleanValue());
                }
                String strD = h.this.mSystemInformation.d();
                if (strD != null && !strD.trim().isEmpty()) {
                    jSONObject.put("$carrier", strD);
                }
                Boolean boolJ = h.this.mSystemInformation.j();
                if (boolJ != null) {
                    jSONObject.put("$wifi", boolJ.booleanValue());
                }
                Boolean boolI = h.this.mSystemInformation.i();
                if (boolI != null) {
                    jSONObject.put("$bluetooth_enabled", boolI);
                }
                String strC = h.this.mSystemInformation.c();
                if (strC != null) {
                    jSONObject.put("$bluetooth_version", strC);
                }
                return jSONObject;
            }

            private JSONObject b(C0280a c0280a) throws JSONException {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObjectD = c0280a.d();
                JSONObject jSONObjectA = a();
                jSONObjectA.put(com.mixpanel.android.mpmetrics.e.KEY_TOKEN, c0280a.a());
                if (jSONObjectD != null) {
                    Iterator<String> itKeys = jSONObjectD.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        jSONObjectA.put(next, jSONObjectD.get(next));
                    }
                }
                jSONObject.put(NotificationCompat.CATEGORY_EVENT, c0280a.c());
                jSONObject.put("properties", jSONObjectA);
                jSONObject.put("$mp_metadata", c0280a.e());
                return jSONObject;
            }

            private void c(com.mixpanel.android.mpmetrics.e eVar, String str) throws Throwable {
                com.mixpanel.android.util.g gVarH = a.this.h();
                a aVar = a.this;
                Context context = aVar.mContext;
                aVar.mConfig.p();
                if (!gVarH.b(context, null)) {
                    a.this.i("Not flushing data to Mixpanel because the device is not connected to the internet.");
                    return;
                }
                d(eVar, str, com.mixpanel.android.mpmetrics.e.b.EVENTS, a.this.mConfig.f());
                d(eVar, str, com.mixpanel.android.mpmetrics.e.b.PEOPLE, a.this.mConfig.q());
                d(eVar, str, com.mixpanel.android.mpmetrics.e.b.GROUPS, a.this.mConfig.j());
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) throws Throwable {
                String strA;
                int iS;
                String strA2;
                String strA3;
                if (this.mDbAdapter == null) {
                    a aVar = a.this;
                    com.mixpanel.android.mpmetrics.e eVarK = aVar.k(aVar.mContext);
                    this.mDbAdapter = eVarK;
                    eVarK.l(System.currentTimeMillis() - a.this.mConfig.b(), com.mixpanel.android.mpmetrics.e.b.EVENTS);
                    this.mDbAdapter.l(System.currentTimeMillis() - a.this.mConfig.b(), com.mixpanel.android.mpmetrics.e.b.PEOPLE);
                }
                try {
                    int i10 = message.what;
                    if (i10 == 0) {
                        e eVar = (e) message.obj;
                        com.mixpanel.android.mpmetrics.e.b bVar = eVar.c() ? com.mixpanel.android.mpmetrics.e.b.ANONYMOUS_PEOPLE : com.mixpanel.android.mpmetrics.e.b.PEOPLE;
                        a.this.i("Queuing people record for sending later");
                        a.this.i("    " + eVar.toString());
                        strA2 = eVar.a();
                        iS = this.mDbAdapter.j(eVar.b(), strA2, bVar);
                        if (eVar.c()) {
                            iS = 0;
                        }
                    } else if (i10 == 3) {
                        b bVar2 = (b) message.obj;
                        a.this.i("Queuing group record for sending later");
                        a.this.i("    " + bVar2.toString());
                        strA2 = bVar2.a();
                        iS = this.mDbAdapter.j(bVar2.b(), strA2, com.mixpanel.android.mpmetrics.e.b.GROUPS);
                    } else if (i10 == 1) {
                        C0280a c0280a = (C0280a) message.obj;
                        try {
                            JSONObject jSONObjectB = b(c0280a);
                            a.this.i("Queuing event for sending later");
                            a.this.i("    " + jSONObjectB.toString());
                            strA3 = c0280a.a();
                            try {
                                iS = this.mDbAdapter.j(jSONObjectB, strA3, com.mixpanel.android.mpmetrics.e.b.EVENTS);
                            } catch (JSONException e) {
                                e = e;
                                com.mixpanel.android.util.d.d(a.LOGTAG, "Exception tracking event " + c0280a.c(), e);
                                iS = -3;
                            }
                        } catch (JSONException e2) {
                            e = e2;
                            strA3 = null;
                        }
                        strA2 = strA3;
                    } else if (i10 == 4) {
                        f fVar = (f) message.obj;
                        String strB = fVar.b();
                        strA2 = fVar.a();
                        iS = this.mDbAdapter.s(strA2, strB);
                    } else {
                        if (i10 == 7) {
                            strA = ((c) message.obj).a();
                            this.mDbAdapter.k(com.mixpanel.android.mpmetrics.e.b.ANONYMOUS_PEOPLE, strA);
                        } else {
                            if (i10 == 8) {
                                g gVar = (g) message.obj;
                                com.mixpanel.android.util.d.a(a.LOGTAG, this.mDbAdapter.t(gVar.b(), gVar.a()) + " stored events were updated with new properties.");
                            } else if (i10 == 2) {
                                a.this.i("Flushing queue due to scheduled or forced flush");
                                h.this.h();
                                strA = (String) message.obj;
                                c(this.mDbAdapter, strA);
                            } else if (i10 == 6) {
                                strA = ((c) message.obj).a();
                                this.mDbAdapter.k(com.mixpanel.android.mpmetrics.e.b.EVENTS, strA);
                                this.mDbAdapter.k(com.mixpanel.android.mpmetrics.e.b.PEOPLE, strA);
                                this.mDbAdapter.k(com.mixpanel.android.mpmetrics.e.b.GROUPS, strA);
                                this.mDbAdapter.k(com.mixpanel.android.mpmetrics.e.b.ANONYMOUS_PEOPLE, strA);
                            } else if (i10 == 5) {
                                com.mixpanel.android.util.d.k(a.LOGTAG, "Worker received a hard kill. Dumping all events and force-killing. Thread id " + Thread.currentThread().getId());
                                synchronized (h.this.mHandlerLock) {
                                    this.mDbAdapter.n();
                                    h.this.mHandler = null;
                                    Looper.myLooper().quit();
                                }
                            } else if (i10 == 9) {
                                com.mixpanel.android.util.c.a((File) message.obj);
                            } else {
                                com.mixpanel.android.util.d.c(a.LOGTAG, "Unexpected message received by Mixpanel worker: " + message);
                            }
                            iS = -3;
                            strA2 = null;
                        }
                        iS = -3;
                        strA2 = strA;
                    }
                    if ((iS >= a.this.mConfig.a() || iS == -2) && this.mFailedRetries <= 0 && strA2 != null) {
                        a.this.i("Flushing queue due to bulk upload limit (" + iS + ") for project " + strA2);
                        h.this.h();
                        c(this.mDbAdapter, strA2);
                        return;
                    }
                    if (iS <= 0 || hasMessages(2, strA2)) {
                        return;
                    }
                    a.this.i("Queue depth " + iS + " - Adding flush in " + this.mFlushInterval);
                    if (this.mFlushInterval >= 0) {
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 2;
                        messageObtain.obj = strA2;
                        messageObtain.arg1 = 1;
                        sendMessageDelayed(messageObtain, this.mFlushInterval);
                    }
                } catch (RuntimeException e6) {
                    com.mixpanel.android.util.d.d(a.LOGTAG, "Worker threw an unhandled exception", e6);
                    synchronized (h.this.mHandlerLock) {
                        h.this.mHandler = null;
                        try {
                            Looper.myLooper().quit();
                            com.mixpanel.android.util.d.d(a.LOGTAG, "Mixpanel will not process any more analytics messages", e6);
                        } catch (Exception e7) {
                            com.mixpanel.android.util.d.d(a.LOGTAG, "Could not halt looper", e7);
                        }
                    }
                }
            }
        }

        public h() {
        }

        protected Handler f() {
            HandlerThread handlerThread = new HandlerThread("com.mixpanel.android.AnalyticsWorker", 10);
            handlerThread.start();
            return new HandlerC0281a(handlerThread.getLooper());
        }

        public void g(Message message) {
            synchronized (this.mHandlerLock) {
                try {
                    Handler handler = this.mHandler;
                    if (handler == null) {
                        a.this.i("Dead mixpanel worker dropping a message: " + message.what);
                    } else {
                        handler.sendMessage(message);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j6 = this.mFlushCount;
            long j10 = 1 + j6;
            long j11 = this.mLastFlushTime;
            if (j11 > 0) {
                long j12 = ((jCurrentTimeMillis - j11) + (this.mAveFlushFrequency * j6)) / j10;
                this.mAveFlushFrequency = j12;
                a.this.i("Average send frequency approximately " + (j12 / 1000) + " seconds.");
            }
            this.mLastFlushTime = jCurrentTimeMillis;
            this.mFlushCount = j10;
        }
    }

    static class b extends d {
        public b(JSONObject jSONObject, String str) {
            super(str, jSONObject);
        }

        public String toString() {
            return b().toString();
        }
    }

    static class c {
        private final String mToken;

        public String a() {
            return this.mToken;
        }

        public c(String str) {
            this.mToken = str;
        }
    }

    static class d extends c {
        private final JSONObject mMessage;

        public JSONObject b() {
            return this.mMessage;
        }

        public d(String str, JSONObject jSONObject) {
            super(str);
            if (jSONObject != null && jSONObject.length() > 0) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    try {
                        jSONObject.get(next).toString();
                    } catch (AssertionError e) {
                        jSONObject.remove(next);
                        com.mixpanel.android.util.d.d(a.LOGTAG, "Removing people profile property from update (see https://github.com/mixpanel/mixpanel-android/issues/567)", e);
                    } catch (JSONException unused) {
                    }
                }
            }
            this.mMessage = jSONObject;
        }
    }

    static class e extends d {
        public e(JSONObject jSONObject, String str) {
            super(str, jSONObject);
        }

        public boolean c() {
            return !b().has("$distinct_id");
        }

        public String toString() {
            return b().toString();
        }
    }

    static class f extends c {
        private final String mDistinctId;

        public String b() {
            return this.mDistinctId;
        }

        public String toString() {
            return this.mDistinctId;
        }

        public f(String str, String str2) {
            super(str2);
            this.mDistinctId = str;
        }
    }

    static class g extends c {
        private final Map<String, String> mProps;

        public Map<String, String> b() {
            return this.mProps;
        }

        public g(String str, Map<String, String> map) {
            super(str);
            this.mProps = map;
        }
    }

    public static a g(Context context, com.mixpanel.android.mpmetrics.d dVar) {
        a aVar;
        Map<String, a> map = sInstances;
        synchronized (map) {
            try {
                Context applicationContext = context.getApplicationContext();
                String strL = dVar.l();
                if (map.containsKey(strL)) {
                    aVar = map.get(strL);
                } else {
                    aVar = new a(applicationContext, dVar);
                    map.put(strL, aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(String str) {
        com.mixpanel.android.util.d.i(LOGTAG, str + " (Thread " + Thread.currentThread().getId() + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(String str, Throwable th) {
        com.mixpanel.android.util.d.j(LOGTAG, str + " (Thread " + Thread.currentThread().getId() + ")", th);
    }

    protected h d() {
        return new h();
    }

    protected com.mixpanel.android.util.g h() {
        return new com.mixpanel.android.util.b();
    }

    protected com.mixpanel.android.mpmetrics.e k(Context context) {
        return com.mixpanel.android.mpmetrics.e.r(context, this.mConfig);
    }

    a(Context context, com.mixpanel.android.mpmetrics.d dVar) {
        this.mContext = context;
        this.mConfig = dVar;
        this.mInstanceName = dVar.l();
        h().c();
    }

    public void c(c cVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 7;
        messageObtain.obj = cVar;
        this.mWorker.g(messageObtain);
    }

    public void e(c cVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 6;
        messageObtain.obj = cVar;
        this.mWorker.g(messageObtain);
    }

    public void f(C0280a c0280a) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = c0280a;
        this.mWorker.g(messageObtain);
    }

    public void l(e eVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 0;
        messageObtain.obj = eVar;
        this.mWorker.g(messageObtain);
    }

    public void m(c cVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 2;
        messageObtain.obj = cVar.a();
        messageObtain.arg1 = 0;
        this.mWorker.g(messageObtain);
    }

    public void n(f fVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 4;
        messageObtain.obj = fVar;
        this.mWorker.g(messageObtain);
    }

    public void o(File file) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 9;
        messageObtain.obj = file;
        this.mWorker.g(messageObtain);
    }
}
