package androidx.compose.ui.platform;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class InspectableValueKt$NoInspectorInfo$1 extends kotlin.jvm.internal.v implements e8.l<InspectorInfo, w7.l0> {
    public static final InspectableValueKt$NoInspectorInfo$1 INSTANCE = new InspectableValueKt$NoInspectorInfo$1();

    InspectableValueKt$NoInspectorInfo$1() {
        super(1);
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        kotlin.jvm.internal.t.j(inspectorInfo, "$this$null");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return w7.l0.INSTANCE;
    }
}
