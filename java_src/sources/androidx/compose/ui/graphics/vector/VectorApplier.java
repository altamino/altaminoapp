package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.AbstractApplier;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class VectorApplier extends AbstractApplier<VNode> {
    public static final int $stable = 0;

    @Override // androidx.compose.runtime.Applier
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void g(int i10, @NotNull VNode instance) {
        t.j(instance, "instance");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorApplier(@NotNull VNode root) {
        super(root);
        t.j(root, "root");
    }

    private final GroupComponent m(VNode vNode) {
        if (vNode instanceof GroupComponent) {
            return (GroupComponent) vNode;
        }
        throw new IllegalStateException("Cannot only insert VNode into Group".toString());
    }

    @Override // androidx.compose.runtime.Applier
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void f(int i10, @NotNull VNode instance) {
        t.j(instance, "instance");
        m(a()).h(i10, instance);
    }

    @Override // androidx.compose.runtime.Applier
    public void b(int i10, int i11) {
        m(a()).j(i10, i11);
    }

    @Override // androidx.compose.runtime.Applier
    public void e(int i10, int i11, int i12) {
        m(a()).i(i10, i11, i12);
    }

    @Override // androidx.compose.runtime.AbstractApplier
    protected void k() {
        GroupComponent groupComponentM = m(j());
        groupComponentM.j(0, groupComponentM.f());
    }
}
