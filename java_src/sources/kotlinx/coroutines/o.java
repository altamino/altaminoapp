package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface o<T> extends kotlin.coroutines.d<T> {

    public static final class a {
        public static /* synthetic */ boolean a(o oVar, Throwable th, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th = null;
            }
            return oVar.e(th);
        }
    }

    void B(T t5, @Nullable e8.l<? super Throwable, w7.l0> lVar);

    void K(@NotNull Object obj);

    @Nullable
    Object M(@NotNull Throwable th);

    void S(@NotNull e8.l<? super Throwable, w7.l0> lVar);

    void V(@NotNull k0 k0Var, T t5);

    boolean e(@Nullable Throwable th);

    boolean isActive();

    boolean m();

    @Nullable
    Object r(T t5, @Nullable Object obj, @Nullable e8.l<? super Throwable, w7.l0> lVar);
}
