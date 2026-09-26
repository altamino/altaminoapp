package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class y<T> extends j2 implements x<T> {
    public y(@Nullable b2 b2Var) {
        super(true);
        q0(b2Var);
    }

    @Override // kotlinx.coroutines.j2
    public boolean j0() {
        return true;
    }

    @Override // kotlinx.coroutines.x
    public boolean a(@NotNull Throwable th) {
        return w0(new c0(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.v0
    public T h() {
        return (T) e0();
    }

    @Override // kotlinx.coroutines.v0
    @Nullable
    public Object i(@NotNull kotlin.coroutines.d<? super T> dVar) throws Throwable {
        Object objD = D(dVar);
        kotlin.coroutines.intrinsics.d.e();
        return objD;
    }

    @Override // kotlinx.coroutines.x
    public boolean o(T t5) {
        return w0(t5);
    }
}
