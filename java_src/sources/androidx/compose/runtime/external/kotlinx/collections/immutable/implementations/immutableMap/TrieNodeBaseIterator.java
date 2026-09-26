package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import f8.a;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public abstract class TrieNodeBaseIterator<K, V, T> implements Iterator<T>, a {

    @NotNull
    private Object[] buffer = TrieNode.Companion.a().p();
    private int dataSize;
    private int index;

    @NotNull
    protected final Object[] c() {
        return this.buffer;
    }

    protected final int e() {
        return this.index;
    }

    public final boolean f() {
        return this.index < this.dataSize;
    }

    public final void l(@NotNull Object[] buffer, int i10, int i11) {
        t.j(buffer, "buffer");
        this.buffer = buffer;
        this.dataSize = i10;
        this.index = i11;
    }

    protected final void m(int i10) {
        this.index = i10;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean g() {
        CommonFunctionsKt.a(this.index >= this.dataSize);
        return this.index < this.buffer.length;
    }

    public final void k(@NotNull Object[] buffer, int i10) {
        t.j(buffer, "buffer");
        l(buffer, i10, 0);
    }

    public final K a() {
        CommonFunctionsKt.a(f());
        return (K) this.buffer[this.index];
    }

    @NotNull
    public final TrieNode<? extends K, ? extends V> b() {
        CommonFunctionsKt.a(g());
        Object obj = this.buffer[this.index];
        if (obj != null) {
            return (TrieNode) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator>");
    }

    public final void h() {
        CommonFunctionsKt.a(f());
        this.index += 2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return f();
    }

    public final void j() {
        CommonFunctionsKt.a(g());
        this.index++;
    }
}
