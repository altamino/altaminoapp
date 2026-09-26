package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.layout.RemeasurementModifier;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.a0;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNode$modifier$outerWrapper$1 extends v implements p<Modifier.Element, LayoutNodeWrapper, LayoutNodeWrapper> {
    final /* synthetic */ LayoutNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutNode$modifier$outerWrapper$1(LayoutNode layoutNode) {
        super(2);
        this.this$0 = layoutNode;
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final LayoutNodeWrapper invoke(@NotNull Modifier.Element mod, @NotNull LayoutNodeWrapper toWrap) {
        t.j(mod, "mod");
        t.j(toWrap, "toWrap");
        if (mod instanceof RemeasurementModifier) {
            ((RemeasurementModifier) mod).q0(this.this$0);
        }
        EntityList.i(toWrap.s1(), toWrap, mod);
        if (mod instanceof OnGloballyPositionedModifier) {
            this.this$0.q0().b(a0.a(toWrap, mod));
        }
        if (mod instanceof LayoutModifier) {
            LayoutModifier layoutModifier = (LayoutModifier) mod;
            ModifiedLayoutNode modifiedLayoutNodeM1 = this.this$0.m1(toWrap, layoutModifier);
            if (modifiedLayoutNodeM1 == null) {
                modifiedLayoutNodeM1 = new ModifiedLayoutNode(toWrap, layoutModifier);
            }
            toWrap = modifiedLayoutNodeM1;
            toWrap.S1();
        }
        EntityList.h(toWrap.s1(), toWrap, mod);
        return toWrap;
    }
}
