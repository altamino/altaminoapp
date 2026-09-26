package androidx.compose.material;

import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.InspectorInfo;
import com.narvii.modulization.ConfigApiRequestHelper;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ DraggableState $draggableState$inlined;
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ State $gestureEndAction$inlined;
    final /* synthetic */ MutableInteractionSource $interactionSource$inlined;
    final /* synthetic */ boolean $isRtl$inlined;
    final /* synthetic */ float $maxPx$inlined;
    final /* synthetic */ MutableState $pressOffset$inlined;
    final /* synthetic */ State $rawOffset$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1(DraggableState draggableState, MutableInteractionSource mutableInteractionSource, float f, boolean z6, State state, State state2, MutableState mutableState, boolean z10) {
        super(1);
        this.$draggableState$inlined = draggableState;
        this.$interactionSource$inlined = mutableInteractionSource;
        this.$maxPx$inlined = f;
        this.$isRtl$inlined = z6;
        this.$rawOffset$inlined = state;
        this.$gestureEndAction$inlined = state2;
        this.$pressOffset$inlined = mutableState;
        this.$enabled$inlined = z10;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("sliderTapModifier");
        inspectorInfo.a().c("draggableState", this.$draggableState$inlined);
        inspectorInfo.a().c("interactionSource", this.$interactionSource$inlined);
        inspectorInfo.a().c("maxPx", Float.valueOf(this.$maxPx$inlined));
        inspectorInfo.a().c("isRtl", Boolean.valueOf(this.$isRtl$inlined));
        inspectorInfo.a().c("rawOffset", this.$rawOffset$inlined);
        inspectorInfo.a().c("gestureEndAction", this.$gestureEndAction$inlined);
        inspectorInfo.a().c("pressOffset", this.$pressOffset$inlined);
        inspectorInfo.a().c(ConfigApiRequestHelper.ENABLED, Boolean.valueOf(this.$enabled$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
