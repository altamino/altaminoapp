package c1;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes8.dex */
public final class b {
    @NonNull
    public static <T> T a(T t5, Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void b(boolean z6, Object obj) {
        if (!z6) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
