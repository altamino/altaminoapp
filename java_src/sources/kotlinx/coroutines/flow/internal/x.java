package kotlinx.coroutines.flow.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class x<T> implements kotlin.coroutines.d<T>, kotlin.coroutines.jvm.internal.e {

    @NotNull
    private final kotlin.coroutines.g context;

    @NotNull
    private final kotlin.coroutines.d<T> uCont;

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        return this.context;
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.d<T> dVar = this.uCont;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
        this.uCont.resumeWith(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x(@NotNull kotlin.coroutines.d<? super T> dVar, @NotNull kotlin.coroutines.g gVar) {
        this.uCont = dVar;
        this.context = gVar;
    }
}
