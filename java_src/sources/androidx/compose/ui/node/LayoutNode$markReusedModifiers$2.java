package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNode$markReusedModifiers$2 extends v implements p<l0, Modifier.Element, l0> {
    final /* synthetic */ LayoutNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutNode$markReusedModifiers$2(LayoutNode layoutNode) {
        super(2);
        this.this$0 = layoutNode;
    }

    public final void a(@NotNull l0 l0Var, @NotNull Modifier.Element mod) {
        Object obj;
        t.j(l0Var, "<anonymous parameter 0>");
        t.j(mod, "mod");
        MutableVector mutableVector = this.this$0.wrapperCache;
        int iN = mutableVector.n();
        if (iN <= 0) {
            obj = null;
            break;
        }
        int i10 = iN - 1;
        Object[] objArrM = mutableVector.m();
        while (true) {
            obj = objArrM[i10];
            ModifiedLayoutNode modifiedLayoutNode = (ModifiedLayoutNode) obj;
            if (modifiedLayoutNode.k2() == mod && !modifiedLayoutNode.l2()) {
                break;
            }
            i10--;
            if (i10 < 0) {
                obj = null;
                break;
            }
        }
        ModifiedLayoutNode modifiedLayoutNode2 = (ModifiedLayoutNode) obj;
        if (modifiedLayoutNode2 == null) {
            return;
        }
        modifiedLayoutNode2.o2(true);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(l0 l0Var, Modifier.Element element) {
        a(l0Var, element);
        return l0.INSTANCE;
    }
}
