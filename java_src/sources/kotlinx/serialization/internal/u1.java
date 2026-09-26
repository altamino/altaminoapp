package kotlinx.serialization.internal;

/* JADX INFO: loaded from: classes11.dex */
public abstract class u1<Array> {
    public abstract Array a();

    public abstract void b(int i10);

    public abstract int d();

    public static /* synthetic */ void c(u1 u1Var, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ensureCapacity");
        }
        if ((i11 & 1) != 0) {
            i10 = u1Var.d() + 1;
        }
        u1Var.b(i10);
    }
}
