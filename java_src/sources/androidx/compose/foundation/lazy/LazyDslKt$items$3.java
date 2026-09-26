package androidx.compose.foundation.lazy;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class LazyDslKt$items$3 extends v implements l<Integer, Object> {
    final /* synthetic */ l<Object, Object> $contentType;
    final /* synthetic */ List<Object> $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyDslKt$items$3(l<Object, ? extends Object> lVar, List<Object> list) {
        super(1);
        this.$contentType = lVar;
        this.$items = list;
    }

    @Nullable
    public final Object b(int i10) {
        return this.$contentType.invoke(this.$items.get(i10));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return b(num.intValue());
    }
}
