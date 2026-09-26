package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes6.dex */
public final class n {
    private static final boolean ANDROID_DETECTED = false;

    public static final boolean a() {
        return ANDROID_DETECTED;
    }

    static {
        Object objB;
        try {
            w7.v.a aVar = w7.v.Companion;
            objB = w7.v.b(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            w7.v.a aVar2 = w7.v.Companion;
            objB = w7.v.b(w7.w.a(th));
        }
        w7.v.h(objB);
    }
}
