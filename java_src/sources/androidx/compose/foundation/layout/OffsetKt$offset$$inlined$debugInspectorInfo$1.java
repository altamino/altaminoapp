package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class OffsetKt$offset$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ e8.l $offset$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OffsetKt$offset$$inlined$debugInspectorInfo$1(e8.l lVar) {
        super(1);
        this.$offset$inlined = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b(TypedValues.CycleType.S_WAVE_OFFSET);
        inspectorInfo.a().c(TypedValues.CycleType.S_WAVE_OFFSET, this.$offset$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
