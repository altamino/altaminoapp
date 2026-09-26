package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;

/* JADX INFO: loaded from: classes11.dex */
public final class TrieNodeKeysIterator<K, V> extends TrieNodeBaseIterator<K, V, K> {
    @Override // java.util.Iterator
    public K next() {
        CommonFunctionsKt.a(f());
        m(e() + 2);
        return (K) c()[e() - 2];
    }
}
