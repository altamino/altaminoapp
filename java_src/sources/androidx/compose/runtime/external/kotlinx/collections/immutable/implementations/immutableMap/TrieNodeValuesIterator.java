package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class TrieNodeValuesIterator<K, V> extends TrieNodeBaseIterator<K, V, V> {
    @Override // java.util.Iterator
    public V next() {
        CommonFunctionsKt.a(f());
        m(e() + 2);
        return (V) c()[e() - 1];
    }
}
