package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import e8.r;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
@StabilityInferred
public final class VectorPainter extends Painter {
    public static final int $stable = 8;

    @Nullable
    private Composition composition;
    private float currentAlpha;

    @Nullable
    private ColorFilter currentColorFilter;

    @NotNull
    private final MutableState isDirty$delegate;

    @NotNull
    private final VectorComponent vector;

    @NotNull
    private final MutableState size$delegate = SnapshotStateKt__SnapshotStateKt.e(Size.c(Size.Companion.b()), null, 2, null);

    @NotNull
    private final MutableState autoMirror$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean a(float f) {
        this.currentAlpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean e(@Nullable ColorFilter colorFilter) {
        this.currentColorFilter = colorFilter;
        return true;
    }

    @ComposableInferredTarget
    private final Composition q(CompositionContext compositionContext, r<? super Float, ? super Float, ? super Composer, ? super Integer, l0> rVar) {
        Composition compositionA = this.composition;
        if (compositionA == null || compositionA.u()) {
            compositionA = CompositionKt.a(new VectorApplier(this.vector.j()), compositionContext);
        }
        this.composition = compositionA;
        compositionA.v(ComposableLambdaKt.c(-1916507005, true, new VectorPainter$composeVector$1(rVar, this)));
        return compositionA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean t() {
        return ((Boolean) this.isDirty$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(boolean z6) {
        this.isDirty$delegate.setValue(Boolean.valueOf(z6));
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void m(@NotNull DrawScope drawScope) {
        t.j(drawScope, "<this>");
        VectorComponent vectorComponent = this.vector;
        ColorFilter colorFilterH = this.currentColorFilter;
        if (colorFilterH == null) {
            colorFilterH = vectorComponent.h();
        }
        if (r() && drawScope.getLayoutDirection() == LayoutDirection.Rtl) {
            long jW = drawScope.W();
            DrawContext drawContextT = drawScope.T();
            long jC = drawContextT.c();
            drawContextT.a().r();
            drawContextT.d().d(-1.0f, 1.0f, jW);
            vectorComponent.g(drawScope, this.currentAlpha, colorFilterH);
            drawContextT.a().n();
            drawContextT.b(jC);
        } else {
            vectorComponent.g(drawScope, this.currentAlpha, colorFilterH);
        }
        if (t()) {
            v(false);
        }
    }

    @Composable
    @ComposableInferredTarget
    public final void n(@NotNull String name, float f, float f6, @NotNull r<? super Float, ? super Float, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        t.j(name, "name");
        t.j(content, "content");
        Composer composerS = composer.s(1264894527);
        VectorComponent vectorComponent = this.vector;
        vectorComponent.o(name);
        vectorComponent.q(f);
        vectorComponent.p(f6);
        Composition compositionQ = q(ComposablesKt.d(composerS, 0), content);
        EffectsKt.a(compositionQ, new VectorPainter$RenderVector$2(compositionQ), composerS, 8);
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new VectorPainter$RenderVector$3(this, name, f, f6, content, i10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean r() {
        return ((Boolean) this.autoMirror$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long s() {
        return ((Size) this.size$delegate.getValue()).m();
    }

    public final void u(boolean z6) {
        this.autoMirror$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void w(@Nullable ColorFilter colorFilter) {
        this.vector.m(colorFilter);
    }

    public final void x(long j6) {
        this.size$delegate.setValue(Size.c(j6));
    }

    public VectorPainter() {
        VectorComponent vectorComponent = new VectorComponent();
        vectorComponent.n(new VectorPainter$vector$1$1(this));
        this.vector = vectorComponent;
        this.isDirty$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);
        this.currentAlpha = 1.0f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public long k() {
        return s();
    }
}
