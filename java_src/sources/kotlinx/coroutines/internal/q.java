package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes6.dex */
public final class q {
    public static final void a(int i10) {
        if (i10 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but got " + i10).toString());
    }
}
