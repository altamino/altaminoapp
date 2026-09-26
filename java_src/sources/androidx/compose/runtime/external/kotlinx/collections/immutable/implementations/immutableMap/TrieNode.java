package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import j8.g;
import j8.o;
import java.util.Arrays;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class TrieNode<K, V> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final TrieNode EMPTY = new TrieNode(0, 0, new Object[0]);

    @NotNull
    private Object[] buffer;
    private int dataMap;
    private int nodeMap;

    @Nullable
    private final MutabilityOwnership ownedBy;

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

    public static final class ModificationResult<K, V> {

        @NotNull
        private TrieNode<K, V> node;
        private final int sizeDelta;

        @NotNull
        public final TrieNode<K, V> a() {
            return this.node;
        }

        public final int b() {
            return this.sizeDelta;
        }

        public final void c(@NotNull TrieNode<K, V> trieNode) {
            t.j(trieNode, "<set-?>");
            this.node = trieNode;
        }

        public ModificationResult(@NotNull TrieNode<K, V> node, int i10) {
            t.j(node, "node");
            this.node = node;
            this.sizeDelta = i10;
        }
    }

    public TrieNode(int i10, int i11, @NotNull Object[] buffer, @Nullable MutabilityOwnership mutabilityOwnership) {
        t.j(buffer, "buffer");
        this.dataMap = i10;
        this.nodeMap = i11;
        this.ownedBy = mutabilityOwnership;
        this.buffer = buffer;
    }

    private final Object[] d(int i10, int i11, int i12, K k, V v5, int i13, MutabilityOwnership mutabilityOwnership) {
        K kT = t(i10);
        return TrieNodeKt.j(this.buffer, i10, O(i11) + 1, u(kT != null ? kT.hashCode() : 0, kT, W(i10), i12, k, v5, i13 + 5, mutabilityOwnership));
    }

    private final boolean l(TrieNode<K, V> trieNode) {
        if (this == trieNode) {
            return true;
        }
        if (this.nodeMap != trieNode.nodeMap || this.dataMap != trieNode.dataMap) {
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

    private final boolean r(int i10) {
        return (i10 & this.nodeMap) != 0;
    }

    private final TrieNode<K, V> v(int i10, int i11, int i12, K k, V v5, int i13) {
        return new TrieNode<>(this.dataMap ^ i11, i11 | this.nodeMap, d(i10, i11, i12, k, v5, i13, null));
    }

    @Nullable
    public final TrieNode<K, V> H(int i10, K k, V v5, int i11, @NotNull PersistentHashMapBuilder<K, V> mutator) {
        t.j(mutator, "mutator");
        int iF = 1 << TrieNodeKt.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            return (t.e(k, t(iN)) && t.e(v5, W(iN))) ? I(iN, iF, mutator) : this;
        }
        if (!r(iF)) {
            return this;
        }
        int iO = O(iF);
        TrieNode<K, V> trieNodeN = N(iO);
        return K(trieNodeN, i11 == 30 ? trieNodeN.z(k, v5, mutator) : trieNodeN.H(i10, k, v5, i11 + 5, mutator), iO, iF, mutator.l());
    }

    @Nullable
    public final ModificationResult<K, V> P(int i10, K k, V v5, int i11) {
        ModificationResult<K, V> modificationResultP;
        int iF = 1 << TrieNodeKt.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            if (!t.e(k, t(iN))) {
                return v(iN, iF, i10, k, v5, i11).b();
            }
            if (W(iN) == v5) {
                return null;
            }
            return V(iN, v5).c();
        }
        if (!r(iF)) {
            return s(iF, k, v5).b();
        }
        int iO = O(iF);
        TrieNode<K, V> trieNodeN = N(iO);
        if (i11 == 30) {
            modificationResultP = trieNodeN.h(k, v5);
            if (modificationResultP == null) {
                return null;
            }
        } else {
            modificationResultP = trieNodeN.P(i10, k, v5, i11 + 5);
            if (modificationResultP == null) {
                return null;
            }
        }
        modificationResultP.c(U(iO, iF, modificationResultP.a()));
        return modificationResultP;
    }

    @Nullable
    public final TrieNode<K, V> Q(int i10, K k, int i11) {
        int iF = 1 << TrieNodeKt.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            return t.e(k, t(iN)) ? R(iN, iF) : this;
        }
        if (!r(iF)) {
            return this;
        }
        int iO = O(iF);
        TrieNode<K, V> trieNodeN = N(iO);
        return T(trieNodeN, i11 == 30 ? trieNodeN.i(k) : trieNodeN.Q(i10, k, i11 + 5), iO, iF);
    }

    public final boolean k(int i10, K k, int i11) {
        int iF = 1 << TrieNodeKt.f(i10, i11);
        if (q(iF)) {
            return t.e(k, t(n(iF)));
        }
        if (!r(iF)) {
            return false;
        }
        TrieNode<K, V> trieNodeN = N(O(iF));
        return i11 == 30 ? trieNodeN.f(k) : trieNodeN.k(i10, k, i11 + 5);
    }

    @Nullable
    public final V o(int i10, K k, int i11) {
        int iF = 1 << TrieNodeKt.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            if (t.e(k, t(iN))) {
                return W(iN);
            }
            return null;
        }
        if (!r(iF)) {
            return null;
        }
        TrieNode<K, V> trieNodeN = N(O(iF));
        return i11 == 30 ? trieNodeN.g(k) : trieNodeN.o(i10, k, i11 + 5);
    }

    @NotNull
    public final Object[] p() {
        return this.buffer;
    }

    public final boolean q(int i10) {
        return (i10 & this.dataMap) != 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TrieNode(int i10, int i11, @NotNull Object[] buffer) {
        this(i10, i11, buffer, null);
        t.j(buffer, "buffer");
    }

    private final TrieNode<K, V> C(int i10, int i11, int i12, K k, V v5, int i13, MutabilityOwnership mutabilityOwnership) {
        if (this.ownedBy != mutabilityOwnership) {
            return new TrieNode<>(this.dataMap ^ i11, i11 | this.nodeMap, d(i10, i11, i12, k, v5, i13, mutabilityOwnership), mutabilityOwnership);
        }
        this.buffer = d(i10, i11, i12, k, v5, i13, mutabilityOwnership);
        this.dataMap ^= i11;
        this.nodeMap |= i11;
        return this;
    }

    private final TrieNode<K, V> F(TrieNode<K, V> trieNode, int i10, int i11, DeltaCounter deltaCounter, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        if (r(i10)) {
            TrieNode<K, V> trieNodeN = N(O(i10));
            if (trieNode.r(i10)) {
                return trieNodeN.E(trieNode.N(trieNode.O(i10)), i11 + 5, deltaCounter, persistentHashMapBuilder);
            }
            if (!trieNode.q(i10)) {
                return trieNodeN;
            }
            int iN = trieNode.n(i10);
            K kT = trieNode.t(iN);
            V vW = trieNode.W(iN);
            int size = persistentHashMapBuilder.size();
            TrieNode<K, V> trieNodeD = trieNodeN.D(kT != null ? kT.hashCode() : 0, kT, vW, i11 + 5, persistentHashMapBuilder);
            if (persistentHashMapBuilder.size() != size) {
                return trieNodeD;
            }
            deltaCounter.c(deltaCounter.a() + 1);
            return trieNodeD;
        }
        if (!trieNode.r(i10)) {
            int iN2 = n(i10);
            K kT2 = t(iN2);
            V vW2 = W(iN2);
            int iN3 = trieNode.n(i10);
            K kT3 = trieNode.t(iN3);
            return u(kT2 != null ? kT2.hashCode() : 0, kT2, vW2, kT3 != null ? kT3.hashCode() : 0, kT3, trieNode.W(iN3), i11 + 5, persistentHashMapBuilder.l());
        }
        TrieNode<K, V> trieNodeN2 = trieNode.N(trieNode.O(i10));
        if (q(i10)) {
            int iN4 = n(i10);
            K kT4 = t(iN4);
            int i12 = i11 + 5;
            if (!trieNodeN2.k(kT4 != null ? kT4.hashCode() : 0, kT4, i12)) {
                return trieNodeN2.D(kT4 != null ? kT4.hashCode() : 0, kT4, W(iN4), i12, persistentHashMapBuilder);
            }
            deltaCounter.c(deltaCounter.a() + 1);
        }
        return trieNodeN2;
    }

    private final TrieNode<K, V> J(int i10, int i11, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1) {
            return null;
        }
        if (this.ownedBy != mutabilityOwnership) {
            return new TrieNode<>(this.dataMap, i11 ^ this.nodeMap, TrieNodeKt.i(objArr, i10), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.i(objArr, i10);
        this.nodeMap ^= i11;
        return this;
    }

    private final TrieNode<K, V> K(TrieNode<K, V> trieNode, TrieNode<K, V> trieNode2, int i10, int i11, MutabilityOwnership mutabilityOwnership) {
        if (trieNode2 == null) {
            return J(i10, i11, mutabilityOwnership);
        }
        return (this.ownedBy == mutabilityOwnership || trieNode != trieNode2) ? L(i10, trieNode2, mutabilityOwnership) : this;
    }

    private final TrieNode<K, V> L(int i10, TrieNode<K, V> trieNode, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1 && trieNode.buffer.length == 2 && trieNode.nodeMap == 0) {
            trieNode.dataMap = this.nodeMap;
            return trieNode;
        }
        if (this.ownedBy == mutabilityOwnership) {
            objArr[i10] = trieNode;
            return this;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        t.i(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10] = trieNode;
        return new TrieNode<>(this.dataMap, this.nodeMap, objArrCopyOf, mutabilityOwnership);
    }

    private final TrieNode<K, V> M(int i10, V v5, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        if (this.ownedBy == persistentHashMapBuilder.l()) {
            this.buffer[i10 + 1] = v5;
            return this;
        }
        persistentHashMapBuilder.m(persistentHashMapBuilder.j() + 1);
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        t.i(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10 + 1] = v5;
        return new TrieNode<>(this.dataMap, this.nodeMap, objArrCopyOf, persistentHashMapBuilder.l());
    }

    private final TrieNode<K, V> R(int i10, int i11) {
        Object[] objArr = this.buffer;
        if (objArr.length == 2) {
            return null;
        }
        return new TrieNode<>(i11 ^ this.dataMap, this.nodeMap, TrieNodeKt.h(objArr, i10));
    }

    private final TrieNode<K, V> S(int i10, int i11) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1) {
            return null;
        }
        return new TrieNode<>(this.dataMap, i11 ^ this.nodeMap, TrieNodeKt.i(objArr, i10));
    }

    private final TrieNode<K, V> T(TrieNode<K, V> trieNode, TrieNode<K, V> trieNode2, int i10, int i11) {
        if (trieNode2 == null) {
            return S(i10, i11);
        }
        return trieNode != trieNode2 ? U(i10, i11, trieNode2) : this;
    }

    private final TrieNode<K, V> U(int i10, int i11, TrieNode<K, V> trieNode) {
        Object[] objArr = trieNode.buffer;
        if (objArr.length != 2 || trieNode.nodeMap != 0) {
            Object[] objArr2 = this.buffer;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
            t.i(objArrCopyOf, "copyOf(this, newSize)");
            objArrCopyOf[i10] = trieNode;
            return new TrieNode<>(this.dataMap, this.nodeMap, objArrCopyOf);
        }
        if (this.buffer.length == 1) {
            trieNode.dataMap = this.nodeMap;
            return trieNode;
        }
        return new TrieNode<>(this.dataMap ^ i11, i11 ^ this.nodeMap, TrieNodeKt.k(this.buffer, i10, n(i11), objArr[0], objArr[1]));
    }

    private final TrieNode<K, V> V(int i10, V v5) {
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        t.i(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10 + 1] = v5;
        return new TrieNode<>(this.dataMap, this.nodeMap, objArrCopyOf);
    }

    private final V W(int i10) {
        return (V) this.buffer[i10 + 1];
    }

    private final ModificationResult<K, V> b() {
        return new ModificationResult<>(this, 1);
    }

    private final ModificationResult<K, V> c() {
        return new ModificationResult<>(this, 0);
    }

    private final int e() {
        if (this.nodeMap == 0) {
            return this.buffer.length / 2;
        }
        int iBitCount = Integer.bitCount(this.dataMap);
        int length = this.buffer.length;
        for (int i10 = iBitCount * 2; i10 < length; i10++) {
            iBitCount += N(i10).e();
        }
        return iBitCount;
    }

    private final boolean f(K k) {
        g gVarU = o.u(o.v(0, this.buffer.length), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (!t.e(k, this.buffer[iE])) {
                if (iE != iF) {
                    iE += iG;
                }
            }
            return true;
        }
        return false;
    }

    private final V g(K k) {
        g gVarU = o.u(o.v(0, this.buffer.length), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG <= 0 || iE > iF) && (iG >= 0 || iF > iE)) {
            return null;
        }
        while (!t.e(k, t(iE))) {
            if (iE == iF) {
                return null;
            }
            iE += iG;
        }
        return W(iE);
    }

    private final ModificationResult<K, V> h(K k, V v5) {
        g gVarU = o.u(o.v(0, this.buffer.length), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (!t.e(k, t(iE))) {
                if (iE != iF) {
                    iE += iG;
                }
            }
            if (v5 == W(iE)) {
                return null;
            }
            Object[] objArr = this.buffer;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            t.i(objArrCopyOf, "copyOf(this, size)");
            objArrCopyOf[iE + 1] = v5;
            return new TrieNode(0, 0, objArrCopyOf).c();
        }
        return new TrieNode(0, 0, TrieNodeKt.g(this.buffer, 0, k, v5)).b();
    }

    private final TrieNode<K, V> i(K k) {
        g gVarU = o.u(o.v(0, this.buffer.length), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (!t.e(k, t(iE))) {
                if (iE != iF) {
                    iE += iG;
                }
            }
            return j(iE);
        }
        return this;
    }

    private final TrieNode<K, V> j(int i10) {
        Object[] objArr = this.buffer;
        if (objArr.length == 2) {
            return null;
        }
        return new TrieNode<>(0, 0, TrieNodeKt.h(objArr, i10));
    }

    private final K t(int i10) {
        return (K) this.buffer[i10];
    }

    private final TrieNode<K, V> u(int i10, K k, V v5, int i11, K k6, V v6, int i12, MutabilityOwnership mutabilityOwnership) {
        if (i12 > 30) {
            return new TrieNode<>(0, 0, new Object[]{k, v5, k6, v6}, mutabilityOwnership);
        }
        int iF = TrieNodeKt.f(i10, i12);
        int iF2 = TrieNodeKt.f(i11, i12);
        if (iF != iF2) {
            return new TrieNode<>((1 << iF) | (1 << iF2), 0, iF < iF2 ? new Object[]{k, v5, k6, v6} : new Object[]{k6, v6, k, v5}, mutabilityOwnership);
        }
        return new TrieNode<>(0, 1 << iF, new Object[]{u(i10, k, v5, i11, k6, v6, i12 + 5, mutabilityOwnership)}, mutabilityOwnership);
    }

    private final TrieNode<K, V> w(K k, V v5, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        g gVarU = o.u(o.v(0, this.buffer.length), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (!t.e(k, t(iE))) {
                if (iE != iF) {
                    iE += iG;
                }
            }
            persistentHashMapBuilder.o(W(iE));
            if (this.ownedBy == persistentHashMapBuilder.l()) {
                this.buffer[iE + 1] = v5;
                return this;
            }
            persistentHashMapBuilder.m(persistentHashMapBuilder.j() + 1);
            Object[] objArr = this.buffer;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            t.i(objArrCopyOf, "copyOf(this, size)");
            objArrCopyOf[iE + 1] = v5;
            return new TrieNode<>(0, 0, objArrCopyOf, persistentHashMapBuilder.l());
        }
        persistentHashMapBuilder.p(persistentHashMapBuilder.size() + 1);
        return new TrieNode<>(0, 0, TrieNodeKt.g(this.buffer, 0, k, v5), persistentHashMapBuilder.l());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final TrieNode<K, V> x(TrieNode<K, V> trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        CommonFunctionsKt.a(this.nodeMap == 0);
        CommonFunctionsKt.a(this.dataMap == 0);
        CommonFunctionsKt.a(trieNode.nodeMap == 0);
        CommonFunctionsKt.a(trieNode.dataMap == 0);
        Object[] objArr = this.buffer;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + trieNode.buffer.length);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        int length = this.buffer.length;
        g gVarU = o.u(o.v(0, trieNode.buffer.length), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (true) {
                if (f(trieNode.buffer[iE])) {
                    deltaCounter.c(deltaCounter.a() + 1);
                } else {
                    Object[] objArr2 = trieNode.buffer;
                    objArrCopyOf[length] = objArr2[iE];
                    objArrCopyOf[length + 1] = objArr2[iE + 1];
                    length += 2;
                }
                if (iE == iF) {
                    break;
                }
                iE += iG;
            }
        }
        if (length == this.buffer.length) {
            return this;
        }
        if (length == trieNode.buffer.length) {
            return trieNode;
        }
        if (length == objArrCopyOf.length) {
            return new TrieNode<>(0, 0, objArrCopyOf, mutabilityOwnership);
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, length);
        t.i(objArrCopyOf2, "copyOf(this, newSize)");
        return new TrieNode<>(0, 0, objArrCopyOf2, mutabilityOwnership);
    }

    private final TrieNode<K, V> y(K k, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        g gVarU = o.u(o.v(0, this.buffer.length), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (!t.e(k, t(iE))) {
                if (iE != iF) {
                    iE += iG;
                }
            }
            return A(iE, persistentHashMapBuilder);
        }
        return this;
    }

    private final TrieNode<K, V> z(K k, V v5, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        g gVarU = o.u(o.v(0, this.buffer.length), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (true) {
                if (t.e(k, t(iE)) && t.e(v5, W(iE))) {
                    return A(iE, persistentHashMapBuilder);
                }
                if (iE != iF) {
                    iE += iG;
                }
            }
        }
        return this;
    }

    @NotNull
    public final TrieNode<K, V> D(int i10, K k, V v5, int i11, @NotNull PersistentHashMapBuilder<K, V> mutator) {
        t.j(mutator, "mutator");
        int iF = 1 << TrieNodeKt.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            if (t.e(k, t(iN))) {
                mutator.o(W(iN));
                return W(iN) == v5 ? this : M(iN, v5, mutator);
            }
            mutator.p(mutator.size() + 1);
            return C(iN, iF, i10, k, v5, i11, mutator.l());
        }
        if (!r(iF)) {
            mutator.p(mutator.size() + 1);
            return B(iF, k, v5, mutator.l());
        }
        int iO = O(iF);
        TrieNode<K, V> trieNodeN = N(iO);
        TrieNode<K, V> trieNodeW = i11 == 30 ? trieNodeN.w(k, v5, mutator) : trieNodeN.D(i10, k, v5, i11 + 5, mutator);
        return trieNodeN == trieNodeW ? this : L(iO, trieNodeW, mutator.l());
    }

    @NotNull
    public final TrieNode<K, V> E(@NotNull TrieNode<K, V> otherNode, int i10, @NotNull DeltaCounter intersectionCounter, @NotNull PersistentHashMapBuilder<K, V> mutator) {
        t.j(otherNode, "otherNode");
        t.j(intersectionCounter, "intersectionCounter");
        t.j(mutator, "mutator");
        if (this == otherNode) {
            intersectionCounter.b(e());
            return this;
        }
        if (i10 > 30) {
            return x(otherNode, intersectionCounter, mutator.l());
        }
        int i11 = this.nodeMap | otherNode.nodeMap;
        int i12 = this.dataMap;
        int i13 = otherNode.dataMap;
        int i14 = (i12 ^ i13) & (~i11);
        int i15 = i12 & i13;
        int i16 = i14;
        while (i15 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i15);
            if (t.e(t(n(iLowestOneBit)), otherNode.t(otherNode.n(iLowestOneBit)))) {
                i16 |= iLowestOneBit;
            } else {
                i11 |= iLowestOneBit;
            }
            i15 ^= iLowestOneBit;
        }
        if ((i11 & i16) != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        TrieNode<K, V> trieNode = (t.e(this.ownedBy, mutator.l()) && this.dataMap == i16 && this.nodeMap == i11) ? this : new TrieNode<>(i16, i11, new Object[(Integer.bitCount(i16) * 2) + Integer.bitCount(i11)]);
        int i17 = 0;
        int i18 = i11;
        int i19 = 0;
        while (i18 != 0) {
            int iLowestOneBit2 = Integer.lowestOneBit(i18);
            Object[] objArr = trieNode.buffer;
            objArr[(objArr.length - 1) - i19] = F(otherNode, iLowestOneBit2, i10, intersectionCounter, mutator);
            i19++;
            i18 ^= iLowestOneBit2;
        }
        while (i16 != 0) {
            int iLowestOneBit3 = Integer.lowestOneBit(i16);
            int i20 = i17 * 2;
            if (otherNode.q(iLowestOneBit3)) {
                int iN = otherNode.n(iLowestOneBit3);
                trieNode.buffer[i20] = otherNode.t(iN);
                trieNode.buffer[i20 + 1] = otherNode.W(iN);
                if (q(iLowestOneBit3)) {
                    intersectionCounter.c(intersectionCounter.a() + 1);
                }
            } else {
                int iN2 = n(iLowestOneBit3);
                trieNode.buffer[i20] = t(iN2);
                trieNode.buffer[i20 + 1] = W(iN2);
            }
            i17++;
            i16 ^= iLowestOneBit3;
        }
        if (l(trieNode)) {
            return this;
        }
        return otherNode.l(trieNode) ? otherNode : trieNode;
    }

    @Nullable
    public final TrieNode<K, V> G(int i10, K k, int i11, @NotNull PersistentHashMapBuilder<K, V> mutator) {
        t.j(mutator, "mutator");
        int iF = 1 << TrieNodeKt.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            return t.e(k, t(iN)) ? I(iN, iF, mutator) : this;
        }
        if (!r(iF)) {
            return this;
        }
        int iO = O(iF);
        TrieNode<K, V> trieNodeN = N(iO);
        return K(trieNodeN, i11 == 30 ? trieNodeN.y(k, mutator) : trieNodeN.G(i10, k, i11 + 5, mutator), iO, iF, mutator.l());
    }

    @NotNull
    public final TrieNode<K, V> N(int i10) {
        Object obj = this.buffer[i10];
        if (obj != null) {
            return (TrieNode) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode>");
    }

    public final int O(int i10) {
        return (this.buffer.length - 1) - Integer.bitCount((i10 - 1) & this.nodeMap);
    }

    public final int m() {
        return Integer.bitCount(this.dataMap);
    }

    public final int n(int i10) {
        return Integer.bitCount((i10 - 1) & this.dataMap) * 2;
    }

    private final TrieNode<K, V> A(int i10, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        persistentHashMapBuilder.p(persistentHashMapBuilder.size() - 1);
        persistentHashMapBuilder.o(W(i10));
        if (this.buffer.length == 2) {
            return null;
        }
        if (this.ownedBy == persistentHashMapBuilder.l()) {
            this.buffer = TrieNodeKt.h(this.buffer, i10);
            return this;
        }
        return new TrieNode<>(0, 0, TrieNodeKt.h(this.buffer, i10), persistentHashMapBuilder.l());
    }

    private final TrieNode<K, V> B(int i10, K k, V v5, MutabilityOwnership mutabilityOwnership) {
        int iN = n(i10);
        if (this.ownedBy != mutabilityOwnership) {
            return new TrieNode<>(i10 | this.dataMap, this.nodeMap, TrieNodeKt.g(this.buffer, iN, k, v5), mutabilityOwnership);
        }
        this.buffer = TrieNodeKt.g(this.buffer, iN, k, v5);
        this.dataMap = i10 | this.dataMap;
        return this;
    }

    private final TrieNode<K, V> I(int i10, int i11, PersistentHashMapBuilder<K, V> persistentHashMapBuilder) {
        persistentHashMapBuilder.p(persistentHashMapBuilder.size() - 1);
        persistentHashMapBuilder.o(W(i10));
        if (this.buffer.length == 2) {
            return null;
        }
        if (this.ownedBy != persistentHashMapBuilder.l()) {
            return new TrieNode<>(i11 ^ this.dataMap, this.nodeMap, TrieNodeKt.h(this.buffer, i10), persistentHashMapBuilder.l());
        }
        this.buffer = TrieNodeKt.h(this.buffer, i10);
        this.dataMap ^= i11;
        return this;
    }

    private final TrieNode<K, V> s(int i10, K k, V v5) {
        return new TrieNode<>(i10 | this.dataMap, this.nodeMap, TrieNodeKt.g(this.buffer, n(i10), k, v5));
    }
}
