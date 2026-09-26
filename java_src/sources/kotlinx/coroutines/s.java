package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class s extends c0 {

    @NotNull
    private static final AtomicIntegerFieldUpdater _resumed$FU = AtomicIntegerFieldUpdater.newUpdater(s.class, "_resumed");
    private volatile int _resumed;

    public s(@NotNull kotlin.coroutines.d<?> dVar, @Nullable Throwable th, boolean z6) {
        if (th == null) {
            th = new CancellationException("Continuation " + dVar + " was cancelled normally");
        }
        super(th, z6);
        this._resumed = 0;
    }

    public final boolean c() {
        return _resumed$FU.compareAndSet(this, 0, 1);
    }
}
