package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import e8.l;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public final class SemanticsNode {
    public static final int $stable = 8;

    @Nullable
    private SemanticsNode fakeNodeParent;
    private final int id;
    private boolean isFake;

    @NotNull
    private final LayoutNode layoutNode;
    private final boolean mergingEnabled;

    @NotNull
    private final SemanticsEntity outerSemanticsEntity;

    @NotNull
    private final SemanticsConfiguration unmergedConfig;

    private final List<SemanticsNode> c(List<SemanticsNode> list, boolean z6) {
        List listX = x(this, z6, false, 2, null);
        int size = listX.size();
        for (int i10 = 0; i10 < size; i10++) {
            SemanticsNode semanticsNode = (SemanticsNode) listX.get(i10);
            if (semanticsNode.u()) {
                list.add(semanticsNode);
            } else if (!semanticsNode.unmergedConfig.m()) {
                d(semanticsNode, list, false, 2, null);
            }
        }
        return list;
    }

    public final int i() {
        return this.id;
    }

    @NotNull
    public final LayoutInfo j() {
        return this.layoutNode;
    }

    @NotNull
    public final LayoutNode k() {
        return this.layoutNode;
    }

    @NotNull
    public final SemanticsEntity l() {
        return this.outerSemanticsEntity;
    }

    @NotNull
    public final List<SemanticsNode> o() {
        return g(false, false, true);
    }

    @NotNull
    public final List<SemanticsNode> p() {
        return g(true, false, true);
    }

    @NotNull
    public final SemanticsConfiguration s() {
        return this.unmergedConfig;
    }

    public final boolean t() {
        return this.isFake;
    }

    public SemanticsNode(@NotNull SemanticsEntity outerSemanticsEntity, boolean z6) {
        t.j(outerSemanticsEntity, "outerSemanticsEntity");
        this.outerSemanticsEntity = outerSemanticsEntity;
        this.mergingEnabled = z6;
        this.unmergedConfig = outerSemanticsEntity.j();
        this.id = outerSemanticsEntity.c().getId();
        this.layoutNode = outerSemanticsEntity.a();
    }

    private final SemanticsNode b(Role role, l<? super SemanticsPropertyReceiver, l0> lVar) {
        SemanticsNode semanticsNode = new SemanticsNode(new SemanticsEntity(new LayoutNode(true).c0(), new SemanticsModifierCore(role != null ? SemanticsNodeKt.l(this) : SemanticsNodeKt.e(this), false, false, lVar)), false);
        semanticsNode.isFake = true;
        semanticsNode.fakeNodeParent = this;
        return semanticsNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ List d(SemanticsNode semanticsNode, List list, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = new ArrayList();
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return semanticsNode.c(list, z6);
    }

    private final List<SemanticsNode> g(boolean z6, boolean z10, boolean z11) {
        if (z10 || !this.unmergedConfig.m()) {
            return u() ? d(this, null, z6, 1, null) : w(z6, z11);
        }
        return v.m();
    }

    private final boolean u() {
        return this.mergingEnabled && this.unmergedConfig.p();
    }

    private final void v(SemanticsConfiguration semanticsConfiguration) {
        if (this.unmergedConfig.m()) {
            return;
        }
        List listX = x(this, false, false, 3, null);
        int size = listX.size();
        for (int i10 = 0; i10 < size; i10++) {
            SemanticsNode semanticsNode = (SemanticsNode) listX.get(i10);
            if (!semanticsNode.u()) {
                semanticsConfiguration.q(semanticsNode.unmergedConfig);
                semanticsNode.v(semanticsConfiguration);
            }
        }
    }

    public static /* synthetic */ List x(SemanticsNode semanticsNode, boolean z6, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return semanticsNode.w(z6, z10);
    }

    @NotNull
    public final LayoutNodeWrapper e() {
        if (!this.unmergedConfig.p()) {
            return this.outerSemanticsEntity.b();
        }
        SemanticsEntity semanticsEntityI = SemanticsNodeKt.i(this.layoutNode);
        if (semanticsEntityI == null) {
            semanticsEntityI = this.outerSemanticsEntity;
        }
        return semanticsEntityI.b();
    }

    @NotNull
    public final Rect f() {
        return !this.layoutNode.K0() ? Rect.Companion.a() : LayoutCoordinatesKt.b(e());
    }

    @Nullable
    public final SemanticsNode m() {
        SemanticsNode semanticsNode = this.fakeNodeParent;
        if (semanticsNode != null) {
            return semanticsNode;
        }
        LayoutNode layoutNodeF = this.mergingEnabled ? SemanticsNodeKt.f(this.layoutNode, SemanticsNode$parent$1.INSTANCE) : null;
        if (layoutNodeF == null) {
            layoutNodeF = SemanticsNodeKt.f(this.layoutNode, SemanticsNode$parent$2.INSTANCE);
        }
        SemanticsEntity semanticsEntityJ = layoutNodeF != null ? SemanticsNodeKt.j(layoutNodeF) : null;
        if (semanticsEntityJ == null) {
            return null;
        }
        return new SemanticsNode(semanticsEntityJ, this.mergingEnabled);
    }

    public final long n() {
        return !this.layoutNode.K0() ? Offset.Companion.c() : LayoutCoordinatesKt.e(e());
    }

    @NotNull
    public final Rect r() {
        SemanticsEntity semanticsEntityI;
        if (!this.unmergedConfig.p() || (semanticsEntityI = SemanticsNodeKt.i(this.layoutNode)) == null) {
            semanticsEntityI = this.outerSemanticsEntity;
        }
        return semanticsEntityI.l();
    }

    @NotNull
    public final List<SemanticsNode> w(boolean z6, boolean z10) {
        if (this.isFake) {
            return v.m();
        }
        ArrayList arrayList = new ArrayList();
        List listC = z6 ? SemanticsSortKt.c(this.layoutNode, null, 1, null) : SemanticsNodeKt.h(this.layoutNode, null, 1, null);
        int size = listC.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new SemanticsNode((SemanticsEntity) listC.get(i10), this.mergingEnabled));
        }
        if (z10) {
            a(arrayList);
        }
        return arrayList;
    }

    private final void a(List<SemanticsNode> list) {
        String str;
        Role roleK = SemanticsNodeKt.k(this);
        if (roleK != null && this.unmergedConfig.p() && (!list.isEmpty())) {
            list.add(b(roleK, new SemanticsNode$emitFakeNodes$fakeNode$1(roleK)));
        }
        SemanticsConfiguration semanticsConfiguration = this.unmergedConfig;
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (semanticsConfiguration.c(semanticsProperties.c()) && (!list.isEmpty()) && this.unmergedConfig.p()) {
            List list2 = (List) SemanticsConfigurationKt.a(this.unmergedConfig, semanticsProperties.c());
            if (list2 != null) {
                str = (String) d0.l0(list2);
            } else {
                str = null;
            }
            if (str != null) {
                list.add(0, b(null, new SemanticsNode$emitFakeNodes$fakeNode$2(str)));
            }
        }
    }

    @NotNull
    public final SemanticsConfiguration h() {
        if (u()) {
            SemanticsConfiguration semanticsConfigurationE = this.unmergedConfig.e();
            v(semanticsConfigurationE);
            return semanticsConfigurationE;
        }
        return this.unmergedConfig;
    }

    public final long q() {
        return e().a();
    }
}
