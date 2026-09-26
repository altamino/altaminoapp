package androidx.compose.foundation.lazy;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class LazyDslKt$items$2 extends v implements l<Integer, Object> {
    final /* synthetic */ List<Object> $items;
    final /* synthetic */ l<Object, Object> $key;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyDslKt$items$2(l<Object, ? extends Object> lVar, List<Object> list) {
        super(1);
        this.$key = lVar;
        this.$items = list;
    }

    @NotNull
    public final Object b(int i10) {
        return this.$key.invoke(this.$items.get(i10));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return b(num.intValue());
    }
}
