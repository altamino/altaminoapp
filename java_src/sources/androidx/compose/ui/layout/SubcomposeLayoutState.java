package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class SubcomposeLayoutState {
    public static final int $stable = 8;

    @Nullable
    private LayoutNodeSubcompositionsState _state;

    @NotNull
    private final p<LayoutNode, CompositionContext, l0> setCompositionContext;

    @NotNull
    private final p<LayoutNode, p<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, l0> setMeasurePolicy;

    @NotNull
    private final p<LayoutNode, SubcomposeLayoutState, l0> setRoot;

    @NotNull
    private final SubcomposeSlotReusePolicy slotReusePolicy;

    public interface PrecomposedSlotHandle {
        int a();

        void b(int i10, long j6);

        void t();
    }

    public SubcomposeLayoutState(@NotNull SubcomposeSlotReusePolicy slotReusePolicy) {
        t.j(slotReusePolicy, "slotReusePolicy");
        this.slotReusePolicy = slotReusePolicy;
        this.setRoot = new SubcomposeLayoutState$setRoot$1(this);
        this.setCompositionContext = new SubcomposeLayoutState$setCompositionContext$1(this);
        this.setMeasurePolicy = new SubcomposeLayoutState$setMeasurePolicy$1(this);
    }

    @NotNull
    public final p<LayoutNode, CompositionContext, l0> f() {
        return this.setCompositionContext;
    }

    @NotNull
    public final p<LayoutNode, p<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, l0> g() {
        return this.setMeasurePolicy;
    }

    @NotNull
    public final p<LayoutNode, SubcomposeLayoutState, l0> h() {
        return this.setRoot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutNodeSubcompositionsState i() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this._state;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        throw new IllegalArgumentException("SubcomposeLayoutState is not attached to SubcomposeLayout".toString());
    }

    @NotNull
    public final PrecomposedSlotHandle j(@Nullable Object obj, @NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(content, "content");
        return i().t(obj, content);
    }

    public final void d() {
        i().m();
    }

    public final void e() {
        i().o();
    }

    public SubcomposeLayoutState() {
        this(NoOpSubcomposeSlotReusePolicy.INSTANCE);
    }

    public SubcomposeLayoutState(int i10) {
        this(SubcomposeLayoutKt.c(i10));
    }
}
