package androidx.compose.foundation.lazy.grid;

import e8.l;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyGridDslKt$itemsIndexed$2 extends v implements l<Integer, Object> {
    final /* synthetic */ List<Object> $items;
    final /* synthetic */ p<Integer, Object, Object> $key;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$itemsIndexed$2(p<? super Integer, Object, ? extends Object> pVar, List<Object> list) {
        super(1);
        this.$key = pVar;
        this.$items = list;
    }

    @NotNull
    public final Object b(int i10) {
        return this.$key.invoke(Integer.valueOf(i10), this.$items.get(i10));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return b(num.intValue());
    }
}
