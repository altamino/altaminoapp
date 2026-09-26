package androidx.core.os;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class TraceCompat {
    private static final String TAG = "TraceCompat";
    private static Method sAsyncTraceBeginMethod;
    private static Method sAsyncTraceEndMethod;
    private static Method sIsTagEnabledMethod;
    private static Method sTraceCounterMethod;
    private static long sTraceTagApp;

    @RequiresApi
    static class Api18Impl {
        private Api18Impl() {
        }

        @DoNotInline
        static void a(String str) {
            Trace.beginSection(str);
        }

        @DoNotInline
        static void b() {
            Trace.endSection();
        }
    }

    @RequiresApi
    static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static void a(String str, int i10) {
            Trace.beginAsyncSection(str, i10);
        }

        @DoNotInline
        static void b(String str, int i10) {
            Trace.endAsyncSection(str, i10);
        }

        @DoNotInline
        static boolean c() {
            return Trace.isEnabled();
        }

        @DoNotInline
        static void d(String str, long j6) {
            Trace.setCounter(str, j6);
        }
    }

    static {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                sTraceTagApp = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                sIsTagEnabledMethod = Trace.class.getMethod("isTagEnabled", cls);
                Class cls2 = Integer.TYPE;
                sAsyncTraceBeginMethod = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
                sAsyncTraceEndMethod = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
                sTraceCounterMethod = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
            } catch (Exception e) {
                Log.i(TAG, "Unable to initialize via reflection.", e);
            }
        }
    }

    private TraceCompat() {
    }

    public static void a(@NonNull String str) {
        Api18Impl.a(str);
    }

    public static void b() {
        Api18Impl.b();
    }
}
