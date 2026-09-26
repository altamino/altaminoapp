package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class LayoutKt$MultiMeasureLayout$1$1 extends v implements l<LayoutNode, l0> {
    public static final LayoutKt$MultiMeasureLayout$1$1 INSTANCE = new LayoutKt$MultiMeasureLayout$1$1();

    LayoutKt$MultiMeasureLayout$1$1() {
        super(1);
    }

    public final void a(@NotNull LayoutNode init) {
        t.j(init, "$this$init");
        init.n1(true);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNode layoutNode) {
        a(layoutNode);
        return l0.INSTANCE;
    }
}
