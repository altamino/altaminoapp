package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class NestedScrollModifierKt$nestedScroll$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ NestedScrollConnection $connection$inlined;
    final /* synthetic */ NestedScrollDispatcher $dispatcher$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollModifierKt$nestedScroll$$inlined$debugInspectorInfo$1(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        super(1);
        this.$connection$inlined = nestedScrollConnection;
        this.$dispatcher$inlined = nestedScrollDispatcher;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("nestedScroll");
        inspectorInfo.a().c("connection", this.$connection$inlined);
        inspectorInfo.a().c("dispatcher", this.$dispatcher$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
