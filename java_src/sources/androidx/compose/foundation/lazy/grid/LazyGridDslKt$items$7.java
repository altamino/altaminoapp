package androidx.compose.foundation.lazy.grid;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class LazyGridDslKt$items$7 extends v implements l<Integer, Object> {
    final /* synthetic */ Object[] $items;
    final /* synthetic */ l<Object, Object> $key;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyGridDslKt$items$7(l<Object, ? extends Object> lVar, Object[] objArr) {
        super(1);
        this.$key = lVar;
        this.$items = objArr;
    }

    @NotNull
    public final Object b(int i10) {
        return this.$key.invoke(this.$items[i10]);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return b(num.intValue());
    }
}
