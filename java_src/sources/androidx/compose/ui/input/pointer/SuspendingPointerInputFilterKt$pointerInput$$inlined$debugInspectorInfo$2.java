package androidx.compose.ui.input.pointer;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class SuspendingPointerInputFilterKt$pointerInput$$inlined$debugInspectorInfo$2 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ p $block$inlined;
    final /* synthetic */ Object $key1$inlined;
    final /* synthetic */ Object $key2$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuspendingPointerInputFilterKt$pointerInput$$inlined$debugInspectorInfo$2(Object obj, Object obj2, p pVar) {
        super(1);
        this.$key1$inlined = obj;
        this.$key2$inlined = obj2;
        this.$block$inlined = pVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("pointerInput");
        inspectorInfo.a().c("key1", this.$key1$inlined);
        inspectorInfo.a().c("key2", this.$key2$inlined);
        inspectorInfo.a().c("block", this.$block$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
