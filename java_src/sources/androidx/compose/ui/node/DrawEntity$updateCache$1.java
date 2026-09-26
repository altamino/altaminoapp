package androidx.compose.ui.node;

import androidx.compose.ui.draw.DrawCacheModifier;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class DrawEntity$updateCache$1 extends v implements e8.a<l0> {
    final /* synthetic */ DrawEntity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DrawEntity$updateCache$1(DrawEntity drawEntity) {
        super(0);
        this.this$0 = drawEntity;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        DrawCacheModifier drawCacheModifier = this.this$0.cacheDrawModifier;
        if (drawCacheModifier != null) {
            drawCacheModifier.M(this.this$0.buildCacheParams);
        }
        this.this$0.invalidateCache = false;
    }
}
