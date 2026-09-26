package androidx.compose.foundation;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import com.narvii.modulization.ConfigApiRequestHelper;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$clickable-XHw0xAI$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final class ClickableKt$clickableXHw0xAI$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ e8.a $onClick$inlined;
    final /* synthetic */ String $onClickLabel$inlined;
    final /* synthetic */ Role $role$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClickableKt$clickableXHw0xAI$$inlined$debugInspectorInfo$1(boolean z6, String str, Role role, e8.a aVar) {
        super(1);
        this.$enabled$inlined = z6;
        this.$onClickLabel$inlined = str;
        this.$role$inlined = role;
        this.$onClick$inlined = aVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("clickable");
        inspectorInfo.a().c(ConfigApiRequestHelper.ENABLED, Boolean.valueOf(this.$enabled$inlined));
        inspectorInfo.a().c("onClickLabel", this.$onClickLabel$inlined);
        inspectorInfo.a().c("role", this.$role$inlined);
        inspectorInfo.a().c("onClick", this.$onClick$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
