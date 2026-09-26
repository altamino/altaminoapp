package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.platform.InspectorInfo;
import com.narvii.modulization.ConfigApiRequestHelper;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldScrollKt$textFieldScrollable$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ MutableInteractionSource $interactionSource$inlined;
    final /* synthetic */ TextFieldScrollerPosition $scrollerPosition$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldScrollKt$textFieldScrollable$$inlined$debugInspectorInfo$1(TextFieldScrollerPosition textFieldScrollerPosition, MutableInteractionSource mutableInteractionSource, boolean z6) {
        super(1);
        this.$scrollerPosition$inlined = textFieldScrollerPosition;
        this.$interactionSource$inlined = mutableInteractionSource;
        this.$enabled$inlined = z6;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("textFieldScrollable");
        inspectorInfo.a().c("scrollerPosition", this.$scrollerPosition$inlined);
        inspectorInfo.a().c("interactionSource", this.$interactionSource$inlined);
        inspectorInfo.a().c(ConfigApiRequestHelper.ENABLED, Boolean.valueOf(this.$enabled$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
