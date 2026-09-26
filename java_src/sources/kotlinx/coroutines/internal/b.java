package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b<T> extends b0 {

    @NotNull
    private static final AtomicReferenceFieldUpdater _consensus$FU = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_consensus");

    @Nullable
    private volatile Object _consensus = a.NO_DECISION;

    public abstract void b(T t5, @Nullable Object obj);

    @Nullable
    public abstract Object d(T t5);

    private final Object c(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _consensus$FU;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        Object obj3 = a.NO_DECISION;
        if (obj2 != obj3) {
            return obj2;
        }
        return androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj3, obj) ? obj : atomicReferenceFieldUpdater.get(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.b0
    @Nullable
    public final Object a(@Nullable Object obj) {
        Object objC = _consensus$FU.get(this);
        if (objC == a.NO_DECISION) {
            objC = c(d(obj));
        }
        b(obj, objC);
        return objC;
    }
}
