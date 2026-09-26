package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
final class h<T> extends i<T> implements Iterator<T>, kotlin.coroutines.d<l0>, f8.a {

    @Nullable
    private Iterator<? extends T> nextIterator;

    @Nullable
    private kotlin.coroutines.d<? super l0> nextStep;

    @Nullable
    private T nextValue;
    private int state;

    public final void h(@Nullable kotlin.coroutines.d<? super l0> dVar) {
        this.nextStep = dVar;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    private final Throwable f() {
        int i10 = this.state;
        if (i10 == 4) {
            return new NoSuchElementException();
        }
        if (i10 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.state);
    }

    @Override // kotlin.sequences.i
    @Nullable
    public Object a(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        this.nextValue = t5;
        this.state = 3;
        this.nextStep = dVar;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        if (objE == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objE == kotlin.coroutines.intrinsics.d.e() ? objE : l0.INSTANCE;
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        return kotlin.coroutines.h.INSTANCE;
    }

    @Override // java.util.Iterator
    public boolean hasNext() throws Throwable {
        while (true) {
            int i10 = this.state;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2 || i10 == 3) {
                        return true;
                    }
                    if (i10 == 4) {
                        return false;
                    }
                    throw f();
                }
                Iterator<? extends T> it = this.nextIterator;
                t.g(it);
                if (it.hasNext()) {
                    this.state = 2;
                    return true;
                }
                this.nextIterator = null;
            }
            this.state = 5;
            kotlin.coroutines.d<? super l0> dVar = this.nextStep;
            t.g(dVar);
            this.nextStep = null;
            v.a aVar = v.Companion;
            dVar.resumeWith(v.b(l0.INSTANCE));
        }
    }

    @Override // java.util.Iterator
    public T next() throws Throwable {
        int i10 = this.state;
        if (i10 == 0 || i10 == 1) {
            return g();
        }
        if (i10 == 2) {
            this.state = 1;
            Iterator<? extends T> it = this.nextIterator;
            t.g(it);
            return it.next();
        }
        if (i10 != 3) {
            throw f();
        }
        this.state = 0;
        T t5 = this.nextValue;
        this.nextValue = null;
        return t5;
    }

    private final T g() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // kotlin.sequences.i
    @Nullable
    public Object b(@NotNull Iterator<? extends T> it, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        if (!it.hasNext()) {
            return l0.INSTANCE;
        }
        this.nextIterator = it;
        this.state = 2;
        this.nextStep = dVar;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        if (objE == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        if (objE == kotlin.coroutines.intrinsics.d.e()) {
            return objE;
        }
        return l0.INSTANCE;
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
        w.b(obj);
        this.state = 4;
    }
}
