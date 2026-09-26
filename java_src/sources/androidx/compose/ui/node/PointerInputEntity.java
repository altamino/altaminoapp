package androidx.compose.ui.node;

import androidx.compose.ui.input.pointer.PointerInputModifier;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class PointerInputEntity extends LayoutNodeEntity<PointerInputEntity, PointerInputModifier> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointerInputEntity(@NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull PointerInputModifier modifier) {
        super(layoutNodeWrapper, modifier);
        t.j(layoutNodeWrapper, "layoutNodeWrapper");
        t.j(modifier, "modifier");
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void g() {
        super.g();
        c().B0().f0(b());
        c().B0().e0(true);
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void h() {
        super.h();
        c().B0().e0(false);
    }

    public final boolean j() {
        PointerInputEntity pointerInputEntityD;
        if (!c().B0().x() && ((pointerInputEntityD = d()) == null || !pointerInputEntityD.j())) {
            return false;
        }
        return true;
    }
}
