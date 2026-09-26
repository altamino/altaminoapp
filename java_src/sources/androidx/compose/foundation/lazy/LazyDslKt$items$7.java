package androidx.compose.foundation.lazy;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class LazyDslKt$items$7 extends v implements l<Integer, Object> {
    final /* synthetic */ l<Object, Object> $contentType;
    final /* synthetic */ Object[] $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyDslKt$items$7(l<Object, ? extends Object> lVar, Object[] objArr) {
        super(1);
        this.$contentType = lVar;
        this.$items = objArr;
    }

    @Nullable
    public final Object b(int i10) {
        return this.$contentType.invoke(this.$items[i10]);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return b(num.intValue());
    }
}
