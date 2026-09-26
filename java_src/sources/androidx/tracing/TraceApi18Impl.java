package androidx.tracing;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
final class TraceApi18Impl {
    private TraceApi18Impl() {
    }

    public static void a(@NonNull String str) {
        android.os.Trace.beginSection(str);
    }

    public static void b() {
        android.os.Trace.endSection();
    }
}
