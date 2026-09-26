package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.a;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class NodeLocationHolder implements Comparable<NodeLocationHolder> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static ComparisonStrategy comparisonStrategy = ComparisonStrategy.Stripe;

    @NotNull
    private final LayoutDirection layoutDirection;

    @Nullable
    private final Rect location;

    @NotNull
    private final LayoutNode node;

    @NotNull
    private final LayoutNode subtreeRoot;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final void a(@NotNull ComparisonStrategy comparisonStrategy) {
            t.j(comparisonStrategy, "<set-?>");
            NodeLocationHolder.comparisonStrategy = comparisonStrategy;
        }
    }

    public enum ComparisonStrategy {
        Stripe,
        Location
    }

    @NotNull
    public final LayoutNode c() {
        return this.node;
    }

    public NodeLocationHolder(@NotNull LayoutNode subtreeRoot, @NotNull LayoutNode node) {
        t.j(subtreeRoot, "subtreeRoot");
        t.j(node, "node");
        this.subtreeRoot = subtreeRoot;
        this.node = node;
        this.layoutDirection = subtreeRoot.getLayoutDirection();
        LayoutNodeWrapper layoutNodeWrapperC0 = subtreeRoot.c0();
        LayoutNodeWrapper layoutNodeWrapperE = SemanticsSortKt.e(node);
        Rect rectA = null;
        if (layoutNodeWrapperC0.Q() && layoutNodeWrapperE.Q()) {
            rectA = a.a(layoutNodeWrapperC0, layoutNodeWrapperE, false, 2, null);
        }
        this.location = rectA;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NotNull NodeLocationHolder other) {
        t.j(other, "other");
        Rect rect = this.location;
        if (rect == null) {
            return 1;
        }
        if (other.location == null) {
            return -1;
        }
        if (comparisonStrategy == ComparisonStrategy.Stripe) {
            if (rect.e() - other.location.m() <= 0.0f) {
                return -1;
            }
            if (this.location.m() - other.location.e() >= 0.0f) {
                return 1;
            }
        }
        if (this.layoutDirection == LayoutDirection.Ltr) {
            float fJ = this.location.j() - other.location.j();
            if (fJ != 0.0f) {
                return fJ < 0.0f ? -1 : 1;
            }
        } else {
            float fK = this.location.k() - other.location.k();
            if (fK != 0.0f) {
                return fK < 0.0f ? 1 : -1;
            }
        }
        float fM = this.location.m() - other.location.m();
        if (fM != 0.0f) {
            return fM < 0.0f ? -1 : 1;
        }
        float fI = this.location.i() - other.location.i();
        if (fI != 0.0f) {
            return fI < 0.0f ? 1 : -1;
        }
        float fP = this.location.p() - other.location.p();
        if (fP != 0.0f) {
            return fP < 0.0f ? 1 : -1;
        }
        Rect rectB = LayoutCoordinatesKt.b(SemanticsSortKt.e(this.node));
        Rect rectB2 = LayoutCoordinatesKt.b(SemanticsSortKt.e(other.node));
        LayoutNode layoutNodeA = SemanticsSortKt.a(this.node, new NodeLocationHolder$compareTo$child1$1(rectB));
        LayoutNode layoutNodeA2 = SemanticsSortKt.a(other.node, new NodeLocationHolder$compareTo$child2$1(rectB2));
        if (layoutNodeA == null || layoutNodeA2 == null) {
            return layoutNodeA != null ? 1 : -1;
        }
        return new NodeLocationHolder(this.subtreeRoot, layoutNodeA).compareTo(new NodeLocationHolder(other.subtreeRoot, layoutNodeA2));
    }
}
