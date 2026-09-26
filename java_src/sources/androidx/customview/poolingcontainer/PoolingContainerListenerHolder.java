package androidx.customview.poolingcontainer;

import java.util.ArrayList;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class PoolingContainerListenerHolder {

    @NotNull
    private final ArrayList<PoolingContainerListener> listeners = new ArrayList<>();

    public final void a(@NotNull PoolingContainerListener listener) {
        t.j(listener, "listener");
        this.listeners.add(listener);
    }

    public final void b() {
        for (int iO = v.o(this.listeners); -1 < iO; iO--) {
            this.listeners.get(iO).a();
        }
    }

    public final void c(@NotNull PoolingContainerListener listener) {
        t.j(listener, "listener");
        this.listeners.remove(listener);
    }
}
