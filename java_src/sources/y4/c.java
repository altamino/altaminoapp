package y4;

import android.util.Log;

/* JADX INFO: loaded from: classes9.dex */
class c {
    private static final String LOG_TAG = "FirebasePerformance";
    private static c instance;

    public static synchronized c c() {
        try {
            if (instance == null) {
                instance = new c();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    void a(String str) {
        Log.d(LOG_TAG, str);
    }

    void b(String str) {
        Log.e(LOG_TAG, str);
    }

    void d(String str) {
        Log.i(LOG_TAG, str);
    }

    void e(String str) {
        Log.w(LOG_TAG, str);
    }

    private c() {
    }
}
