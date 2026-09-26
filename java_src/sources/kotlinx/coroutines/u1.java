package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class u1 implements v1 {

    @NotNull
    private final o2 list;

    @Override // kotlinx.coroutines.v1
    @NotNull
    public o2 a() {
        return this.list;
    }

    @Override // kotlinx.coroutines.v1
    public boolean isActive() {
        return false;
    }

    public u1(@NotNull o2 o2Var) {
        this.list = o2Var;
    }

    @NotNull
    public String toString() {
        return super.toString();
    }
}
