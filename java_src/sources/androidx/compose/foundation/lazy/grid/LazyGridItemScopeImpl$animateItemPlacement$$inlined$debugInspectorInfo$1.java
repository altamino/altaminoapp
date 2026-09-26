package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridItemScopeImpl$animateItemPlacement$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ FiniteAnimationSpec $animationSpec$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyGridItemScopeImpl$animateItemPlacement$$inlined$debugInspectorInfo$1(FiniteAnimationSpec finiteAnimationSpec) {
        super(1);
        this.$animationSpec$inlined = finiteAnimationSpec;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("animateItemPlacement");
        inspectorInfo.c(this.$animationSpec$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
