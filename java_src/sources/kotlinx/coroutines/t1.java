package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class t1 implements o0 {

    @NotNull
    public static final t1 INSTANCE = new t1();

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return kotlin.coroutines.h.INSTANCE;
    }

    private t1() {
    }
}
