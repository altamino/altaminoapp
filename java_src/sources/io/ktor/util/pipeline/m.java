package io.ktor.util.pipeline;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class m implements kotlin.coroutines.jvm.internal.e, kotlin.coroutines.d<?> {

    @NotNull
    public static final m INSTANCE = new m();

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        return null;
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        return kotlin.coroutines.h.INSTANCE;
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
        l.INSTANCE.a();
    }

    private m() {
    }
}
