package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class TrieNodeIterator<E> {

    @NotNull
    private Object[] buffer = TrieNode.Companion.a().n();
    private int index;

    public final void h(@NotNull Object[] buffer, int i10) {
        t.j(buffer, "buffer");
        this.buffer = buffer;
        this.index = i10;
    }

    public static /* synthetic */ void i(TrieNodeIterator trieNodeIterator, Object[] objArr, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        trieNodeIterator.h(objArr, i10);
    }

    public final boolean c() {
        return this.index < this.buffer.length;
    }

    public final E a() {
        CommonFunctionsKt.a(d());
        return (E) this.buffer[this.index];
    }

    @NotNull
    public final TrieNode<? extends E> b() {
        CommonFunctionsKt.a(e());
        Object obj = this.buffer[this.index];
        if (obj != null) {
            return (TrieNode) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNodeIterator>");
    }

    public final boolean d() {
        if (c() && !(this.buffer[this.index] instanceof TrieNode)) {
            return true;
        }
        return false;
    }

    public final boolean e() {
        if (c() && (this.buffer[this.index] instanceof TrieNode)) {
            return true;
        }
        return false;
    }

    public final void f() {
        CommonFunctionsKt.a(c());
        this.index++;
    }

    public final E g() {
        CommonFunctionsKt.a(d());
        Object[] objArr = this.buffer;
        int i10 = this.index;
        this.index = i10 + 1;
        return (E) objArr[i10];
    }
}
