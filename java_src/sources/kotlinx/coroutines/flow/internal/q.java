package kotlinx.coroutines.flow.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class q implements kotlin.coroutines.d<Object> {

    @NotNull
    public static final q INSTANCE = new q();

    @NotNull
    private static final kotlin.coroutines.g context = kotlin.coroutines.h.INSTANCE;

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        return context;
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
    }

    private q() {
    }
}
