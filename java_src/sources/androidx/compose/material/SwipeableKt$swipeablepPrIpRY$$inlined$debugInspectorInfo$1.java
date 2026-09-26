package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import com.narvii.modulization.ConfigApiRequestHelper;
import e8.l;
import e8.p;
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.material.SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
public final class SwipeableKt$swipeablepPrIpRY$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ Map $anchors$inlined;
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ MutableInteractionSource $interactionSource$inlined;
    final /* synthetic */ Orientation $orientation$inlined;
    final /* synthetic */ ResistanceConfig $resistance$inlined;
    final /* synthetic */ boolean $reverseDirection$inlined;
    final /* synthetic */ SwipeableState $state$inlined;
    final /* synthetic */ p $thresholds$inlined;
    final /* synthetic */ float $velocityThreshold$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeableKt$swipeablepPrIpRY$$inlined$debugInspectorInfo$1(SwipeableState swipeableState, Map map, Orientation orientation, boolean z6, boolean z10, MutableInteractionSource mutableInteractionSource, p pVar, ResistanceConfig resistanceConfig, float f) {
        super(1);
        this.$state$inlined = swipeableState;
        this.$anchors$inlined = map;
        this.$orientation$inlined = orientation;
        this.$enabled$inlined = z6;
        this.$reverseDirection$inlined = z10;
        this.$interactionSource$inlined = mutableInteractionSource;
        this.$thresholds$inlined = pVar;
        this.$resistance$inlined = resistanceConfig;
        this.$velocityThreshold$inlined = f;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("swipeable");
        inspectorInfo.a().c("state", this.$state$inlined);
        inspectorInfo.a().c("anchors", this.$anchors$inlined);
        inspectorInfo.a().c("orientation", this.$orientation$inlined);
        inspectorInfo.a().c(ConfigApiRequestHelper.ENABLED, Boolean.valueOf(this.$enabled$inlined));
        inspectorInfo.a().c("reverseDirection", Boolean.valueOf(this.$reverseDirection$inlined));
        inspectorInfo.a().c("interactionSource", this.$interactionSource$inlined);
        inspectorInfo.a().c("thresholds", this.$thresholds$inlined);
        inspectorInfo.a().c("resistance", this.$resistance$inlined);
        inspectorInfo.a().c("velocityThreshold", Dp.c(this.$velocityThreshold$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
