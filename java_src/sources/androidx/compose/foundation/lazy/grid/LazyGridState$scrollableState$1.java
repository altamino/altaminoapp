package androidx.compose.foundation.lazy.grid;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class LazyGridState$scrollableState$1 extends v implements l<Float, Float> {
    final /* synthetic */ LazyGridState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridState$scrollableState$1(LazyGridState lazyGridState) {
        super(1);
        this.this$0 = lazyGridState;
    }

    @NotNull
    public final Float invoke(float f) {
        return Float.valueOf(-this.this$0.v(-f));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Float invoke(Float f) {
        return invoke(f.floatValue());
    }
}
