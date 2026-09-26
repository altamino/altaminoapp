package androidx.compose.ui.node;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1 extends v implements l<LayoutNodeWrapper, l0> {
    public static final LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1 INSTANCE = new LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1();

    LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1() {
        super(1);
    }

    public final void a(@NotNull LayoutNodeWrapper wrapper) {
        t.j(wrapper, "wrapper");
        if (wrapper.isValid()) {
            wrapper.i2();
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNodeWrapper layoutNodeWrapper) {
        a(layoutNodeWrapper);
        return l0.INSTANCE;
    }
}
