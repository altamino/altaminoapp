package androidx.compose.foundation.lazy;

import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class LazyDslKt$itemsIndexed$6 extends v implements l<Integer, Object> {
    final /* synthetic */ Object[] $items;
    final /* synthetic */ p<Integer, Object, Object> $key;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyDslKt$itemsIndexed$6(p<? super Integer, Object, ? extends Object> pVar, Object[] objArr) {
        super(1);
        this.$key = pVar;
        this.$items = objArr;
    }

    @NotNull
    public final Object b(int i10) {
        return this.$key.invoke(Integer.valueOf(i10), this.$items[i10]);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return b(num.intValue());
    }
}
