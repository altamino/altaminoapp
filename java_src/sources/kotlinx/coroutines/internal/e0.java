package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class e0<T> extends kotlinx.coroutines.a<T> implements kotlin.coroutines.jvm.internal.e {

    @NotNull
    public final kotlin.coroutines.d<T> uCont;

    /* JADX WARN: Multi-variable type inference failed */
    public e0(@NotNull kotlin.coroutines.g gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        super(gVar, true, true);
        this.uCont = dVar;
    }

    @Override // kotlinx.coroutines.j2
    protected final boolean r0() {
        return true;
    }

    @Override // kotlinx.coroutines.j2
    protected void C(@Nullable Object obj) {
        k.c(kotlin.coroutines.intrinsics.c.c(this.uCont), kotlinx.coroutines.g0.a(obj, this.uCont), null, 2, null);
    }

    @Override // kotlinx.coroutines.a
    protected void W0(@Nullable Object obj) {
        kotlin.coroutines.d<T> dVar = this.uCont;
        dVar.resumeWith(kotlinx.coroutines.g0.a(obj, dVar));
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public final kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.d<T> dVar = this.uCont;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }
}
