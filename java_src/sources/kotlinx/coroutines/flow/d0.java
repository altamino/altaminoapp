package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class d0 {

    @NotNull
    public static final kotlinx.coroutines.internal.i0 NO_VALUE = new kotlinx.coroutines.internal.i0("NO_VALUE");

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object f(Object[] objArr, long j6) {
        return objArr[((int) j6) & (objArr.length - 1)];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(Object[] objArr, long j6, Object obj) {
        objArr[((int) j6) & (objArr.length - 1)] = obj;
    }

    @NotNull
    public static final <T> w<T> a(int i10, int i11, @NotNull kotlinx.coroutines.channels.a aVar) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("replay cannot be negative, but was " + i10).toString());
        }
        if (i11 < 0) {
            throw new IllegalArgumentException(("extraBufferCapacity cannot be negative, but was " + i11).toString());
        }
        if (i10 > 0 || i11 > 0 || aVar == kotlinx.coroutines.channels.a.SUSPEND) {
            int i12 = i11 + i10;
            if (i12 < 0) {
                i12 = Integer.MAX_VALUE;
            }
            return new c0(i10, i12, aVar);
        }
        throw new IllegalArgumentException(("replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy " + aVar).toString());
    }

    public static /* synthetic */ w b(int i10, int i11, kotlinx.coroutines.channels.a aVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            aVar = kotlinx.coroutines.channels.a.SUSPEND;
        }
        return a(i10, i11, aVar);
    }

    @NotNull
    public static final <T> g<T> e(@NotNull b0<? extends T> b0Var, @NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return ((i10 == 0 || i10 == -3) && aVar == kotlinx.coroutines.channels.a.SUSPEND) ? b0Var : new kotlinx.coroutines.flow.internal.h(b0Var, gVar, i10, aVar);
    }
}
