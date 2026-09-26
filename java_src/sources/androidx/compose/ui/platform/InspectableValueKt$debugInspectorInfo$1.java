package androidx.compose.ui.platform;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class InspectableValueKt$debugInspectorInfo$1 extends kotlin.jvm.internal.v implements e8.l<InspectorInfo, w7.l0> {
    final /* synthetic */ e8.l<InspectorInfo, w7.l0> $definitions;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InspectableValueKt$debugInspectorInfo$1(e8.l<? super InspectorInfo, w7.l0> lVar) {
        super(1);
        this.$definitions = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        kotlin.jvm.internal.t.j(inspectorInfo, "$this$null");
        this.$definitions.invoke(inspectorInfo);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return w7.l0.INSTANCE;
    }
}
