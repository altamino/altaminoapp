package androidx.compose.foundation;

import e8.l;
import j8.o;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class ScrollState$scrollableState$1 extends v implements l<Float, Float> {
    final /* synthetic */ ScrollState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollState$scrollableState$1(ScrollState scrollState) {
        super(1);
        this.this$0 = scrollState;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Float invoke(Float f) {
        return invoke(f.floatValue());
    }

    @NotNull
    public final Float invoke(float f) {
        float fK = this.this$0.k() + f + this.this$0.accumulator;
        float fM = o.m(fK, 0.0f, this.this$0.j());
        boolean z6 = !(fK == fM);
        float fK2 = fM - this.this$0.k();
        int iC = g8.c.c(fK2);
        ScrollState scrollState = this.this$0;
        scrollState.m(scrollState.k() + iC);
        this.this$0.accumulator = fK2 - iC;
        if (z6) {
            f = fK2;
        }
        return Float.valueOf(f);
    }
}
