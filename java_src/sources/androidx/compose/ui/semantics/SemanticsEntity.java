package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.EntityList;
import androidx.compose.ui.node.LayoutNodeEntity;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.Owner;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class SemanticsEntity extends LayoutNodeEntity<SemanticsEntity, SemanticsModifier> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SemanticsEntity(@NotNull LayoutNodeWrapper wrapped, @NotNull SemanticsModifier modifier) {
        super(wrapped, modifier);
        t.j(wrapped, "wrapped");
        t.j(modifier, "modifier");
    }

    @NotNull
    public String toString() {
        return super.toString() + " id: " + c().getId() + " config: " + c().Q0();
    }

    private final boolean k() {
        if (SemanticsConfigurationKt.a(c().Q0(), SemanticsActions.INSTANCE.h()) != null) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void g() {
        super.g();
        Owner ownerS0 = a().s0();
        if (ownerS0 != null) {
            ownerS0.o();
        }
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void h() {
        super.h();
        Owner ownerS0 = a().s0();
        if (ownerS0 != null) {
            ownerS0.o();
        }
    }

    @NotNull
    public final SemanticsConfiguration j() {
        SemanticsEntity semanticsEntityD = d();
        SemanticsEntity semanticsEntity = null;
        if (semanticsEntityD == null) {
            LayoutNodeWrapper layoutNodeWrapperF1 = b().F1();
            if (layoutNodeWrapperF1 != null) {
                while (layoutNodeWrapperF1 != null && !EntityList.n(layoutNodeWrapperF1.s1(), EntityList.Companion.f())) {
                    layoutNodeWrapperF1 = layoutNodeWrapperF1.F1();
                }
                if (layoutNodeWrapperF1 != null && (semanticsEntityD = (SemanticsEntity) EntityList.p(layoutNodeWrapperF1.s1(), EntityList.Companion.f())) != null) {
                    LayoutNodeWrapper layoutNodeWrapperB = semanticsEntityD.b();
                    while (layoutNodeWrapperB != null) {
                        if (semanticsEntityD != null) {
                            semanticsEntity = semanticsEntityD;
                            break;
                        }
                        layoutNodeWrapperB = layoutNodeWrapperB.F1();
                        if (layoutNodeWrapperB != null) {
                            semanticsEntityD = (SemanticsEntity) EntityList.p(layoutNodeWrapperB.s1(), EntityList.Companion.f());
                        } else {
                            semanticsEntityD = null;
                        }
                    }
                }
            }
        } else {
            LayoutNodeWrapper layoutNodeWrapperB2 = semanticsEntityD.b();
            while (layoutNodeWrapperB2 != null) {
                if (semanticsEntityD != null) {
                    semanticsEntity = semanticsEntityD;
                    break;
                }
                layoutNodeWrapperB2 = layoutNodeWrapperB2.F1();
                if (layoutNodeWrapperB2 != null) {
                    semanticsEntityD = (SemanticsEntity) EntityList.p(layoutNodeWrapperB2.s1(), EntityList.Companion.f());
                } else {
                    semanticsEntityD = null;
                }
            }
        }
        if (semanticsEntity != null && !c().Q0().m()) {
            SemanticsConfiguration semanticsConfigurationE = c().Q0().e();
            semanticsConfigurationE.b(semanticsEntity.j());
            return semanticsConfigurationE;
        }
        return c().Q0();
    }

    @NotNull
    public final Rect l() {
        if (!f()) {
            return Rect.Companion.a();
        }
        if (!k()) {
            return LayoutCoordinatesKt.b(b());
        }
        return b().h2();
    }
}
