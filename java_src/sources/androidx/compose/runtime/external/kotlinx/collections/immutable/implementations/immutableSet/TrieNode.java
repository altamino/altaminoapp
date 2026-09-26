package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import java.util.Arrays;
import kotlin.collections.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class TrieNode<E> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final TrieNode EMPTY = new TrieNode(0, new Object[0]);
    private int bitmap;

    @NotNull
    private Object[] buffer;

    @Nullable
    private MutabilityOwnership ownedBy;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final TrieNode a() {
            return TrieNode.EMPTY;
        }
    }

    public TrieNode(int i10, @NotNull Object[] buffer, @Nullable MutabilityOwnership mutabilityOwnership) {
        t.j(buffer, "buffer");
        this.bitmap = i10;
        this.buffer = buffer;
        this.ownedBy = mutabilityOwnership;
    }

    private final boolean l(TrieNode<E> trieNode) {
        if (this == trieNode) {
            return true;
        }
        if (this.bitmap != trieNode.bitmap) {
            return false;
        }
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.buffer[i10] != trieNode.buffer[i10]) {
                return false;
            }
        }
        return true;
    }

    private final boolean o(int i10) {
        return (i10 & this.bitmap) == 0;
    }

    @NotNull
    public final TrieNode<E> J(int i10, E e, int i11) {
        int iD = 1 << TrieNodeKt.d(i10, i11);
        if (o(iD)) {
            return this;
        }
        int iP = p(iD);
        Object obj = this.buffer[iP];
        if (!(obj instanceof TrieNode)) {
            return t.e(e, obj) ? K(iP, iD) : this;
        }
        TrieNode<E> trieNodeI = I(iP);
        TrieNode<E> trieNodeG = i11 == 30 ? trieNodeI.g(e) : trieNodeI.J(i10, e, i11 + 5);
        return trieNodeI == trieNodeG ? this : L(iP, trieNodeG);
    }

    @NotNull
    public final TrieNode<E> b(int i10, E e, int i11) {
        int iD = 1 << TrieNodeKt.d(i10, i11);
        if (o(iD)) {
            return c(iD, e);
        }
        int iP = p(iD);
        Object obj = this.buffer[iP];
        if (!(obj instanceof TrieNode)) {
            return t.e(e, obj) ? this : s(iP, i10, e, i11);
        }
        TrieNode<E> trieNodeI = I(iP);
        TrieNode<E> trieNodeE = i11 == 30 ? trieNodeI.e(e) : trieNodeI.b(i10, e, i11 + 5);
        return trieNodeI == trieNodeE ? this : L(iP, trieNodeE);
    }

    public final boolean i(int i10, E e, int i11) {
        int iD = 1 << TrieNodeKt.d(i10, i11);
        if (o(iD)) {
            return false;
        }
        int iP = p(iD);
        Object obj = this.buffer[iP];
        if (!(obj instanceof TrieNode)) {
            return t.e(e, obj);
        }
        TrieNode<E> trieNodeI = I(iP);
        return i11 == 30 ? trieNodeI.f(e) : trieNodeI.i(i10, e, i11 + 5);
    }

    public final int m() {
        return this.bitmap;
    }

    @NotNull
    public final Object[] n() {
        return this.buffer;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TrieNode(int i10, @NotNull Object[] buffer) {
        this(i10, buffer, null);
        t.j(buffer, "buffer");
    }

    private final TrieNode<E> A(int i10, MutabilityOwnership mutabilityOwnership) {
        if (this.ownedBy != mutabilityOwnership) {
            return new TrieNode<>(0, TrieNodeKt.e(this.buffer, i10), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.e(this.buffer, i10);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object B(TrieNode<E> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        if (this == trieNode) {
            deltaCounter.b(this.buffer.length);
            return this;
        }
        Object[] objArr = t.e(mutabilityOwnership, this.ownedBy) ? this.buffer : new Object[Math.min(this.buffer.length, trieNode.buffer.length)];
        Object[] objArr2 = this.buffer;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= objArr2.length) {
                break;
            }
            CommonFunctionsKt.a(i11 <= i10);
            if (trieNode.f(objArr2[i10])) {
                objArr[i11] = objArr2[i10];
                i11++;
                CommonFunctionsKt.a(i11 <= objArr.length);
            }
            i10++;
        }
        deltaCounter.b(i11);
        if (i11 == 0) {
            return EMPTY;
        }
        if (i11 == 1) {
            return objArr[0];
        }
        if (i11 == this.buffer.length) {
            return this;
        }
        if (i11 == trieNode.buffer.length) {
            return trieNode;
        }
        if (i11 == objArr.length) {
            return new TrieNode(0, objArr, mutabilityOwnership);
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, i11);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        return new TrieNode(0, objArrCopyOf, mutabilityOwnership);
    }

    private final TrieNode<E> C(int i10, int i11, E e, int i12, MutabilityOwnership mutabilityOwnership) {
        if (this.ownedBy == mutabilityOwnership) {
            this.buffer[i10] = r(i10, i11, e, i12, mutabilityOwnership);
            return this;
        }
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        t.i(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10] = r(i10, i11, e, i12, mutabilityOwnership);
        return new TrieNode<>(this.bitmap, objArrCopyOf, mutabilityOwnership);
    }

    private final TrieNode<E> F(int i10, int i11, MutabilityOwnership mutabilityOwnership) {
        if (this.ownedBy != mutabilityOwnership) {
            return new TrieNode<>(i11 ^ this.bitmap, TrieNodeKt.e(this.buffer, i10), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.e(this.buffer, i10);
        this.bitmap ^= i11;
        return this;
    }

    private final TrieNode<E> H(int i10, TrieNode<E> trieNode, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = trieNode.buffer;
        if (objArr.length == 1) {
            Object obj = objArr[0];
            if (!(obj instanceof TrieNode)) {
                if (this.buffer.length == 1) {
                    trieNode.bitmap = this.bitmap;
                    return trieNode;
                }
                trieNode = (TrieNode<E>) obj;
            }
        }
        if (this.ownedBy == mutabilityOwnership) {
            this.buffer[i10] = trieNode;
            return this;
        }
        Object[] objArr2 = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
        t.i(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10] = trieNode;
        return new TrieNode<>(this.bitmap, objArrCopyOf, mutabilityOwnership);
    }

    private final TrieNode<E> I(int i10) {
        Object obj = this.buffer[i10];
        if (obj != null) {
            return (TrieNode) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode>");
    }

    private final TrieNode<E> K(int i10, int i11) {
        return new TrieNode<>(i11 ^ this.bitmap, TrieNodeKt.e(this.buffer, i10));
    }

    private final TrieNode<E> L(int i10, TrieNode<E> trieNode) {
        Object[] objArr = trieNode.buffer;
        if (objArr.length == 1) {
            Object obj = objArr[0];
            if (!(obj instanceof TrieNode)) {
                if (this.buffer.length == 1) {
                    trieNode.bitmap = this.bitmap;
                    return trieNode;
                }
                trieNode = (TrieNode<E>) obj;
            }
        }
        Object[] objArr2 = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
        t.i(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10] = trieNode;
        return new TrieNode<>(this.bitmap, objArrCopyOf);
    }

    private final int d() {
        if (this.bitmap == 0) {
            return this.buffer.length;
        }
        int iD = 0;
        for (Object obj : this.buffer) {
            iD += obj instanceof TrieNode ? ((TrieNode) obj).d() : 1;
        }
        return iD;
    }

    private final boolean f(E e) {
        return p.F(this.buffer, e);
    }

    private final TrieNode<E> g(E e) {
        int iX = p.X(this.buffer, e);
        return iX != -1 ? h(iX) : this;
    }

    private final TrieNode<E> h(int i10) {
        return new TrieNode<>(0, TrieNodeKt.e(this.buffer, i10));
    }

    private final E k(int i10) {
        return (E) this.buffer[i10];
    }

    private final TrieNode<E> q(int i10, E e, int i11, E e2, int i12, MutabilityOwnership mutabilityOwnership) {
        if (i12 > 30) {
            return new TrieNode<>(0, new Object[]{e, e2}, mutabilityOwnership);
        }
        int iD = TrieNodeKt.d(i10, i12);
        int iD2 = TrieNodeKt.d(i11, i12);
        if (iD != iD2) {
            return new TrieNode<>((1 << iD) | (1 << iD2), iD < iD2 ? new Object[]{e, e2} : new Object[]{e2, e}, mutabilityOwnership);
        }
        return new TrieNode<>(1 << iD, new Object[]{q(i10, e, i11, e2, i12 + 5, mutabilityOwnership)}, mutabilityOwnership);
    }

    private final TrieNode<E> s(int i10, int i11, E e, int i12) {
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        t.i(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10] = r(i10, i11, e, i12, null);
        return new TrieNode<>(this.bitmap, objArrCopyOf);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final TrieNode<E> x(TrieNode<E> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        if (this == trieNode) {
            deltaCounter.b(this.buffer.length);
            return this;
        }
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + trieNode.buffer.length);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        Object[] objArr2 = trieNode.buffer;
        int length = this.buffer.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < objArr2.length) {
            CommonFunctionsKt.a(i11 <= i10);
            if (!f(objArr2[i10])) {
                objArrCopyOf[length + i11] = objArr2[i10];
                i11++;
                CommonFunctionsKt.a(length + i11 <= objArrCopyOf.length);
            }
            i10++;
        }
        int length2 = i11 + this.buffer.length;
        deltaCounter.b(objArrCopyOf.length - length2);
        if (length2 == this.buffer.length) {
            return this;
        }
        if (length2 == trieNode.buffer.length) {
            return trieNode;
        }
        if (length2 != objArrCopyOf.length) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, length2);
            t.i(objArrCopyOf, "copyOf(this, newSize)");
        }
        if (!t.e(this.ownedBy, mutabilityOwnership)) {
            return new TrieNode<>(0, objArrCopyOf, mutabilityOwnership);
        }
        this.buffer = objArrCopyOf;
        return this;
    }

    private final TrieNode<E> y(E e, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        int iX = p.X(this.buffer, e);
        if (iX == -1) {
            return this;
        }
        persistentHashSetBuilder.m(persistentHashSetBuilder.size() - 1);
        return A(iX, persistentHashSetBuilder.j());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object z(TrieNode<E> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        if (this == trieNode) {
            deltaCounter.b(this.buffer.length);
            return EMPTY;
        }
        Object[] objArr = t.e(mutabilityOwnership, this.ownedBy) ? this.buffer : new Object[this.buffer.length];
        Object[] objArr2 = this.buffer;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= objArr2.length) {
                break;
            }
            CommonFunctionsKt.a(i11 <= i10);
            if (!trieNode.f(objArr2[i10])) {
                objArr[i11] = objArr2[i10];
                i11++;
                CommonFunctionsKt.a(i11 <= objArr.length);
            }
            i10++;
        }
        deltaCounter.b(this.buffer.length - i11);
        if (i11 == 0) {
            return EMPTY;
        }
        if (i11 == 1) {
            return objArr[0];
        }
        if (i11 == this.buffer.length) {
            return this;
        }
        if (i11 == objArr.length) {
            return new TrieNode(0, objArr, mutabilityOwnership);
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, i11);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        return new TrieNode(0, objArrCopyOf, mutabilityOwnership);
    }

    @NotNull
    public final TrieNode<E> D(int i10, E e, int i11, @NotNull PersistentHashSetBuilder<?> mutator) {
        t.j(mutator, "mutator");
        int iD = 1 << TrieNodeKt.d(i10, i11);
        if (o(iD)) {
            return this;
        }
        int iP = p(iD);
        Object obj = this.buffer[iP];
        if (obj instanceof TrieNode) {
            TrieNode<E> trieNodeI = I(iP);
            TrieNode<E> trieNodeY = i11 == 30 ? trieNodeI.y(e, mutator) : trieNodeI.D(i10, e, i11 + 5, mutator);
            return (this.ownedBy == mutator.j() || trieNodeI != trieNodeY) ? H(iP, trieNodeY, mutator.j()) : this;
        }
        if (!t.e(e, obj)) {
            return this;
        }
        mutator.m(mutator.size() - 1);
        return F(iP, iD, mutator.j());
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00cd  */
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Object E(@NotNull TrieNode<E> otherNode, int i10, @NotNull DeltaCounter intersectionSizeRef, @NotNull PersistentHashSetBuilder<?> mutator) {
        TrieNode<E> trieNode;
        t.j(otherNode, "otherNode");
        t.j(intersectionSizeRef, "intersectionSizeRef");
        t.j(mutator, "mutator");
        if (this == otherNode) {
            intersectionSizeRef.b(d());
            return EMPTY;
        }
        if (i10 > 30) {
            return z(otherNode, intersectionSizeRef, mutator.j());
        }
        int i11 = this.bitmap & otherNode.bitmap;
        if (i11 == 0) {
            return this;
        }
        if (t.e(this.ownedBy, mutator.j())) {
            trieNode = this;
        } else {
            int i12 = this.bitmap;
            Object[] objArr = this.buffer;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            t.i(objArrCopyOf, "copyOf(this, size)");
            trieNode = new TrieNode<>(i12, objArrCopyOf, mutator.j());
        }
        int i13 = this.bitmap;
        while (i11 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i11);
            int iP = p(iLowestOneBit);
            int iP2 = otherNode.p(iLowestOneBit);
            Object objE = this.buffer[iP];
            Object obj = otherNode.buffer[iP2];
            boolean z6 = objE instanceof TrieNode;
            boolean z10 = obj instanceof TrieNode;
            if (z6 && z10) {
                if (objE == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRemoveAll$lambda-11$lambda-10>");
                }
                TrieNode trieNode2 = (TrieNode) objE;
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRemoveAll$lambda-11$lambda-10>");
                }
                objE = trieNode2.E((TrieNode) obj, i10 + 5, intersectionSizeRef, mutator);
            } else if (z6) {
                if (objE == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRemoveAll$lambda-11$lambda-10>");
                }
                TrieNode trieNode3 = (TrieNode) objE;
                int size = mutator.size();
                TrieNode trieNodeD = trieNode3.D(obj != null ? obj.hashCode() : 0, obj, i10 + 5, mutator);
                if (size != mutator.size()) {
                    intersectionSizeRef.b(1);
                    Object[] objArr2 = trieNodeD.buffer;
                    if (objArr2.length == 1) {
                        objE = objArr2[0];
                        if (objE instanceof TrieNode) {
                            objE = trieNodeD;
                        }
                    } else {
                        objE = trieNodeD;
                    }
                }
            } else if (z10) {
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRemoveAll$lambda-11$lambda-10>");
                }
                if (((TrieNode) obj).i(objE != null ? objE.hashCode() : 0, objE, i10 + 5)) {
                    intersectionSizeRef.b(1);
                    objE = EMPTY;
                }
            } else if (t.e(objE, obj)) {
                intersectionSizeRef.b(1);
                objE = EMPTY;
            }
            if (objE == EMPTY) {
                i13 ^= iLowestOneBit;
            }
            trieNode.buffer[iP] = objE;
            i11 ^= iLowestOneBit;
        }
        int iBitCount = Integer.bitCount(i13);
        if (i13 == 0) {
            return EMPTY;
        }
        if (i13 == this.bitmap) {
            return trieNode.l(this) ? this : trieNode;
        }
        if (iBitCount == 1 && i10 != 0) {
            Object obj2 = trieNode.buffer[trieNode.p(i13)];
            return obj2 instanceof TrieNode ? new TrieNode(i13, new Object[]{obj2}, mutator.j()) : obj2;
        }
        Object[] objArr3 = new Object[iBitCount];
        Object[] objArr4 = trieNode.buffer;
        int i14 = 0;
        int i15 = 0;
        while (i14 < objArr4.length) {
            CommonFunctionsKt.a(i15 <= i14);
            if (objArr4[i14] != Companion.a()) {
                objArr3[i15] = objArr4[i14];
                i15++;
                CommonFunctionsKt.a(i15 <= iBitCount);
            }
            i14++;
        }
        return new TrieNode(i13, objArr3, mutator.j());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Object G(@NotNull TrieNode<E> otherNode, int i10, @NotNull DeltaCounter intersectionSizeRef, @NotNull PersistentHashSetBuilder<?> mutator) {
        TrieNode trieNode;
        t.j(otherNode, "otherNode");
        t.j(intersectionSizeRef, "intersectionSizeRef");
        t.j(mutator, "mutator");
        if (this == otherNode) {
            intersectionSizeRef.b(d());
            return this;
        }
        if (i10 > 30) {
            return B(otherNode, intersectionSizeRef, mutator.j());
        }
        int i11 = this.bitmap & otherNode.bitmap;
        if (i11 == 0) {
            return EMPTY;
        }
        TrieNode<E> trieNode2 = (t.e(this.ownedBy, mutator.j()) && i11 == this.bitmap) ? this : new TrieNode<>(i11, new Object[Integer.bitCount(i11)], mutator.j());
        int i12 = i11;
        int i13 = 0;
        int i14 = 0;
        while (i12 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i12);
            int iP = p(iLowestOneBit);
            int iP2 = otherNode.p(iLowestOneBit);
            Object objG = this.buffer[iP];
            Object obj = otherNode.buffer[iP2];
            boolean z6 = objG instanceof TrieNode;
            boolean z10 = obj instanceof TrieNode;
            if (z6 && z10) {
                if (objG == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRetainAll$lambda-9$lambda-8>");
                }
                TrieNode trieNode3 = (TrieNode) objG;
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRetainAll$lambda-9$lambda-8>");
                }
                objG = trieNode3.G((TrieNode) obj, i10 + 5, intersectionSizeRef, mutator);
            } else if (z6) {
                if (objG == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRetainAll$lambda-9$lambda-8>");
                }
                if (((TrieNode) objG).i(obj != null ? obj.hashCode() : 0, obj, i10 + 5)) {
                    intersectionSizeRef.b(1);
                    objG = obj;
                } else {
                    objG = EMPTY;
                }
            } else if (z10) {
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableRetainAll$lambda-9$lambda-8>");
                }
                if (((TrieNode) obj).i(objG != null ? objG.hashCode() : 0, objG, i10 + 5)) {
                    intersectionSizeRef.b(1);
                } else {
                    objG = EMPTY;
                }
            } else if (t.e(objG, obj)) {
                intersectionSizeRef.b(1);
            } else {
                objG = EMPTY;
            }
            if (objG != EMPTY) {
                i13 |= iLowestOneBit;
            }
            trieNode2.buffer[i14] = objG;
            i14++;
            i12 ^= iLowestOneBit;
        }
        int iBitCount = Integer.bitCount(i13);
        if (i13 == 0) {
            return EMPTY;
        }
        if (i13 == i11) {
            if (trieNode2.l(this)) {
                return this;
            }
            return trieNode2.l(otherNode) ? otherNode : trieNode2;
        }
        if (iBitCount != 1 || i10 == 0) {
            Object[] objArr = new Object[iBitCount];
            Object[] objArr2 = trieNode2.buffer;
            int i15 = 0;
            int i16 = 0;
            while (i15 < objArr2.length) {
                CommonFunctionsKt.a(i16 <= i15);
                if (objArr2[i15] != Companion.a()) {
                    objArr[i16] = objArr2[i15];
                    i16++;
                    CommonFunctionsKt.a(i16 <= iBitCount);
                }
                i15++;
            }
            trieNode = new TrieNode(i13, objArr, mutator.j());
        } else {
            Object obj2 = trieNode2.buffer[trieNode2.p(i13)];
            if (!(obj2 instanceof TrieNode)) {
                return obj2;
            }
            trieNode = new TrieNode(i13, new Object[]{obj2}, mutator.j());
        }
        return trieNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean j(@NotNull TrieNode<E> otherNode, int i10) {
        t.j(otherNode, "otherNode");
        if (this == otherNode) {
            return true;
        }
        if (i10 > 30) {
            for (Object obj : otherNode.buffer) {
                if (!p.F(this.buffer, obj)) {
                    return false;
                }
            }
            return true;
        }
        int i11 = this.bitmap;
        int i12 = otherNode.bitmap;
        int i13 = i11 & i12;
        if (i13 != i12) {
            return false;
        }
        while (i13 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i13);
            int iP = p(iLowestOneBit);
            int iP2 = otherNode.p(iLowestOneBit);
            Object obj2 = this.buffer[iP];
            Object obj3 = otherNode.buffer[iP2];
            boolean z6 = obj2 instanceof TrieNode;
            boolean z10 = obj3 instanceof TrieNode;
            if (z6 && z10) {
                if (obj2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.containsAll$lambda-13>");
                }
                TrieNode trieNode = (TrieNode) obj2;
                if (obj3 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.containsAll$lambda-13>");
                }
                if (!trieNode.j((TrieNode) obj3, i10 + 5)) {
                    return false;
                }
            } else if (z6) {
                if (obj2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.containsAll$lambda-13>");
                }
                if (!((TrieNode) obj2).i(obj3 != null ? obj3.hashCode() : 0, obj3, i10 + 5)) {
                    return false;
                }
            } else if (z10 || !t.e(obj2, obj3)) {
                return false;
            }
            i13 ^= iLowestOneBit;
        }
        return true;
    }

    public final int p(int i10) {
        return Integer.bitCount((i10 - 1) & this.bitmap);
    }

    @NotNull
    public final TrieNode<E> t(int i10, E e, int i11, @NotNull PersistentHashSetBuilder<?> mutator) {
        t.j(mutator, "mutator");
        int iD = 1 << TrieNodeKt.d(i10, i11);
        if (o(iD)) {
            mutator.m(mutator.size() + 1);
            return v(iD, e, mutator.j());
        }
        int iP = p(iD);
        Object obj = this.buffer[iP];
        if (obj instanceof TrieNode) {
            TrieNode<E> trieNodeI = I(iP);
            TrieNode<E> trieNodeW = i11 == 30 ? trieNodeI.w(e, mutator) : trieNodeI.t(i10, e, i11 + 5, mutator);
            return trieNodeI == trieNodeW ? this : H(iP, trieNodeW, mutator.j());
        }
        if (t.e(e, obj)) {
            return this;
        }
        mutator.m(mutator.size() + 1);
        return C(iP, i10, e, i11, mutator.j());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final TrieNode<E> u(@NotNull TrieNode<E> otherNode, int i10, @NotNull DeltaCounter intersectionSizeRef, @NotNull PersistentHashSetBuilder<?> mutator) {
        Object objQ;
        TrieNode trieNodeT;
        t.j(otherNode, "otherNode");
        t.j(intersectionSizeRef, "intersectionSizeRef");
        t.j(mutator, "mutator");
        if (this == otherNode) {
            intersectionSizeRef.c(intersectionSizeRef.a() + d());
            return this;
        }
        if (i10 > 30) {
            return x(otherNode, intersectionSizeRef, mutator.j());
        }
        int i11 = this.bitmap;
        int i12 = otherNode.bitmap | i11;
        TrieNode<E> trieNode = (i12 == i11 && t.e(this.ownedBy, mutator.j())) ? this : new TrieNode<>(i12, new Object[Integer.bitCount(i12)], mutator.j());
        int i13 = i12;
        int i14 = 0;
        while (i13 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i13);
            int iP = p(iLowestOneBit);
            int iP2 = otherNode.p(iLowestOneBit);
            Object[] objArr = trieNode.buffer;
            if (o(iLowestOneBit)) {
                objQ = otherNode.buffer[iP2];
            } else if (otherNode.o(iLowestOneBit)) {
                objQ = this.buffer[iP];
            } else {
                Object obj = this.buffer[iP];
                Object obj2 = otherNode.buffer[iP2];
                boolean z6 = obj instanceof TrieNode;
                boolean z10 = obj2 instanceof TrieNode;
                if (!z6 || !z10) {
                    if (!z6) {
                        if (z10) {
                            if (obj2 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableAddAll$lambda-6>");
                            }
                            TrieNode trieNode2 = (TrieNode) obj2;
                            int size = mutator.size();
                            trieNodeT = trieNode2.t(obj != null ? obj.hashCode() : 0, obj, i10 + 5, mutator);
                            if (mutator.size() == size) {
                                intersectionSizeRef.c(intersectionSizeRef.a() + 1);
                            }
                            l0 l0Var = l0.INSTANCE;
                        } else if (t.e(obj, obj2)) {
                            intersectionSizeRef.c(intersectionSizeRef.a() + 1);
                            l0 l0Var2 = l0.INSTANCE;
                            objQ = obj;
                        } else {
                            objQ = q(obj != null ? obj.hashCode() : 0, obj, obj2 != null ? obj2.hashCode() : 0, obj2, i10 + 5, mutator.j());
                        }
                        objArr[i14] = objQ;
                        i14++;
                        i13 ^= iLowestOneBit;
                    } else {
                        if (obj == null) {
                            throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableAddAll$lambda-6>");
                        }
                        TrieNode trieNode3 = (TrieNode) obj;
                        int size2 = mutator.size();
                        trieNodeT = trieNode3.t(obj2 != null ? obj2.hashCode() : 0, obj2, i10 + 5, mutator);
                        if (mutator.size() == size2) {
                            intersectionSizeRef.c(intersectionSizeRef.a() + 1);
                        }
                        l0 l0Var3 = l0.INSTANCE;
                    }
                    objQ = trieNodeT;
                } else {
                    if (obj == null) {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableAddAll$lambda-6>");
                    }
                    TrieNode trieNode4 = (TrieNode) obj;
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode.mutableAddAll$lambda-6>");
                    }
                    objQ = trieNode4.u((TrieNode) obj2, i10 + 5, intersectionSizeRef, mutator);
                }
            }
            objArr[i14] = objQ;
            i14++;
            i13 ^= iLowestOneBit;
        }
        if (l(trieNode)) {
            return this;
        }
        return otherNode.l(trieNode) ? otherNode : trieNode;
    }

    private final TrieNode<E> c(int i10, E e) {
        return new TrieNode<>(i10 | this.bitmap, TrieNodeKt.c(this.buffer, p(i10), e));
    }

    private final TrieNode<E> e(E e) {
        if (f(e)) {
            return this;
        }
        return new TrieNode<>(0, TrieNodeKt.c(this.buffer, 0, e));
    }

    private final TrieNode<E> r(int i10, int i11, E e, int i12, MutabilityOwnership mutabilityOwnership) {
        int iHashCode;
        E eK = k(i10);
        if (eK != null) {
            iHashCode = eK.hashCode();
        } else {
            iHashCode = 0;
        }
        return q(iHashCode, eK, i11, e, i12 + 5, mutabilityOwnership);
    }

    private final TrieNode<E> v(int i10, E e, MutabilityOwnership mutabilityOwnership) {
        int iP = p(i10);
        if (this.ownedBy != mutabilityOwnership) {
            return new TrieNode<>(i10 | this.bitmap, TrieNodeKt.c(this.buffer, iP, e), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.c(this.buffer, iP, e);
        this.bitmap = i10 | this.bitmap;
        return this;
    }

    private final TrieNode<E> w(E e, PersistentHashSetBuilder<?> persistentHashSetBuilder) {
        if (f(e)) {
            return this;
        }
        persistentHashSetBuilder.m(persistentHashSetBuilder.size() + 1);
        if (this.ownedBy == persistentHashSetBuilder.j()) {
            this.buffer = TrieNodeKt.c(this.buffer, 0, e);
            return this;
        }
        return new TrieNode<>(0, TrieNodeKt.c(this.buffer, 0, e), persistentHashSetBuilder.j());
    }
}
