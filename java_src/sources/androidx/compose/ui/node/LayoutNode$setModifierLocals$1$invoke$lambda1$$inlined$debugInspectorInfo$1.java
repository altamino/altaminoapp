package androidx.compose.ui.node;

import androidx.compose.ui.focus.FocusOrderModifierToProperties;
import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.ui.node.LayoutNode$setModifierLocals$1$invoke$lambda-1$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class LayoutNode$setModifierLocals$1$invoke$lambda1$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ FocusOrderModifierToProperties $scope$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayoutNode$setModifierLocals$1$invoke$lambda1$$inlined$debugInspectorInfo$1(FocusOrderModifierToProperties focusOrderModifierToProperties) {
        super(1);
        this.$scope$inlined = focusOrderModifierToProperties;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("focusProperties");
        inspectorInfo.a().c("scope", this.$scope$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
