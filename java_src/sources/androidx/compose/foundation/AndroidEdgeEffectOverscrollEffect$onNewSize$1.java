package androidx.compose.foundation;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidEdgeEffectOverscrollEffect$onNewSize$1 extends v implements l<IntSize, l0> {
    final /* synthetic */ AndroidEdgeEffectOverscrollEffect this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidEdgeEffectOverscrollEffect$onNewSize$1(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect) {
        super(1);
        this.this$0 = androidEdgeEffectOverscrollEffect;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(IntSize intSize) {
        a(intSize.j());
        return l0.INSTANCE;
    }

    public final void a(long j6) {
        boolean z6 = !Size.f(IntSizeKt.b(j6), this.this$0.containerSize);
        this.this$0.containerSize = IntSizeKt.b(j6);
        if (z6) {
            this.this$0.topEffect.setSize(IntSize.g(j6), IntSize.f(j6));
            this.this$0.bottomEffect.setSize(IntSize.g(j6), IntSize.f(j6));
            this.this$0.leftEffect.setSize(IntSize.f(j6), IntSize.g(j6));
            this.this$0.rightEffect.setSize(IntSize.f(j6), IntSize.g(j6));
            this.this$0.topEffectNegation.setSize(IntSize.g(j6), IntSize.f(j6));
            this.this$0.bottomEffectNegation.setSize(IntSize.g(j6), IntSize.f(j6));
            this.this$0.leftEffectNegation.setSize(IntSize.f(j6), IntSize.g(j6));
            this.this$0.rightEffectNegation.setSize(IntSize.f(j6), IntSize.g(j6));
        }
        if (z6) {
            this.this$0.y();
            this.this$0.s();
        }
    }
}
