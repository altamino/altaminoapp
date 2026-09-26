package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.platform.InspectorInfo;
import com.narvii.modulization.ConfigApiRequestHelper;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class DraggableKt$draggable$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ l $canDrag$inlined;
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ MutableInteractionSource $interactionSource$inlined;
    final /* synthetic */ q $onDragStarted$inlined;
    final /* synthetic */ q $onDragStopped$inlined;
    final /* synthetic */ Orientation $orientation$inlined;
    final /* synthetic */ boolean $reverseDirection$inlined;
    final /* synthetic */ e8.a $startDragImmediately$inlined;
    final /* synthetic */ p $stateFactory$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableKt$draggable$$inlined$debugInspectorInfo$1(l lVar, Orientation orientation, boolean z6, boolean z10, MutableInteractionSource mutableInteractionSource, e8.a aVar, q qVar, q qVar2, p pVar) {
        super(1);
        this.$canDrag$inlined = lVar;
        this.$orientation$inlined = orientation;
        this.$enabled$inlined = z6;
        this.$reverseDirection$inlined = z10;
        this.$interactionSource$inlined = mutableInteractionSource;
        this.$startDragImmediately$inlined = aVar;
        this.$onDragStarted$inlined = qVar;
        this.$onDragStopped$inlined = qVar2;
        this.$stateFactory$inlined = pVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("draggable");
        inspectorInfo.a().c("canDrag", this.$canDrag$inlined);
        inspectorInfo.a().c("orientation", this.$orientation$inlined);
        inspectorInfo.a().c(ConfigApiRequestHelper.ENABLED, Boolean.valueOf(this.$enabled$inlined));
        inspectorInfo.a().c("reverseDirection", Boolean.valueOf(this.$reverseDirection$inlined));
        inspectorInfo.a().c("interactionSource", this.$interactionSource$inlined);
        inspectorInfo.a().c("startDragImmediately", this.$startDragImmediately$inlined);
        inspectorInfo.a().c("onDragStarted", this.$onDragStarted$inlined);
        inspectorInfo.a().c("onDragStopped", this.$onDragStopped$inlined);
        inspectorInfo.a().c("stateFactory", this.$stateFactory$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
