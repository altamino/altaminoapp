package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import e8.l;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.collections.o;
import kotlin.collections.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class SmallPersistentVector<E> extends AbstractPersistentList<E> implements ImmutableList<E> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final SmallPersistentVector EMPTY = new SmallPersistentVector(new Object[0]);

    @NotNull
    private final Object[] buffer;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final SmallPersistentVector a() {
            return SmallPersistentVector.EMPTY;
        }
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> add(E e) {
        if (size() >= 32) {
            return new PersistentVector(this.buffer, UtilsKt.c(e), size() + 1, 0);
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.buffer, size() + 1);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[size()] = e;
        return new SmallPersistentVector(objArrCopyOf);
    }

    public SmallPersistentVector(@NotNull Object[] buffer) {
        t.j(buffer, "buffer");
        this.buffer = buffer;
        CommonFunctionsKt.a(buffer.length <= 32);
    }

    private final Object[] e(int i10) {
        return new Object[i10];
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> addAll(@NotNull Collection<? extends E> elements) {
        t.j(elements, "elements");
        if (size() + elements.size() > 32) {
            PersistentList.Builder<E> builder = builder();
            builder.addAll(elements);
            return builder.build();
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.buffer, size() + elements.size());
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        int size = size();
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            objArrCopyOf[size] = it.next();
            size++;
        }
        return new SmallPersistentVector(objArrCopyOf);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList.Builder<E> builder() {
        return new PersistentVectorBuilder(this, null, this.buffer, 0);
    }

    @Override // kotlin.collections.c, kotlin.collections.a
    public int getSize() {
        return this.buffer.length;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> i(@NotNull l<? super E, Boolean> predicate) {
        t.j(predicate, "predicate");
        Object[] objArrCopyOf = this.buffer;
        int size = size();
        int size2 = size();
        boolean z6 = false;
        for (int i10 = 0; i10 < size2; i10++) {
            Object obj = this.buffer[i10];
            if (predicate.invoke(obj).booleanValue()) {
                if (!z6) {
                    Object[] objArr = this.buffer;
                    objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                    t.i(objArrCopyOf, "copyOf(this, size)");
                    z6 = true;
                    size = i10;
                }
            } else if (z6) {
                objArrCopyOf[size] = obj;
                size++;
            }
        }
        if (size == size()) {
            return this;
        }
        return size == 0 ? EMPTY : new SmallPersistentVector(o.p(objArrCopyOf, 0, size));
    }

    @Override // kotlin.collections.c, java.util.List
    public int indexOf(Object obj) {
        return p.X(this.buffer, obj);
    }

    @Override // kotlin.collections.c, java.util.List
    public int lastIndexOf(Object obj) {
        return p.i0(this.buffer, obj);
    }

    @Override // kotlin.collections.c, java.util.List
    public E get(int i10) {
        ListImplementation.a(i10, size());
        return (E) this.buffer[i10];
    }

    @Override // kotlin.collections.c, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        ListImplementation.b(i10, size());
        return new BufferIterator(this.buffer, i10, size());
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> n(int i10) {
        ListImplementation.a(i10, size());
        if (size() == 1) {
            return EMPTY;
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.buffer, size() - 1);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        o.i(this.buffer, objArrCopyOf, i10, i10 + 1, size());
        return new SmallPersistentVector(objArrCopyOf);
    }

    @Override // kotlin.collections.c, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> set(int i10, E e) {
        ListImplementation.a(i10, size());
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        t.i(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10] = e;
        return new SmallPersistentVector(objArrCopyOf);
    }

    @Override // java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> add(int i10, E e) {
        ListImplementation.b(i10, size());
        if (i10 == size()) {
            return add((Object) e);
        }
        if (size() < 32) {
            Object[] objArrE = e(size() + 1);
            o.m(this.buffer, objArrE, 0, 0, i10, 6, null);
            o.i(this.buffer, objArrE, i10 + 1, i10, size());
            objArrE[i10] = e;
            return new SmallPersistentVector(objArrE);
        }
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        t.i(objArrCopyOf, "copyOf(this, size)");
        o.i(this.buffer, objArrCopyOf, i10 + 1, i10, size() - 1);
        objArrCopyOf[i10] = e;
        return new PersistentVector(objArrCopyOf, UtilsKt.c(this.buffer[31]), size() + 1, 0);
    }
}
