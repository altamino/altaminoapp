package androidx.compose.foundation.relocation;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class BringIntoViewRequesterKt$bringIntoViewRequester$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ BringIntoViewRequester $bringIntoViewRequester$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewRequesterKt$bringIntoViewRequester$$inlined$debugInspectorInfo$1(BringIntoViewRequester bringIntoViewRequester) {
        super(1);
        this.$bringIntoViewRequester$inlined = bringIntoViewRequester;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("bringIntoViewRequester");
        inspectorInfo.a().c("bringIntoViewRequester", this.$bringIntoViewRequester$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
