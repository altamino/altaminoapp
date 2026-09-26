package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import com.narvii.modulization.ConfigApiRequestHelper;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final class ClickableKt$combinedClickableXVZzFYc$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ Indication $indication$inlined;
    final /* synthetic */ MutableInteractionSource $interactionSource$inlined;
    final /* synthetic */ e8.a $onClick$inlined;
    final /* synthetic */ String $onClickLabel$inlined;
    final /* synthetic */ e8.a $onDoubleClick$inlined;
    final /* synthetic */ e8.a $onLongClick$inlined;
    final /* synthetic */ String $onLongClickLabel$inlined;
    final /* synthetic */ Role $role$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClickableKt$combinedClickableXVZzFYc$$inlined$debugInspectorInfo$1(boolean z6, String str, Role role, e8.a aVar, e8.a aVar2, e8.a aVar3, String str2, Indication indication, MutableInteractionSource mutableInteractionSource) {
        super(1);
        this.$enabled$inlined = z6;
        this.$onClickLabel$inlined = str;
        this.$role$inlined = role;
        this.$onClick$inlined = aVar;
        this.$onDoubleClick$inlined = aVar2;
        this.$onLongClick$inlined = aVar3;
        this.$onLongClickLabel$inlined = str2;
        this.$indication$inlined = indication;
        this.$interactionSource$inlined = mutableInteractionSource;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("combinedClickable");
        inspectorInfo.a().c(ConfigApiRequestHelper.ENABLED, Boolean.valueOf(this.$enabled$inlined));
        inspectorInfo.a().c("onClickLabel", this.$onClickLabel$inlined);
        inspectorInfo.a().c("role", this.$role$inlined);
        inspectorInfo.a().c("onClick", this.$onClick$inlined);
        inspectorInfo.a().c("onDoubleClick", this.$onDoubleClick$inlined);
        inspectorInfo.a().c("onLongClick", this.$onLongClick$inlined);
        inspectorInfo.a().c("onLongClickLabel", this.$onLongClickLabel$inlined);
        inspectorInfo.a().c("indication", this.$indication$inlined);
        inspectorInfo.a().c("interactionSource", this.$interactionSource$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
