package androidx.compose.animation;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class AnimatedVisibilityScope$animateEnterExit$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ EnterTransition $enter$inlined;
    final /* synthetic */ ExitTransition $exit$inlined;
    final /* synthetic */ String $label$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedVisibilityScope$animateEnterExit$$inlined$debugInspectorInfo$1(EnterTransition enterTransition, ExitTransition exitTransition, String str) {
        super(1);
        this.$enter$inlined = enterTransition;
        this.$exit$inlined = exitTransition;
        this.$label$inlined = str;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("animateEnterExit");
        inspectorInfo.a().c("enter", this.$enter$inlined);
        inspectorInfo.a().c("exit", this.$exit$inlined);
        inspectorInfo.a().c("label", this.$label$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
