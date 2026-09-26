package androidx.compose.ui.node;

import androidx.compose.runtime.AbstractApplier;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class UiApplier extends AbstractApplier<LayoutNode> {
    @Override // androidx.compose.runtime.Applier
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void f(int i10, @NotNull LayoutNode instance) {
        t.j(instance, "instance");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UiApplier(@NotNull LayoutNode root) {
        super(root);
        t.j(root, "root");
    }

    @Override // androidx.compose.runtime.Applier
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public void g(int i10, @NotNull LayoutNode instance) {
        t.j(instance, "instance");
        a().G0(i10, instance);
    }

    @Override // androidx.compose.runtime.Applier
    public void b(int i10, int i11) {
        a().e1(i10, i11);
    }

    @Override // androidx.compose.runtime.AbstractApplier, androidx.compose.runtime.Applier
    public void c() {
        super.c();
        Owner ownerS0 = j().s0();
        if (ownerS0 != null) {
            ownerS0.g();
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void e(int i10, int i11, int i12) {
        a().R0(i10, i11, i12);
    }

    @Override // androidx.compose.runtime.AbstractApplier
    protected void k() {
        j().d1();
    }
}
