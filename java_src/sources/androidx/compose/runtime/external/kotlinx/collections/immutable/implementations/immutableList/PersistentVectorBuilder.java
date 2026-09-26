package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import e8.l;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.f;
import kotlin.collections.o;
import kotlin.jvm.internal.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class PersistentVectorBuilder<E> extends f<E> implements PersistentList.Builder<E> {

    @NotNull
    private MutabilityOwnership ownership;

    @Nullable
    private Object[] root;
    private int rootShift;
    private int size;

    @NotNull
    private Object[] tail;

    @NotNull
    private PersistentList<? extends E> vector;

    @Nullable
    private Object[] vectorRoot;

    @NotNull
    private Object[] vectorTail;

    /* JADX INFO: renamed from: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder$removeAll$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<E, Boolean> {
        final /* synthetic */ Collection<E> $elements;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Collection<? extends E> collection) {
            super(1);
            this.$elements = collection;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(E e) {
            return Boolean.valueOf(this.$elements.contains(e));
        }
    }

    private final void C(Object[] objArr, int i10, int i11) {
        if (i11 == 0) {
            this.root = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.tail = objArr;
            this.size = i10;
            this.rootShift = i11;
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        t.g(objArr);
        Object[] objArrB = B(objArr, i11, i10, objectRef);
        t.g(objArrB);
        Object objA = objectRef.a();
        if (objA == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        }
        this.tail = (Object[]) objA;
        this.size = i10;
        if (objArrB[1] == null) {
            this.root = (Object[]) objArrB[0];
            this.rootShift = i11 - 5;
        } else {
            this.root = objArrB;
            this.rootShift = i11;
        }
    }

    private final int I(l<? super E, Boolean> lVar, Object[] objArr, int i10, ObjectRef objectRef) {
        Object[] objArrW = objArr;
        int i11 = i10;
        boolean z6 = false;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (lVar.invoke(obj).booleanValue()) {
                if (!z6) {
                    objArrW = w(objArr);
                    z6 = true;
                    i11 = i12;
                }
            } else if (z6) {
                objArrW[i11] = obj;
                i11++;
            }
        }
        objectRef.b(objArrW);
        return i11;
    }

    private final void S(Collection<? extends E> collection, int i10, Object[] objArr, int i11, Object[][] objArr2, int i12, Object[] objArr3) {
        Object[] objArrY;
        if (i12 < 1) {
            throw new IllegalStateException("Check failed.".toString());
        }
        Object[] objArrW = w(objArr);
        objArr2[0] = objArrW;
        int i13 = i10 & 31;
        int size = ((i10 + collection.size()) - 1) & 31;
        int i14 = (i11 - i13) + size;
        if (i14 < 32) {
            o.i(objArrW, objArr3, size + 1, i13, i11);
        } else {
            int i15 = i14 - 31;
            if (i12 == 1) {
                objArrY = objArrW;
            } else {
                objArrY = y();
                i12--;
                objArr2[i12] = objArrY;
            }
            int i16 = i11 - i15;
            o.i(objArrW, objArr3, 0, i16, i11);
            o.i(objArrW, objArrY, size + 1, i13, i16);
            objArr3 = objArrY;
        }
        Iterator<? extends E> it = collection.iterator();
        g(objArrW, i13, it);
        for (int i17 = 1; i17 < i12; i17++) {
            objArr2[i17] = g(y(), 0, it);
        }
        g(objArr3, 0, it);
    }

    private final boolean u(Object[] objArr) {
        return objArr.length == 33 && objArr[32] == this.ownership;
    }

    private final Object[] y() {
        Object[] objArr = new Object[33];
        objArr[32] = this.ownership;
        return objArr;
    }

    private final Object[] z(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.ownership;
        return objArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        ((AbstractList) this).modCount++;
        int iT = T();
        if (iT < 32) {
            Object[] objArrW = w(this.tail);
            objArrW[iT] = e;
            this.tail = objArrW;
            this.size = size() + 1;
        } else {
            F(this.root, this.tail, z(e));
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        t.j(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int iT = T();
        Iterator<? extends E> it = elements.iterator();
        if (32 - iT >= elements.size()) {
            this.tail = g(w(this.tail), iT, it);
            this.size = size() + elements.size();
        } else {
            int size = ((elements.size() + iT) - 1) / 32;
            Object[][] objArr = new Object[size][];
            objArr[0] = g(w(this.tail), iT, it);
            for (int i10 = 1; i10 < size; i10++) {
                objArr[i10] = g(y(), 0, it);
            }
            this.root = E(this.root, P(), objArr);
            this.tail = g(y(), 0, it);
            this.size = size() + elements.size();
        }
        return true;
    }

    @Override // kotlin.collections.f
    public int c() {
        return this.size;
    }

    public final int j() {
        return ((AbstractList) this).modCount;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Nullable
    public final Object[] m() {
        return this.root;
    }

    public final int p() {
        return this.rootShift;
    }

    @NotNull
    public final Object[] q() {
        return this.tail;
    }

    public PersistentVectorBuilder(@NotNull PersistentList<? extends E> vector, @Nullable Object[] objArr, @NotNull Object[] vectorTail, int i10) {
        t.j(vector, "vector");
        t.j(vectorTail, "vectorTail");
        this.vector = vector;
        this.vectorRoot = objArr;
        this.vectorTail = vectorTail;
        this.rootShift = i10;
        this.ownership = new MutabilityOwnership();
        this.root = this.vectorRoot;
        this.tail = this.vectorTail;
        this.size = this.vector.size();
    }

    private final Object[] A(Object[] objArr, int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (i11 == 0) {
            return objArr;
        }
        int iA = UtilsKt.a(i10, i11);
        Object obj = objArr[iA];
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        }
        Object objA = A((Object[]) obj, i10, i11 - 5);
        if (iA < 31) {
            int i12 = iA + 1;
            if (objArr[i12] != null) {
                if (u(objArr)) {
                    o.r(objArr, null, i12, 32);
                }
                objArr = o.i(objArr, y(), 0, 0, i12);
            }
        }
        if (objA == objArr[iA]) {
            return objArr;
        }
        Object[] objArrW = w(objArr);
        objArrW[iA] = objA;
        return objArrW;
    }

    private final Object[] B(Object[] objArr, int i10, int i11, ObjectRef objectRef) {
        Object[] objArrB;
        int iA = UtilsKt.a(i11 - 1, i10);
        if (i10 == 5) {
            objectRef.b(objArr[iA]);
            objArrB = null;
        } else {
            Object obj = objArr[iA];
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            }
            objArrB = B((Object[]) obj, i10 - 5, i11, objectRef);
        }
        if (objArrB == null && iA == 0) {
            return null;
        }
        Object[] objArrW = w(objArr);
        objArrW[iA] = objArrB;
        return objArrW;
    }

    private final boolean J(l<? super E, Boolean> lVar) {
        Object[] objArrD;
        int iT = T();
        ObjectRef objectRef = new ObjectRef(null);
        if (this.root == null) {
            return K(lVar, iT, objectRef) != iT;
        }
        ListIterator<Object[]> listIteratorV = v(0);
        int I = 32;
        while (I == 32 && listIteratorV.hasNext()) {
            I = I(lVar, listIteratorV.next(), 32, objectRef);
        }
        if (I == 32) {
            CommonFunctionsKt.a(!listIteratorV.hasNext());
            int iK = K(lVar, iT, objectRef);
            if (iK == 0) {
                C(this.root, size(), this.rootShift);
            }
            return iK != iT;
        }
        int iPreviousIndex = listIteratorV.previousIndex() << 5;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int iH = I;
        while (listIteratorV.hasNext()) {
            iH = H(lVar, listIteratorV.next(), 32, iH, objectRef, arrayList2, arrayList);
            iPreviousIndex = iPreviousIndex;
        }
        int i10 = iPreviousIndex;
        int iH2 = H(lVar, this.tail, iT, iH, objectRef, arrayList2, arrayList);
        Object objA = objectRef.a();
        if (objA == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        }
        Object[] objArr = (Object[]) objA;
        o.r(objArr, null, iH2, 32);
        if (arrayList.isEmpty()) {
            objArrD = this.root;
            t.g(objArrD);
        } else {
            objArrD = D(this.root, i10, this.rootShift, arrayList.iterator());
        }
        int size = i10 + (arrayList.size() << 5);
        this.root = O(objArrD, size);
        this.tail = objArr;
        this.size = size + iH2;
        return true;
    }

    private final int K(l<? super E, Boolean> lVar, int i10, ObjectRef objectRef) {
        int I = I(lVar, this.tail, i10, objectRef);
        if (I == i10) {
            CommonFunctionsKt.a(objectRef.a() == this.tail);
            return i10;
        }
        Object objA = objectRef.a();
        if (objA == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        }
        Object[] objArr = (Object[]) objA;
        o.r(objArr, null, I, i10);
        this.tail = objArr;
        this.size = size() - (i10 - I);
        return I;
    }

    private final Object[] O(Object[] objArr, int i10) {
        if ((i10 & 31) != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (i10 == 0) {
            this.rootShift = 0;
            return null;
        }
        int i11 = i10 - 1;
        while (true) {
            int i12 = this.rootShift;
            if ((i11 >> i12) != 0) {
                return A(objArr, i11, i12);
            }
            this.rootShift = i12 - 5;
            Object[] objArr2 = objArr[0];
            if (objArr2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            }
            objArr = objArr2;
        }
    }

    private final Object[] R(int i10, int i11, Object[][] objArr, int i12, Object[] objArr2) {
        if (this.root == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        ListIterator<Object[]> listIteratorV = v(P() >> 5);
        while (listIteratorV.previousIndex() != i10) {
            Object[] objArrPrevious = listIteratorV.previous();
            o.i(objArrPrevious, objArr2, 0, 32 - i11, 32);
            objArr2 = x(objArrPrevious, i11);
            i12--;
            objArr[i12] = objArr2;
        }
        return listIteratorV.previous();
    }

    private final int U(int i10) {
        return i10 <= 32 ? i10 : i10 - UtilsKt.d(i10);
    }

    private final Object[] g(Object[] objArr, int i10, Iterator<? extends Object> it) {
        while (i10 < 32 && it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return objArr;
    }

    private final void r(Collection<? extends E> collection, int i10, int i11, Object[][] objArr, int i12, Object[] objArr2) {
        if (this.root == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        int i13 = i10 >> 5;
        Object[] objArrR = R(i13, i11, objArr, i12, objArr2);
        int iP = i12 - (((P() >> 5) - 1) - i13);
        if (iP < i12) {
            objArr2 = objArr[iP];
            t.g(objArr2);
        }
        S(collection, i10, objArrR, 32, objArr, iP, objArr2);
    }

    private final ListIterator<Object[]> v(int i10) {
        if (this.root == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        int iP = P() >> 5;
        ListImplementation.b(i10, iP);
        int i11 = this.rootShift;
        if (i11 == 0) {
            Object[] objArr = this.root;
            t.g(objArr);
            return new SingleElementListIterator(objArr, i10);
        }
        Object[] objArr2 = this.root;
        t.g(objArr2);
        return new TrieIterator(objArr2, i10, iP, i11 / 5);
    }

    private final Object[] w(Object[] objArr) {
        if (objArr == null) {
            return y();
        }
        return u(objArr) ? objArr : o.m(objArr, y(), 0, 0, j8.o.j(objArr.length, 32), 6, null);
    }

    public final boolean L(@NotNull l<? super E, Boolean> predicate) {
        t.j(predicate, "predicate");
        boolean zJ = J(predicate);
        if (zJ) {
            ((AbstractList) this).modCount++;
        }
        return zJ;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList.Builder
    @NotNull
    public PersistentList<E> build() {
        PersistentVector persistentVector;
        if (this.root == this.vectorRoot && this.tail == this.vectorTail) {
            persistentVector = this.vector;
        } else {
            this.ownership = new MutabilityOwnership();
            Object[] objArr = this.root;
            this.vectorRoot = objArr;
            Object[] objArr2 = this.tail;
            this.vectorTail = objArr2;
            if (objArr != null) {
                Object[] objArr3 = this.root;
                t.g(objArr3);
                persistentVector = new PersistentVector(objArr3, this.tail, size(), this.rootShift);
            } else if (objArr2.length == 0) {
                persistentVector = UtilsKt.b();
            } else {
                Object[] objArrCopyOf = Arrays.copyOf(this.tail, size());
                t.i(objArrCopyOf, "copyOf(this, newSize)");
                persistentVector = new SmallPersistentVector(objArrCopyOf);
            }
        }
        this.vector = persistentVector;
        return (PersistentList<E>) persistentVector;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        ListImplementation.b(i10, size());
        return new PersistentVectorMutableIterator(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        return L(new AnonymousClass1(elements));
    }

    private final Object[] D(Object[] objArr, int i10, int i11, Iterator<Object[]> it) {
        if (it.hasNext()) {
            if (i11 >= 0) {
                if (i11 == 0) {
                    return it.next();
                }
                Object[] objArrW = w(objArr);
                int iA = UtilsKt.a(i10, i11);
                int i12 = i11 - 5;
                objArrW[iA] = D((Object[]) objArrW[iA], i10, i12, it);
                while (true) {
                    iA++;
                    if (iA >= 32 || !it.hasNext()) {
                        break;
                    }
                    objArrW[iA] = D((Object[]) objArrW[iA], 0, i12, it);
                }
                return objArrW;
            }
            throw new IllegalStateException("Check failed.".toString());
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    private final Object[] E(Object[] objArr, int i10, Object[][] objArr2) {
        Object[] objArrW;
        Iterator<Object[]> itA = c.a(objArr2);
        int i11 = i10 >> 5;
        int i12 = this.rootShift;
        if (i11 < (1 << i12)) {
            objArrW = D(objArr, i10, i12, itA);
        } else {
            objArrW = w(objArr);
        }
        while (itA.hasNext()) {
            this.rootShift += 5;
            objArrW = z(objArrW);
            int i13 = this.rootShift;
            D(objArrW, 1 << i13, i13, itA);
        }
        return objArrW;
    }

    private final void F(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int size = size() >> 5;
        int i10 = this.rootShift;
        if (size > (1 << i10)) {
            this.root = G(z(objArr), objArr2, this.rootShift + 5);
            this.tail = objArr3;
            this.rootShift += 5;
            this.size = size() + 1;
            return;
        }
        if (objArr == null) {
            this.root = objArr2;
            this.tail = objArr3;
            this.size = size() + 1;
        } else {
            this.root = G(objArr, objArr2, i10);
            this.tail = objArr3;
            this.size = size() + 1;
        }
    }

    private final Object[] G(Object[] objArr, Object[] objArr2, int i10) {
        int iA = UtilsKt.a(size() - 1, i10);
        Object[] objArrW = w(objArr);
        if (i10 == 5) {
            objArrW[iA] = objArr2;
        } else {
            objArrW[iA] = G((Object[]) objArrW[iA], objArr2, i10 - 5);
        }
        return objArrW;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int H(l<? super E, Boolean> lVar, Object[] objArr, int i10, int i11, ObjectRef objectRef, List<Object[]> list, List<Object[]> list2) {
        Object[] objArrY;
        if (u(objArr)) {
            list.add(objArr);
        }
        Object objA = objectRef.a();
        if (objA != null) {
            Object[] objArr2 = (Object[]) objA;
            Object[] objArr3 = objArr2;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (!lVar.invoke(obj).booleanValue()) {
                    if (i11 == 32) {
                        if (!list.isEmpty()) {
                            objArrY = list.remove(list.size() - 1);
                        } else {
                            objArrY = y();
                        }
                        objArr3 = objArrY;
                        i11 = 0;
                    }
                    objArr3[i11] = obj;
                    i11++;
                }
            }
            objectRef.b(objArr3);
            if (objArr2 != objectRef.a()) {
                list2.add(objArr2);
            }
            return i11;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
    }

    private final Object[] M(Object[] objArr, int i10, int i11, ObjectRef objectRef) {
        int iA = UtilsKt.a(i11, i10);
        int iA2 = 31;
        if (i10 == 0) {
            Object obj = objArr[iA];
            Object[] objArrI = o.i(objArr, w(objArr), iA, iA + 1, 32);
            objArrI[31] = objectRef.a();
            objectRef.b(obj);
            return objArrI;
        }
        if (objArr[31] == null) {
            iA2 = UtilsKt.a(P() - 1, i10);
        }
        Object[] objArrW = w(objArr);
        int i12 = i10 - 5;
        int i13 = iA + 1;
        if (i13 <= iA2) {
            while (true) {
                Object obj2 = objArrW[iA2];
                if (obj2 != null) {
                    objArrW[iA2] = M((Object[]) obj2, i12, 0, objectRef);
                    if (iA2 == i13) {
                        break;
                    }
                    iA2--;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                }
            }
        }
        Object obj3 = objArrW[iA];
        if (obj3 != null) {
            objArrW[iA] = M((Object[]) obj3, i12, i11, objectRef);
            return objArrW;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
    }

    private final Object N(Object[] objArr, int i10, int i11, int i12) {
        boolean z6;
        int size = size() - i10;
        if (i12 < size) {
            z6 = true;
        } else {
            z6 = false;
        }
        CommonFunctionsKt.a(z6);
        if (size == 1) {
            Object obj = this.tail[0];
            C(objArr, i10, i11);
            return obj;
        }
        Object[] objArr2 = this.tail;
        Object obj2 = objArr2[i12];
        Object[] objArrI = o.i(objArr2, w(objArr2), i12, i12 + 1, size);
        objArrI[size - 1] = null;
        this.root = objArr;
        this.tail = objArrI;
        this.size = (i10 + size) - 1;
        this.rootShift = i11;
        return obj2;
    }

    private final int P() {
        if (size() <= 32) {
            return 0;
        }
        return UtilsKt.d(size());
    }

    private final Object[] Q(Object[] objArr, int i10, int i11, E e, ObjectRef objectRef) {
        int iA = UtilsKt.a(i11, i10);
        Object[] objArrW = w(objArr);
        if (i10 == 0) {
            if (objArrW != objArr) {
                ((AbstractList) this).modCount++;
            }
            objectRef.b(objArrW[iA]);
            objArrW[iA] = e;
            return objArrW;
        }
        Object obj = objArrW[iA];
        if (obj != null) {
            objArrW[iA] = Q((Object[]) obj, i10 - 5, i11, e, objectRef);
            return objArrW;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
    }

    private final int T() {
        return U(size());
    }

    private final Object[] f(int i10) {
        if (P() <= i10) {
            return this.tail;
        }
        Object[] objArr = this.root;
        t.g(objArr);
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

    private final Object[] s(Object[] objArr, int i10, int i11, Object obj, ObjectRef objectRef) {
        Object obj2;
        int iA = UtilsKt.a(i11, i10);
        if (i10 == 0) {
            objectRef.b(objArr[31]);
            Object[] objArrI = o.i(objArr, w(objArr), iA + 1, iA, 31);
            objArrI[iA] = obj;
            return objArrI;
        }
        Object[] objArrW = w(objArr);
        int i12 = i10 - 5;
        Object obj3 = objArrW[iA];
        if (obj3 != null) {
            objArrW[iA] = s((Object[]) obj3, i12, i11, obj, objectRef);
            while (true) {
                iA++;
                if (iA >= 32 || (obj2 = objArrW[iA]) == null) {
                    break;
                }
                if (obj2 != null) {
                    objArrW[iA] = s((Object[]) obj2, i12, 0, objectRef.a(), objectRef);
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                }
            }
            return objArrW;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
    }

    private final void t(Object[] objArr, int i10, E e) {
        int iT = T();
        Object[] objArrW = w(this.tail);
        if (iT < 32) {
            o.i(this.tail, objArrW, i10 + 1, i10, iT);
            objArrW[i10] = e;
            this.root = objArr;
            this.tail = objArrW;
            this.size = size() + 1;
            return;
        }
        Object[] objArr2 = this.tail;
        Object obj = objArr2[31];
        o.i(objArr2, objArrW, i10 + 1, i10, 31);
        objArrW[i10] = e;
        F(objArr, objArrW, z(obj));
    }

    private final Object[] x(Object[] objArr, int i10) {
        return u(objArr) ? o.i(objArr, objArr, i10, 0, 32 - i10) : o.i(objArr, y(), i10, 0, 32 - i10);
    }

    @Override // kotlin.collections.f
    public E e(int i10) {
        ListImplementation.a(i10, size());
        ((AbstractList) this).modCount++;
        int iP = P();
        if (i10 >= iP) {
            return (E) N(this.root, iP, this.rootShift, i10 - iP);
        }
        ObjectRef objectRef = new ObjectRef(this.tail[0]);
        Object[] objArr = this.root;
        t.g(objArr);
        N(M(objArr, this.rootShift, i10, objectRef), iP, this.rootShift, 0);
        return (E) objectRef.a();
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        ListImplementation.a(i10, size());
        return (E) f(i10)[i10 & 31];
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i10, E e) {
        ListImplementation.a(i10, size());
        if (P() <= i10) {
            Object[] objArrW = w(this.tail);
            if (objArrW != this.tail) {
                ((AbstractList) this).modCount++;
            }
            int i11 = i10 & 31;
            E e2 = (E) objArrW[i11];
            objArrW[i11] = e;
            this.tail = objArrW;
            return e2;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.root;
        t.g(objArr);
        this.root = Q(objArr, this.rootShift, i10, e, objectRef);
        return (E) objectRef.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, E e) {
        ListImplementation.b(i10, size());
        if (i10 == size()) {
            add(e);
            return;
        }
        ((AbstractList) this).modCount++;
        int iP = P();
        if (i10 >= iP) {
            t(this.root, i10 - iP, e);
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.root;
        t.g(objArr);
        t(s(objArr, this.rootShift, i10, e, objectRef), 0, objectRef.a());
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i10, @NotNull Collection<? extends E> elements) {
        Object[] objArrI;
        t.j(elements, "elements");
        ListImplementation.b(i10, size());
        if (i10 == size()) {
            return addAll(elements);
        }
        if (elements.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i11 = (i10 >> 5) << 5;
        int size = (((size() - i11) + elements.size()) - 1) / 32;
        if (size == 0) {
            CommonFunctionsKt.a(i10 >= P());
            int i12 = i10 & 31;
            int size2 = ((i10 + elements.size()) - 1) & 31;
            Object[] objArr = this.tail;
            Object[] objArrI2 = o.i(objArr, w(objArr), size2 + 1, i12, T());
            g(objArrI2, i12, elements.iterator());
            this.tail = objArrI2;
            this.size = size() + elements.size();
            return true;
        }
        Object[][] objArr2 = new Object[size][];
        int iT = T();
        int iU = U(size() + elements.size());
        if (i10 >= P()) {
            objArrI = y();
            S(elements, i10, this.tail, iT, objArr2, size, objArrI);
        } else if (iU <= iT) {
            int i13 = iT - iU;
            objArrI = o.i(this.tail, y(), 0, i13, iT);
            int i14 = 32 - i13;
            Object[] objArrX = x(this.tail, i14);
            int i15 = size - 1;
            objArr2[i15] = objArrX;
            r(elements, i10, i14, objArr2, i15, objArrX);
        } else {
            int i16 = iU - iT;
            objArrI = x(this.tail, i16);
            r(elements, i10, i16, objArr2, size, objArrI);
        }
        this.root = E(this.root, i11, objArr2);
        this.tail = objArrI;
        this.size = size() + elements.size();
        return true;
    }
}
