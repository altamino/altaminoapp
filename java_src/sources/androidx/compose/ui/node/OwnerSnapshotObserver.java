package androidx.compose.ui.node;

import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class OwnerSnapshotObserver {

    @NotNull
    private final SnapshotStateObserver observer;

    @NotNull
    private final l<LayoutNode, l0> onCommitAffectingLayout;

    @NotNull
    private final l<LayoutNode, l0> onCommitAffectingLayoutModifier;

    @NotNull
    private final l<LayoutNode, l0> onCommitAffectingMeasure;

    public OwnerSnapshotObserver(@NotNull l<? super e8.a<l0>, l0> onChangedExecutor) {
        t.j(onChangedExecutor, "onChangedExecutor");
        this.observer = new SnapshotStateObserver(onChangedExecutor);
        this.onCommitAffectingMeasure = OwnerSnapshotObserver$onCommitAffectingMeasure$1.INSTANCE;
        this.onCommitAffectingLayout = OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE;
        this.onCommitAffectingLayoutModifier = OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1.INSTANCE;
    }

    public final void a() {
        this.observer.i(OwnerSnapshotObserver$clearInvalidObservations$1.INSTANCE);
    }

    public final void b(@NotNull LayoutNode node, @NotNull e8.a<l0> block) {
        t.j(node, "node");
        t.j(block, "block");
        e(node, this.onCommitAffectingLayoutModifier, block);
    }

    public final void c(@NotNull LayoutNode node, @NotNull e8.a<l0> block) {
        t.j(node, "node");
        t.j(block, "block");
        e(node, this.onCommitAffectingLayout, block);
    }

    public final void d(@NotNull LayoutNode node, @NotNull e8.a<l0> block) {
        t.j(node, "node");
        t.j(block, "block");
        e(node, this.onCommitAffectingMeasure, block);
    }

    public final <T extends OwnerScope> void e(@NotNull T target, @NotNull l<? super T, l0> onChanged, @NotNull e8.a<l0> block) {
        t.j(target, "target");
        t.j(onChanged, "onChanged");
        t.j(block, "block");
        this.observer.k(target, onChanged, block);
    }

    public final void f() {
        this.observer.l();
    }

    public final void g() {
        this.observer.m();
        this.observer.g();
    }
}
