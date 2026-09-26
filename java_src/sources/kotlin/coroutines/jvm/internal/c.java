package kotlin.coroutines.jvm.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class c implements kotlin.coroutines.d<Object> {

    @NotNull
    public static final c INSTANCE = new c();

    @NotNull
    public String toString() {
        return "This continuation is already complete";
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    private c() {
    }
}
