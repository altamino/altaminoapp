package kotlinx.coroutines.channels;

import kotlinx.coroutines.j3;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class v {

    @NotNull
    public final j3 waiter;

    @NotNull
    public String toString() {
        return "WaiterEB(" + this.waiter + ')';
    }

    public v(@NotNull j3 j3Var) {
        this.waiter = j3Var;
    }
}
