package kotlinx.coroutines.flow.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class r implements kotlinx.coroutines.flow.h<Object> {

    @NotNull
    public static final r INSTANCE = new r();

    @Override // kotlinx.coroutines.flow.h
    @Nullable
    public Object emit(@Nullable Object obj, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return l0.INSTANCE;
    }

    private r() {
    }
}
