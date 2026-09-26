package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class i {
    private static final int MAX_CHARS_IN_POOL;
    private static int charsTotal;

    @NotNull
    public static final i INSTANCE = new i();

    @NotNull
    private static final kotlin.collections.k<char[]> arrays = new kotlin.collections.k<>();

    @NotNull
    public final char[] b() {
        char[] cArrZ;
        synchronized (this) {
            cArrZ = arrays.z();
            if (cArrZ != null) {
                charsTotal -= cArrZ.length;
            } else {
                cArrZ = null;
            }
        }
        return cArrZ == null ? new char[128] : cArrZ;
    }

    static {
        Object objB;
        try {
            w7.v.a aVar = w7.v.Companion;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            kotlin.jvm.internal.t.i(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            objB = w7.v.b(kotlin.text.s.m(property));
        } catch (Throwable th) {
            w7.v.a aVar2 = w7.v.Companion;
            objB = w7.v.b(w7.w.a(th));
        }
        if (w7.v.g(objB)) {
            objB = null;
        }
        Integer num = (Integer) objB;
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : 1048576;
    }

    public final void a(@NotNull char[] array) {
        kotlin.jvm.internal.t.j(array, "array");
        synchronized (this) {
            try {
                int i10 = charsTotal;
                if (array.length + i10 < MAX_CHARS_IN_POOL) {
                    charsTotal = i10 + array.length;
                    arrays.g(array);
                }
                w7.l0 l0Var = w7.l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private i() {
    }
}
