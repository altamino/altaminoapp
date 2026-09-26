package androidx.compose.ui.node;

import androidx.compose.ui.draw.BuildDrawCacheParams;
import androidx.compose.ui.draw.DrawCacheModifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class DrawEntity extends LayoutNodeEntity<DrawEntity, DrawModifier> implements OwnerScope {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final l<DrawEntity, l0> onCommitAffectingDrawEntity = DrawEntity$Companion$onCommitAffectingDrawEntity$1.INSTANCE;

    @NotNull
    private final BuildDrawCacheParams buildCacheParams;

    @Nullable
    private DrawCacheModifier cacheDrawModifier;
    private boolean invalidateCache;

    @NotNull
    private final e8.a<l0> updateCache;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void n() {
        this.invalidateCache = true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawEntity(@NotNull final LayoutNodeWrapper layoutNodeWrapper, @NotNull DrawModifier modifier) {
        super(layoutNodeWrapper, modifier);
        t.j(layoutNodeWrapper, "layoutNodeWrapper");
        t.j(modifier, "modifier");
        this.cacheDrawModifier = o();
        this.buildCacheParams = new BuildDrawCacheParams() { // from class: androidx.compose.ui.node.DrawEntity$buildCacheParams$1

            @NotNull
            private final Density density;

            @Override // androidx.compose.ui.draw.BuildDrawCacheParams
            @NotNull
            public Density getDensity() {
                return this.density;
            }

            {
                this.density = this.this$0.a().T();
            }

            @Override // androidx.compose.ui.draw.BuildDrawCacheParams
            public long c() {
                return IntSizeKt.b(layoutNodeWrapper.a());
            }

            @Override // androidx.compose.ui.draw.BuildDrawCacheParams
            @NotNull
            public LayoutDirection getLayoutDirection() {
                return this.this$0.a().getLayoutDirection();
            }
        };
        this.invalidateCache = true;
        this.updateCache = new DrawEntity$updateCache$1(this);
    }

    public final void m(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        long jB = IntSizeKt.b(e());
        if (this.cacheDrawModifier != null && this.invalidateCache) {
            LayoutNodeKt.a(a()).getSnapshotObserver().e(this, onCommitAffectingDrawEntity, this.updateCache);
        }
        LayoutNodeDrawScope layoutNodeDrawScopeH0 = a().h0();
        LayoutNodeWrapper layoutNodeWrapperB = b();
        DrawEntity drawEntity = layoutNodeDrawScopeH0.drawEntity;
        layoutNodeDrawScopeH0.drawEntity = this;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScopeH0.canvasDrawScope;
        MeasureScope measureScopeZ1 = layoutNodeWrapperB.z1();
        LayoutDirection layoutDirection = layoutNodeWrapperB.z1().getLayoutDirection();
        CanvasDrawScope.DrawParams drawParamsI = canvasDrawScope.I();
        Density densityA = drawParamsI.a();
        LayoutDirection layoutDirectionB = drawParamsI.b();
        Canvas canvasC = drawParamsI.c();
        long jD = drawParamsI.d();
        CanvasDrawScope.DrawParams drawParamsI2 = canvasDrawScope.I();
        drawParamsI2.j(measureScopeZ1);
        drawParamsI2.k(layoutDirection);
        drawParamsI2.i(canvas);
        drawParamsI2.l(jB);
        canvas.r();
        c().r(layoutNodeDrawScopeH0);
        canvas.n();
        CanvasDrawScope.DrawParams drawParamsI3 = canvasDrawScope.I();
        drawParamsI3.j(densityA);
        drawParamsI3.k(layoutDirectionB);
        drawParamsI3.i(canvasC);
        drawParamsI3.l(jD);
        layoutNodeDrawScopeH0.drawEntity = drawEntity;
    }

    private final DrawCacheModifier o() {
        DrawModifier drawModifierC = c();
        if (drawModifierC instanceof DrawCacheModifier) {
            return (DrawCacheModifier) drawModifierC;
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void g() {
        this.cacheDrawModifier = o();
        this.invalidateCache = true;
        super.g();
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return b().Q();
    }
}
