package q6;

import android.content.Context;

/* JADX INFO: loaded from: classes10.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f3336a;

    public static c a(Context context) throws IllegalArgumentException {
        if (f3336a == null) {
            synchronized (b.class) {
                try {
                    c cVar = f3336a;
                    if (cVar == null) {
                        if (context == null) {
                            throw new IllegalArgumentException("context == null");
                        }
                        if (cVar == null) {
                            f3336a = new a(context);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3336a;
    }
}
