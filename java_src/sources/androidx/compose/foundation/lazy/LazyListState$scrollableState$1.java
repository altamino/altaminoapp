package androidx.compose.foundation.lazy;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class LazyListState$scrollableState$1 extends v implements l<Float, Float> {
    final /* synthetic */ LazyListState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListState$scrollableState$1(LazyListState lazyListState) {
        super(1);
        this.this$0 = lazyListState;
    }

    @NotNull
    public final Float invoke(float f) {
        return Float.valueOf(-this.this$0.u(-f));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Float invoke(Float f) {
        return invoke(f.floatValue());
    }
}
