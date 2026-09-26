package androidx.compose.ui.modifier;

import androidx.compose.ui.platform.InspectorInfo;
import e8.a;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class ModifierLocalProviderKt$modifierLocalProvider$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ ProvidableModifierLocal $key$inlined;
    final /* synthetic */ a $value$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModifierLocalProviderKt$modifierLocalProvider$$inlined$debugInspectorInfo$1(ProvidableModifierLocal providableModifierLocal, a aVar) {
        super(1);
        this.$key$inlined = providableModifierLocal;
        this.$value$inlined = aVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("modifierLocalProvider");
        inspectorInfo.a().c("key", this.$key$inlined);
        inspectorInfo.a().c("value", this.$value$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
