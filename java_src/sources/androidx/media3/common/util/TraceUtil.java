package androidx.media3.common.util;

import android.os.Trace;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class TraceUtil {
    public static void a(String str) {
        if (Util.SDK_INT >= 18) {
            b(str);
        }
    }

    public static void c() {
        if (Util.SDK_INT >= 18) {
            d();
        }
    }

    private TraceUtil() {
    }

    @RequiresApi
    private static void b(String str) {
        Trace.beginSection(str);
    }

    @RequiresApi
    private static void d() {
        Trace.endSection();
    }
}
