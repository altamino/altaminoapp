package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public class c0 {

    @NotNull
    private static final AtomicIntegerFieldUpdater _handled$FU = AtomicIntegerFieldUpdater.newUpdater(c0.class, "_handled");
    private volatile int _handled;

    @NotNull
    public final Throwable cause;

    public c0(@NotNull Throwable th, boolean z6) {
        this.cause = th;
        this._handled = z6 ? 1 : 0;
    }

    public /* synthetic */ c0(Throwable th, boolean z6, int i10, kotlin.jvm.internal.k kVar) {
        this(th, (i10 & 2) != 0 ? false : z6);
    }

    public final boolean a() {
        return _handled$FU.get(this) != 0;
    }

    public final boolean b() {
        return _handled$FU.compareAndSet(this, 0, 1);
    }

    @NotNull
    public String toString() {
        return s0.a(this) + kotlinx.serialization.json.internal.b.BEGIN_LIST + this.cause + kotlinx.serialization.json.internal.b.END_LIST;
    }
}
