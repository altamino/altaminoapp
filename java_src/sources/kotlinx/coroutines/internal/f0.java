package kotlinx.coroutines.internal;

import androidx.core.internal.view.SupportMenu;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.r2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f0<S extends f0<S>> extends e<S> implements r2 {

    @NotNull
    private static final AtomicIntegerFieldUpdater cleanedAndPointers$FU = AtomicIntegerFieldUpdater.newUpdater(f0.class, "cleanedAndPointers");
    private volatile int cleanedAndPointers;
    public final long id;

    public abstract int n();

    public abstract void o(int i10, @Nullable Throwable th, @NotNull kotlin.coroutines.g gVar);

    @Override // kotlinx.coroutines.internal.e
    public boolean h() {
        return cleanedAndPointers$FU.get(this) == n() && !i();
    }

    public final boolean m() {
        return cleanedAndPointers$FU.addAndGet(this, SupportMenu.CATEGORY_MASK) == n() && !i();
    }

    public final void p() {
        if (cleanedAndPointers$FU.incrementAndGet(this) == n()) {
            k();
        }
    }

    public final boolean q() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = cleanedAndPointers$FU;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 == n() && !i()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 65536 + i10));
        return true;
    }

    public f0(long j6, @Nullable S s, int i10) {
        super(s);
        this.id = j6;
        this.cleanedAndPointers = i10 << 16;
    }
}
