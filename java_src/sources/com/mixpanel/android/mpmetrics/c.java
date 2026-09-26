package com.mixpanel.android.mpmetrics;

import android.os.Process;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class c implements Thread.UncaughtExceptionHandler {
    private static final int SLEEP_TIMEOUT_MS = 400;
    private static c sInstance;
    private final Thread.UncaughtExceptionHandler mDefaultExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();

    class a implements g.c {
        final /* synthetic */ Throwable val$e;

        a(Throwable th) {
            this.val$e = th;
        }

        @Override // com.mixpanel.android.mpmetrics.g.c
        public void a(g gVar) {
            if (gVar.q().booleanValue()) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("$ae_crashed_reason", this.val$e.toString());
                    gVar.H("$ae_crashed", jSONObject, true);
                } catch (JSONException unused) {
                }
            }
        }
    }

    public static void a() {
        if (sInstance == null) {
            synchronized (c.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void b() {
        try {
            Thread.sleep(400L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        Process.killProcess(Process.myPid());
        System.exit(10);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        g.g(new a(th));
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mDefaultExceptionHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            b();
        }
    }

    public c() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }
}
