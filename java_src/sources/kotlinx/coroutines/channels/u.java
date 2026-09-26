package kotlinx.coroutines.channels;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public interface u<E> {

    public static final class a {
        public static /* synthetic */ boolean a(u uVar, Throwable th, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i10 & 1) != 0) {
                th = null;
            }
            return uVar.c(th);
        }
    }

    boolean c(@Nullable Throwable th);

    @NotNull
    Object p(E e);

    boolean t();

    void u(@NotNull e8.l<? super Throwable, l0> lVar);

    @Nullable
    Object w(E e, @NotNull kotlin.coroutines.d<? super l0> dVar);
}
