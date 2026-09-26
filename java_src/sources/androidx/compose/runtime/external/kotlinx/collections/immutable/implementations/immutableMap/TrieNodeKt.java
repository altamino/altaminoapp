package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Arrays;
import kotlin.collections.o;
import kotlin.jvm.internal.t;

/* JADX INFO: loaded from: classes9.dex */
public final class TrieNodeKt {
    public static final int ENTRY_SIZE = 2;
    public static final int LOG_MAX_BRANCHING_FACTOR = 5;
    public static final int MAX_BRANCHING_FACTOR = 32;
    public static final int MAX_BRANCHING_FACTOR_MINUS_ONE = 31;
    public static final int MAX_SHIFT = 30;

    public static final int f(int i10, int i11) {
        return (i10 >> i11) & 31;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> Object[] g(Object[] objArr, int i10, K k, V v5) {
        Object[] objArr2 = new Object[objArr.length + 2];
        o.m(objArr, objArr2, 0, 0, i10, 6, null);
        o.i(objArr, objArr2, i10 + 2, i10, objArr.length);
        objArr2[i10] = k;
        objArr2[i10 + 1] = v5;
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] h(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[objArr.length - 2];
        o.m(objArr, objArr2, 0, 0, i10, 6, null);
        o.i(objArr, objArr2, i10, i10 + 2, objArr.length);
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] i(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[objArr.length - 1];
        o.m(objArr, objArr2, 0, 0, i10, 6, null);
        o.i(objArr, objArr2, i10, i10 + 1, objArr.length);
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> Object[] k(Object[] objArr, int i10, int i11, K k, V v5) {
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + 1);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        o.i(objArrCopyOf, objArrCopyOf, i10 + 2, i10 + 1, objArr.length);
        o.i(objArrCopyOf, objArrCopyOf, i11 + 2, i11, i10);
        objArrCopyOf[i11] = k;
        objArrCopyOf[i11 + 1] = v5;
        return objArrCopyOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] j(Object[] objArr, int i10, int i11, TrieNode<?, ?> trieNode) {
        Object[] objArr2 = new Object[objArr.length - 1];
        o.m(objArr, objArr2, 0, 0, i10, 6, null);
        o.i(objArr, objArr2, i10, i10 + 2, i11);
        objArr2[i11 - 2] = trieNode;
        o.i(objArr, objArr2, i11 - 1, i11, objArr.length);
        return objArr2;
    }
}
