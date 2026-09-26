package kotlin.coroutines.jvm.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class j extends a {
    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        return kotlin.coroutines.h.INSTANCE;
    }

    public j(@Nullable kotlin.coroutines.d<Object> dVar) {
        super(dVar);
        if (dVar != null && dVar.getContext() != kotlin.coroutines.h.INSTANCE) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
        }
    }
}
