package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes2.dex */
final class Android {
    private static final boolean IS_ROBOLECTRIC;
    private static final Class<?> MEMORY_CLASS = a("libcore.io.Memory");

    static Class<?> b() {
        return MEMORY_CLASS;
    }

    static boolean c() {
        return (MEMORY_CLASS == null || IS_ROBOLECTRIC) ? false : true;
    }

    static {
        IS_ROBOLECTRIC = a("org.robolectric.Robolectric") != null;
    }

    Android() {
    }

    private static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
