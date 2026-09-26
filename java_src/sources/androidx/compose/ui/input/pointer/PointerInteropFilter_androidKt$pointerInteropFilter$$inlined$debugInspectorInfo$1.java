package androidx.compose.ui.input.pointer;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class PointerInteropFilter_androidKt$pointerInteropFilter$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ l $onTouchEvent$inlined;
    final /* synthetic */ RequestDisallowInterceptTouchEvent $requestDisallowInterceptTouchEvent$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointerInteropFilter_androidKt$pointerInteropFilter$$inlined$debugInspectorInfo$1(RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent, l lVar) {
        super(1);
        this.$requestDisallowInterceptTouchEvent$inlined = requestDisallowInterceptTouchEvent;
        this.$onTouchEvent$inlined = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("pointerInteropFilter");
        inspectorInfo.a().c("requestDisallowInterceptTouchEvent", this.$requestDisallowInterceptTouchEvent$inlined);
        inspectorInfo.a().c("onTouchEvent", this.$onTouchEvent$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
