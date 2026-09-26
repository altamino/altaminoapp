package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import e8.l;
import j8.o;
import java.util.Arrays;
import java.util.ListIterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class PersistentVector<E> extends AbstractPersistentList<E> {

    @NotNull
    private final Object[] root;
    private final int rootShift;
    private final int size;

    @NotNull
    private final Object[] tail;

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> add(E e) {
        int size = size() - t();
        if (size >= 32) {
            return p(this.root, this.tail, UtilsKt.c(e));
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.tail, 32);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[size] = e;
        return new PersistentVector(this.root, objArrCopyOf, size() + 1, this.rootShift);
    }

    @Override // kotlin.collections.c, kotlin.collections.a
    public int getSize() {
        return this.size;
    }

    public PersistentVector(@NotNull Object[] root, @NotNull Object[] tail, int i10, int i11) {
        t.j(root, "root");
        t.j(tail, "tail");
        this.root = root;
        this.tail = tail;
        this.size = i10;
        this.rootShift = i11;
        if (size() > 32) {
            CommonFunctionsKt.a(size() - UtilsKt.d(size()) <= o.j(tail.length, 32));
            return;
        }
        throw new IllegalArgumentException(("Trie-based persistent vector should have at least 33 elements, got " + size()).toString());
    }

    private final Object[] f(Object[] objArr, int i10, int i11, Object obj, ObjectRef objectRef) {
        Object[] objArrCopyOf;
        int iA = UtilsKt.a(i11, i10);
        if (i10 == 0) {
            if (iA == 0) {
                objArrCopyOf = new Object[32];
            } else {
                objArrCopyOf = Arrays.copyOf(objArr, 32);
                t.i(objArrCopyOf, "copyOf(this, newSize)");
            }
            kotlin.collections.o.i(objArr, objArrCopyOf, iA + 1, iA, 31);
            objectRef.b(objArr[31]);
            objArrCopyOf[iA] = obj;
            return objArrCopyOf;
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        t.i(objArrCopyOf2, "copyOf(this, newSize)");
        int i12 = i10 - 5;
        Object obj2 = objArr[iA];
        String str = "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>";
        if (obj2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        }
        objArrCopyOf2[iA] = f((Object[]) obj2, i12, i11, obj, objectRef);
        int i13 = iA + 1;
        while (i13 < 32 && objArrCopyOf2[i13] != null) {
            Object obj3 = objArr[i13];
            if (obj3 == null) {
                throw new NullPointerException(str);
            }
            Object[] objArr2 = objArrCopyOf2;
            objArr2[i13] = f((Object[]) obj3, i12, 0, objectRef.a(), objectRef);
            i13++;
            objArrCopyOf2 = objArr2;
            str = str;
        }
        return objArrCopyOf2;
    }

    private final PersistentList<E> m(Object[] objArr, int i10, int i11) {
        if (i11 == 0) {
            if (objArr.length == 33) {
                objArr = Arrays.copyOf(objArr, 32);
                t.i(objArr, "copyOf(this, newSize)");
            }
            return new SmallPersistentVector(objArr);
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArrJ = j(objArr, i11, i10 - 1, objectRef);
        t.g(objArrJ);
        Object objA = objectRef.a();
        if (objA == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        }
        Object[] objArr2 = (Object[]) objA;
        if (objArrJ[1] != null) {
            return new PersistentVector(objArrJ, objArr2, i10, i11);
        }
        Object obj = objArrJ[0];
        if (obj != null) {
            return new PersistentVector((Object[]) obj, objArr2, i10, i11 - 5);
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public PersistentVectorBuilder<E> builder() {
        return new PersistentVectorBuilder<>(this, this.root, this.tail, this.rootShift);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> i(@NotNull l<? super E, Boolean> predicate) {
        t.j(predicate, "predicate");
        PersistentVectorBuilder<E> persistentVectorBuilderBuilder = builder();
        persistentVectorBuilderBuilder.L(predicate);
        return persistentVectorBuilderBuilder.build();
    }

    private final Object[] c(int i10) {
        if (t() <= i10) {
            return this.tail;
        }
        Object[] objArr = this.root;
        for (int i11 = this.rootShift; i11 > 0; i11 -= 5) {
            Object[] objArr2 = objArr[UtilsKt.a(i10, i11)];
            if (objArr2 != null) {
                objArr = objArr2;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            }
        }
        return objArr;
    }

    private final PersistentVector<E> g(Object[] objArr, int i10, Object obj) {
        int size = size() - t();
        Object[] objArrCopyOf = Arrays.copyOf(this.tail, 32);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        if (size < 32) {
            kotlin.collections.o.i(this.tail, objArrCopyOf, i10 + 1, i10, size);
            objArrCopyOf[i10] = obj;
            return new PersistentVector<>(objArr, objArrCopyOf, size() + 1, this.rootShift);
        }
        Object[] objArr2 = this.tail;
        Object obj2 = objArr2[31];
        kotlin.collections.o.i(objArr2, objArrCopyOf, i10 + 1, i10, size - 1);
        objArrCopyOf[i10] = obj;
        return p(objArr, objArrCopyOf, UtilsKt.c(obj2));
    }

    private final Object[] j(Object[] objArr, int i10, int i11, ObjectRef objectRef) {
        Object[] objArrJ;
        int iA = UtilsKt.a(i11, i10);
        if (i10 == 5) {
            objectRef.b(objArr[iA]);
            objArrJ = null;
        } else {
            Object obj = objArr[iA];
            if (obj != null) {
                objArrJ = j((Object[]) obj, i10 - 5, i11, objectRef);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            }
        }
        if (objArrJ == null && iA == 0) {
            return null;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[iA] = objArrJ;
        return objArrCopyOf;
    }

    private final PersistentVector<E> p(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int size = size() >> 5;
        int i10 = this.rootShift;
        if (size > (1 << i10)) {
            Object[] objArrC = UtilsKt.c(objArr);
            int i11 = this.rootShift + 5;
            return new PersistentVector<>(q(objArrC, i11, objArr2), objArr3, size() + 1, i11);
        }
        return new PersistentVector<>(q(objArr, i10, objArr2), objArr3, size() + 1, this.rootShift);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0019  */
    private final Object[] q(Object[] objArr, int i10, Object[] objArr2) {
        Object[] objArrCopyOf;
        int iA = UtilsKt.a(size() - 1, i10);
        if (objArr != null) {
            objArrCopyOf = Arrays.copyOf(objArr, 32);
            t.i(objArrCopyOf, "copyOf(this, newSize)");
            if (objArrCopyOf == null) {
                objArrCopyOf = new Object[32];
            }
        } else {
            objArrCopyOf = new Object[32];
        }
        if (i10 == 5) {
            objArrCopyOf[iA] = objArr2;
        } else {
            objArrCopyOf[iA] = q((Object[]) objArrCopyOf[iA], i10 - 5, objArr2);
        }
        return objArrCopyOf;
    }

    private final Object[] r(Object[] objArr, int i10, int i11, ObjectRef objectRef) {
        Object[] objArrCopyOf;
        int iA = UtilsKt.a(i11, i10);
        int iA2 = 31;
        if (i10 == 0) {
            if (iA == 0) {
                objArrCopyOf = new Object[32];
            } else {
                objArrCopyOf = Arrays.copyOf(objArr, 32);
                t.i(objArrCopyOf, "copyOf(this, newSize)");
            }
            kotlin.collections.o.i(objArr, objArrCopyOf, iA, iA + 1, 32);
            objArrCopyOf[31] = objectRef.a();
            objectRef.b(objArr[iA]);
            return objArrCopyOf;
        }
        if (objArr[31] == null) {
            iA2 = UtilsKt.a(t() - 1, i10);
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        t.i(objArrCopyOf2, "copyOf(this, newSize)");
        int i12 = i10 - 5;
        int i13 = iA + 1;
        if (i13 <= iA2) {
            while (true) {
                Object obj = objArrCopyOf2[iA2];
                if (obj != null) {
                    objArrCopyOf2[iA2] = r((Object[]) obj, i12, 0, objectRef);
                    if (iA2 == i13) {
                        break;
                    }
                    iA2--;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                }
            }
        }
        Object obj2 = objArrCopyOf2[iA];
        if (obj2 != null) {
            objArrCopyOf2[iA] = r((Object[]) obj2, i12, i11, objectRef);
            return objArrCopyOf2;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
    }

    private final PersistentList<E> s(Object[] objArr, int i10, int i11, int i12) {
        boolean z6;
        int size = size() - i10;
        if (i12 < size) {
            z6 = true;
        } else {
            z6 = false;
        }
        CommonFunctionsKt.a(z6);
        if (size == 1) {
            return m(objArr, i10, i11);
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.tail, 32);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        int i13 = size - 1;
        if (i12 < i13) {
            kotlin.collections.o.i(this.tail, objArrCopyOf, i12, i12 + 1, size);
        }
        objArrCopyOf[i13] = null;
        return new PersistentVector(objArr, objArrCopyOf, (i10 + size) - 1, i11);
    }

    private final int t() {
        return UtilsKt.d(size());
    }

    private final Object[] u(Object[] objArr, int i10, int i11, Object obj) {
        int iA = UtilsKt.a(i11, i10);
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        if (i10 == 0) {
            objArrCopyOf[iA] = obj;
        } else {
            Object obj2 = objArrCopyOf[iA];
            if (obj2 != null) {
                objArrCopyOf[iA] = u((Object[]) obj2, i10 - 5, i11, obj);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            }
        }
        return objArrCopyOf;
    }

    @Override // kotlin.collections.c, java.util.List
    public E get(int i10) {
        ListImplementation.a(i10, size());
        return (E) c(i10)[i10 & 31];
    }

    @Override // kotlin.collections.c, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        ListImplementation.b(i10, size());
        return new PersistentVectorIterator(this.root, this.tail, i10, size(), (this.rootShift / 5) + 1);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> n(int i10) {
        ListImplementation.a(i10, size());
        int iT = t();
        if (i10 >= iT) {
            return s(this.root, iT, this.rootShift, i10 - iT);
        }
        return s(r(this.root, this.rootShift, i10, new ObjectRef(this.tail[0])), iT, this.rootShift, 0);
    }

    @Override // kotlin.collections.c, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> set(int i10, E e) {
        ListImplementation.a(i10, size());
        if (t() <= i10) {
            Object[] objArrCopyOf = Arrays.copyOf(this.tail, 32);
            t.i(objArrCopyOf, "copyOf(this, newSize)");
            objArrCopyOf[i10 & 31] = e;
            return new PersistentVector(this.root, objArrCopyOf, size(), this.rootShift);
        }
        return new PersistentVector(u(this.root, this.rootShift, i10, e), this.tail, size(), this.rootShift);
    }

    @Override // java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> add(int i10, E e) {
        ListImplementation.b(i10, size());
        if (i10 == size()) {
            return add((Object) e);
        }
        int iT = t();
        if (i10 >= iT) {
            return g(this.root, i10 - iT, e);
        }
        ObjectRef objectRef = new ObjectRef(null);
        return g(f(this.root, this.rootShift, i10, e, objectRef), 0, objectRef.a());
    }
}
