package androidx.compose.foundation.lazy;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1 extends v implements l<Integer, Object> {
    final /* synthetic */ List $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1(List list) {
        super(1);
        this.$items = list;
    }

    @Nullable
    public final Object b(int i10) {
        this.$items.get(i10);
        return null;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return b(num.intValue());
    }
}
