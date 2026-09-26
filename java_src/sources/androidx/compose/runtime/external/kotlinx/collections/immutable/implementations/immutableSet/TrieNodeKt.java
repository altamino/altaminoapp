package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import kotlin.collections.o;

/* JADX INFO: loaded from: classes11.dex */
public final class TrieNodeKt {
    public static final int LOG_MAX_BRANCHING_FACTOR = 5;
    public static final int MAX_BRANCHING_FACTOR = 32;
    public static final int MAX_BRANCHING_FACTOR_MINUS_ONE = 31;
    public static final int MAX_SHIFT = 30;

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> Object[] c(Object[] objArr, int i10, E e) {
        Object[] objArr2 = new Object[objArr.length + 1];
        o.m(objArr, objArr2, 0, 0, i10, 6, null);
        o.i(objArr, objArr2, i10 + 1, i10, objArr.length);
        objArr2[i10] = e;
        return objArr2;
    }

    public static final int d(int i10, int i11) {
        return (i10 >> i11) & 31;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] e(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[objArr.length - 1];
        o.m(objArr, objArr2, 0, 0, i10, 6, null);
        o.i(objArr, objArr2, i10, i10 + 1, objArr.length);
        return objArr2;
    }
}
