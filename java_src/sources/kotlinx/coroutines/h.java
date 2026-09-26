package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class h extends l1 {

    @NotNull
    private final Thread thread;

    @Override // kotlinx.coroutines.m1
    @NotNull
    protected Thread P0() {
        return this.thread;
    }

    public h(@NotNull Thread thread) {
        this.thread = thread;
    }
}
