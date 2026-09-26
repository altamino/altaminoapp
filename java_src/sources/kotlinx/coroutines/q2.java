package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class q2 implements g1, u {

    @NotNull
    public static final q2 INSTANCE = new q2();

    @Override // kotlinx.coroutines.u
    public boolean b(@NotNull Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.u
    @Nullable
    public b2 getParent() {
        return null;
    }

    @Override // kotlinx.coroutines.g1
    public void t() {
    }

    @NotNull
    public String toString() {
        return "NonDisposableHandle";
    }

    private q2() {
    }
}
