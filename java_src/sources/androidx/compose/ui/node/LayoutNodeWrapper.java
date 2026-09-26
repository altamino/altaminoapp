package androidx.compose.ui.node;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.MutableRectKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.input.pointer.PointerInputFilter;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsModifier;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public abstract class LayoutNodeWrapper extends Placeable implements Measurable, LayoutCoordinates, OwnerScope, l<Canvas, l0> {

    @NotNull
    public static final String ExpectAttachedLayoutCoordinates = "LayoutCoordinate operations are only valid when isAttached is true";

    @NotNull
    public static final String UnmeasuredError = "Asking for measurement result of unmeasured layout modifier";
    private boolean _isAttached;

    @Nullable
    private MeasureResult _measureResult;

    @Nullable
    private MutableRect _rectCache;

    @NotNull
    private final LayoutNodeEntity<?, ?>[] entities;

    @NotNull
    private final e8.a<l0> invalidateParentLayer;
    private boolean isClipping;
    private boolean isShallowPlacing;
    private float lastLayerAlpha;
    private boolean lastLayerDrawingWasSkipped;

    @Nullable
    private OwnedLayer layer;

    @Nullable
    private l<? super GraphicsLayerScope, l0> layerBlock;

    @NotNull
    private Density layerDensity;

    @NotNull
    private LayoutDirection layerLayoutDirection;

    @NotNull
    private final LayoutNode layoutNode;

    @Nullable
    private Map<AlignmentLine, Integer> oldAlignmentLines;
    private long position;

    @Nullable
    private LayoutNodeWrapper wrappedBy;
    private float zIndex;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final l<LayoutNodeWrapper, l0> onCommitAffectingLayerParams = LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1.INSTANCE;

    @NotNull
    private static final l<LayoutNodeWrapper, l0> onCommitAffectingLayer = LayoutNodeWrapper$Companion$onCommitAffectingLayer$1.INSTANCE;

    @NotNull
    private static final ReusableGraphicsLayerScope graphicsLayerScope = new ReusableGraphicsLayerScope();

    @NotNull
    private static final HitTestSource<PointerInputEntity, PointerInputFilter, PointerInputModifier> PointerInputSource = new HitTestSource<PointerInputEntity, PointerInputFilter, PointerInputModifier>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$Companion$PointerInputSource$1
        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public boolean e(@NotNull LayoutNode parentLayoutNode) {
            t.j(parentLayoutNode, "parentLayoutNode");
            return true;
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public int a() {
            return EntityList.Companion.d();
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public void d(@NotNull LayoutNode layoutNode, long j6, @NotNull HitTestResult<PointerInputFilter> hitTestResult, boolean z6, boolean z10) {
            t.j(layoutNode, "layoutNode");
            t.j(hitTestResult, "hitTestResult");
            layoutNode.C0(j6, hitTestResult, z6, z10);
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        @NotNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public PointerInputFilter b(@NotNull PointerInputEntity entity) {
            t.j(entity, "entity");
            return entity.c().B0();
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public boolean c(@NotNull PointerInputEntity entity) {
            t.j(entity, "entity");
            return entity.c().B0().p();
        }
    };

    @NotNull
    private static final HitTestSource<SemanticsEntity, SemanticsEntity, SemanticsModifier> SemanticsSource = new HitTestSource<SemanticsEntity, SemanticsEntity, SemanticsModifier>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$Companion$SemanticsSource$1
        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        @NotNull
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public SemanticsEntity b(@NotNull SemanticsEntity entity) {
            t.j(entity, "entity");
            return entity;
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public boolean c(@NotNull SemanticsEntity entity) {
            t.j(entity, "entity");
            return false;
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public int a() {
            return EntityList.Companion.f();
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public void d(@NotNull LayoutNode layoutNode, long j6, @NotNull HitTestResult<SemanticsEntity> hitTestResult, boolean z6, boolean z10) {
            t.j(layoutNode, "layoutNode");
            t.j(hitTestResult, "hitTestResult");
            layoutNode.E0(j6, hitTestResult, z6, z10);
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public boolean e(@NotNull LayoutNode parentLayoutNode) {
            SemanticsConfiguration semanticsConfigurationJ;
            t.j(parentLayoutNode, "parentLayoutNode");
            SemanticsEntity semanticsEntityJ = SemanticsNodeKt.j(parentLayoutNode);
            boolean z6 = false;
            if (semanticsEntityJ != null && (semanticsConfigurationJ = semanticsEntityJ.j()) != null && semanticsConfigurationJ.m()) {
                z6 = true;
            }
            return !z6;
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final HitTestSource<PointerInputEntity, PointerInputFilter, PointerInputModifier> a() {
            return LayoutNodeWrapper.PointerInputSource;
        }

        @NotNull
        public final HitTestSource<SemanticsEntity, SemanticsEntity, SemanticsModifier> b() {
            return LayoutNodeWrapper.SemanticsSource;
        }
    }

    public interface HitTestSource<T extends LayoutNodeEntity<T, M>, C, M extends Modifier> {
        int a();

        C b(@NotNull T t5);

        boolean c(@NotNull T t5);

        void d(@NotNull LayoutNode layoutNode, long j6, @NotNull HitTestResult<C> hitTestResult, boolean z6, boolean z10);

        boolean e(@NotNull LayoutNode layoutNode);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.node.LayoutNodeWrapper$invoke$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<l0> {
        final /* synthetic */ Canvas $canvas;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Canvas canvas) {
            super(0);
            this.$canvas = canvas;
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            LayoutNodeWrapper.this.o1(this.$canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void I1(T t5, HitTestSource<T, C, M> hitTestSource, long j6, HitTestResult<C> hitTestResult, boolean z6, boolean z10) {
        if (t5 == null) {
            L1(hitTestSource, j6, hitTestResult, z6, z10);
        } else {
            hitTestResult.r(hitTestSource.b(t5), z10, new LayoutNodeWrapper$hit$1(this, t5, hitTestSource, j6, hitTestResult, z6, z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void J1(T t5, HitTestSource<T, C, M> hitTestSource, long j6, HitTestResult<C> hitTestResult, boolean z6, boolean z10, float f) {
        if (t5 == null) {
            L1(hitTestSource, j6, hitTestResult, z6, z10);
        } else {
            hitTestResult.s(hitTestSource.b(t5), f, z10, new LayoutNodeWrapper$hitNear$1(this, t5, hitTestSource, j6, hitTestResult, z6, z10, f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void f2(T t5, HitTestSource<T, C, M> hitTestSource, long j6, HitTestResult<C> hitTestResult, boolean z6, boolean z10, float f) {
        if (t5 == null) {
            L1(hitTestSource, j6, hitTestResult, z6, z10);
        } else if (hitTestSource.c(t5)) {
            hitTestResult.v(hitTestSource.b(t5), f, z10, new LayoutNodeWrapper$speculativeHit$1(this, t5, hitTestSource, j6, hitTestResult, z6, z10, f));
        } else {
            f2(t5.d(), hitTestSource, j6, hitTestResult, z6, z10, f);
        }
    }

    private final boolean t1() {
        return this._measureResult != null;
    }

    public final long C1() {
        return this.position;
    }

    @Nullable
    public LayoutNodeWrapper F1() {
        return null;
    }

    @Nullable
    public final LayoutNodeWrapper G1() {
        return this.wrappedBy;
    }

    public final float H1() {
        return this.zIndex;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void K1(@NotNull HitTestSource<T, C, M> hitTestSource, long j6, @NotNull HitTestResult<C> hitTestResult, boolean z6, boolean z10) {
        t.j(hitTestSource, "hitTestSource");
        t.j(hitTestResult, "hitTestResult");
        LayoutNodeEntity layoutNodeEntityP = EntityList.p(this.entities, hitTestSource.a());
        if (!j2(j6)) {
            if (z6) {
                float fL1 = l1(j6, A1());
                if (Float.isInfinite(fL1) || Float.isNaN(fL1) || !hitTestResult.t(fL1, false)) {
                    return;
                }
                J1(layoutNodeEntityP, hitTestSource, j6, hitTestResult, z6, false, fL1);
                return;
            }
            return;
        }
        if (layoutNodeEntityP == null) {
            L1(hitTestSource, j6, hitTestResult, z6, z10);
            return;
        }
        if (O1(j6)) {
            I1(layoutNodeEntityP, hitTestSource, j6, hitTestResult, z6, z10);
            return;
        }
        float fL2 = !z6 ? Float.POSITIVE_INFINITY : l1(j6, A1());
        if (!Float.isInfinite(fL2) && !Float.isNaN(fL2)) {
            if (hitTestResult.t(fL2, z10)) {
                J1(layoutNodeEntityP, hitTestSource, j6, hitTestResult, z6, z10, fL2);
                return;
            }
        }
        f2(layoutNodeEntityP, hitTestSource, j6, hitTestResult, z6, z10, fL2);
    }

    public final boolean P1() {
        return this.isShallowPlacing;
    }

    public final void c2(boolean z6) {
        this.isShallowPlacing = z6;
    }

    public final void d2(@Nullable LayoutNodeWrapper layoutNodeWrapper) {
        this.wrappedBy = layoutNodeWrapper;
    }

    public void h1() {
        this._isAttached = true;
        T1(this.layerBlock);
        for (LayoutNodeEntity<?, ?> layoutNodeEntityD : this.entities) {
            for (; layoutNodeEntityD != null; layoutNodeEntityD = layoutNodeEntityD.d()) {
                layoutNodeEntityD.g();
            }
        }
    }

    public abstract int i1(@NotNull AlignmentLine alignmentLine);

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return this.layer != null;
    }

    @NotNull
    public final LayoutNodeEntity<?, ?>[] s1() {
        return this.entities;
    }

    public final boolean u1() {
        return this.lastLayerDrawingWasSkipped;
    }

    @Nullable
    public final OwnedLayer v1() {
        return this.layer;
    }

    @Nullable
    protected final l<GraphicsLayerScope, l0> w1() {
        return this.layerBlock;
    }

    @NotNull
    public final LayoutNode x1() {
        return this.layoutNode;
    }

    @NotNull
    public abstract MeasureScope z1();

    public LayoutNodeWrapper(@NotNull LayoutNode layoutNode) {
        t.j(layoutNode, "layoutNode");
        this.layoutNode = layoutNode;
        this.layerDensity = layoutNode.T();
        this.layerLayoutDirection = layoutNode.getLayoutDirection();
        this.lastLayerAlpha = 0.8f;
        this.position = IntOffset.Companion.a();
        this.entities = EntityList.l(null, 1, null);
        this.invalidateParentLayer = new LayoutNodeWrapper$invalidateParentLayer$1(this);
    }

    private final Object B1(SimpleEntity<ParentDataModifier> simpleEntity) {
        if (simpleEntity != null) {
            return simpleEntity.c().Q(z1(), B1((SimpleEntity) simpleEntity.d()));
        }
        LayoutNodeWrapper layoutNodeWrapperF1 = F1();
        if (layoutNodeWrapperF1 != null) {
            return layoutNodeWrapperF1.e();
        }
        return null;
    }

    private final OwnerSnapshotObserver E1() {
        return LayoutNodeKt.a(this.layoutNode).getSnapshotObserver();
    }

    public static /* synthetic */ void a2(LayoutNodeWrapper layoutNodeWrapper, MutableRect mutableRect, boolean z6, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rectInParent");
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        layoutNodeWrapper.Z1(mutableRect, z6, z10);
    }

    private final void f1(LayoutNodeWrapper layoutNodeWrapper, MutableRect mutableRect, boolean z6) {
        if (layoutNodeWrapper == this) {
            return;
        }
        LayoutNodeWrapper layoutNodeWrapper2 = this.wrappedBy;
        if (layoutNodeWrapper2 != null) {
            layoutNodeWrapper2.f1(layoutNodeWrapper, mutableRect, z6);
        }
        r1(mutableRect, z6);
    }

    private final long g1(LayoutNodeWrapper layoutNodeWrapper, long j6) {
        if (layoutNodeWrapper == this) {
            return j6;
        }
        LayoutNodeWrapper layoutNodeWrapper2 = this.wrappedBy;
        return (layoutNodeWrapper2 == null || t.e(layoutNodeWrapper, layoutNodeWrapper2)) ? q1(j6) : q1(layoutNodeWrapper2.g1(layoutNodeWrapper, j6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i2() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            l<? super GraphicsLayerScope, l0> lVar = this.layerBlock;
            if (lVar == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            ReusableGraphicsLayerScope reusableGraphicsLayerScope = graphicsLayerScope;
            reusableGraphicsLayerScope.Y();
            reusableGraphicsLayerScope.a0(this.layoutNode.T());
            E1().e(this, onCommitAffectingLayerParams, new LayoutNodeWrapper$updateLayerParameters$1(lVar));
            ownedLayer.f(reusableGraphicsLayerScope.I(), reusableGraphicsLayerScope.K(), reusableGraphicsLayerScope.e(), reusableGraphicsLayerScope.U(), reusableGraphicsLayerScope.V(), reusableGraphicsLayerScope.M(), reusableGraphicsLayerScope.x(), reusableGraphicsLayerScope.B(), reusableGraphicsLayerScope.H(), reusableGraphicsLayerScope.p(), reusableGraphicsLayerScope.S(), reusableGraphicsLayerScope.O(), reusableGraphicsLayerScope.r(), reusableGraphicsLayerScope.u(), reusableGraphicsLayerScope.m(), reusableGraphicsLayerScope.Q(), this.layoutNode.getLayoutDirection(), this.layoutNode.T());
            this.isClipping = reusableGraphicsLayerScope.r();
        } else if (this.layerBlock != null) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.lastLayerAlpha = graphicsLayerScope.e();
        Owner ownerS0 = this.layoutNode.s0();
        if (ownerS0 != null) {
            ownerS0.i(this.layoutNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o1(Canvas canvas) {
        DrawEntity drawEntity = (DrawEntity) EntityList.p(this.entities, EntityList.Companion.a());
        if (drawEntity == null) {
            Y1(canvas);
        } else {
            drawEntity.m(canvas);
        }
    }

    private final void r1(MutableRect mutableRect, boolean z6) {
        float fJ = IntOffset.j(this.position);
        mutableRect.i(mutableRect.b() - fJ);
        mutableRect.j(mutableRect.c() - fJ);
        float fK = IntOffset.k(this.position);
        mutableRect.k(mutableRect.d() - fK);
        mutableRect.h(mutableRect.a() - fK);
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.a(mutableRect, true);
            if (this.isClipping && z6) {
                mutableRect.e(0.0f, 0.0f, IntSize.g(a()), IntSize.f(a()));
                mutableRect.f();
            }
        }
    }

    public final long A1() {
        return this.layerDensity.X(this.layoutNode.w0().e());
    }

    @NotNull
    protected final MutableRect D1() {
        MutableRect mutableRect = this._rectCache;
        if (mutableRect != null) {
            return mutableRect;
        }
        MutableRect mutableRect2 = new MutableRect(0.0f, 0.0f, 0.0f, 0.0f);
        this._rectCache = mutableRect2;
        return mutableRect2;
    }

    public <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void L1(@NotNull HitTestSource<T, C, M> hitTestSource, long j6, @NotNull HitTestResult<C> hitTestResult, boolean z6, boolean z10) {
        t.j(hitTestSource, "hitTestSource");
        t.j(hitTestResult, "hitTestResult");
        LayoutNodeWrapper layoutNodeWrapperF1 = F1();
        if (layoutNodeWrapperF1 != null) {
            layoutNodeWrapperF1.K1(hitTestSource, layoutNodeWrapperF1.q1(j6), hitTestResult, z6, z10);
        }
    }

    public void M1() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
            return;
        }
        LayoutNodeWrapper layoutNodeWrapper = this.wrappedBy;
        if (layoutNodeWrapper != null) {
            layoutNodeWrapper.M1();
        }
    }

    public void N1(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        if (!this.layoutNode.i()) {
            this.lastLayerDrawingWasSkipped = true;
        } else {
            E1().e(this, onCommitAffectingLayer, new AnonymousClass1(canvas));
            this.lastLayerDrawingWasSkipped = false;
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public long O(@NotNull LayoutCoordinates sourceCoordinates, long j6) {
        t.j(sourceCoordinates, "sourceCoordinates");
        LayoutNodeWrapper layoutNodeWrapper = (LayoutNodeWrapper) sourceCoordinates;
        LayoutNodeWrapper layoutNodeWrapperP1 = p1(layoutNodeWrapper);
        while (layoutNodeWrapper != layoutNodeWrapperP1) {
            j6 = layoutNodeWrapper.g2(j6);
            layoutNodeWrapper = layoutNodeWrapper.wrappedBy;
            t.g(layoutNodeWrapper);
        }
        return g1(layoutNodeWrapperP1, j6);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final boolean Q() {
        if (!this._isAttached || this.layoutNode.K0()) {
            return this._isAttached;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public final boolean Q1() {
        if (this.layer != null && this.lastLayerAlpha <= 0.0f) {
            return true;
        }
        LayoutNodeWrapper layoutNodeWrapper = this.wrappedBy;
        if (layoutNodeWrapper != null) {
            return layoutNodeWrapper.Q1();
        }
        return false;
    }

    public void S1() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
        }
    }

    public final void T1(@Nullable l<? super GraphicsLayerScope, l0> lVar) {
        Owner ownerS0;
        boolean z6 = (this.layerBlock == lVar && t.e(this.layerDensity, this.layoutNode.T()) && this.layerLayoutDirection == this.layoutNode.getLayoutDirection()) ? false : true;
        this.layerBlock = lVar;
        this.layerDensity = this.layoutNode.T();
        this.layerLayoutDirection = this.layoutNode.getLayoutDirection();
        if (!Q() || lVar == null) {
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                ownedLayer.destroy();
                this.layoutNode.o1(true);
                this.invalidateParentLayer.invoke();
                if (Q() && (ownerS0 = this.layoutNode.s0()) != null) {
                    ownerS0.i(this.layoutNode);
                }
            }
            this.layer = null;
            this.lastLayerDrawingWasSkipped = false;
            return;
        }
        if (this.layer != null) {
            if (z6) {
                i2();
                return;
            }
            return;
        }
        OwnedLayer ownedLayerQ = LayoutNodeKt.a(this.layoutNode).q(this, this.invalidateParentLayer);
        ownedLayerQ.e(F0());
        ownedLayerQ.h(this.position);
        this.layer = ownedLayerQ;
        i2();
        this.layoutNode.o1(true);
        this.invalidateParentLayer.invoke();
    }

    protected void U1(int i10, int i11) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.e(IntSizeKt.a(i10, i11));
        } else {
            LayoutNodeWrapper layoutNodeWrapper = this.wrappedBy;
            if (layoutNodeWrapper != null) {
                layoutNodeWrapper.M1();
            }
        }
        Owner ownerS0 = this.layoutNode.s0();
        if (ownerS0 != null) {
            ownerS0.i(this.layoutNode);
        }
        T0(IntSizeKt.a(i10, i11));
        for (LayoutNodeEntity<?, ?> layoutNodeEntityD = this.entities[EntityList.Companion.a()]; layoutNodeEntityD != null; layoutNodeEntityD = layoutNodeEntityD.d()) {
            ((DrawEntity) layoutNodeEntityD).n();
        }
    }

    public final void V1() {
        LayoutNodeEntity<?, ?>[] layoutNodeEntityArr = this.entities;
        EntityList.Companion companion = EntityList.Companion;
        if (EntityList.n(layoutNodeEntityArr, companion.e())) {
            Snapshot snapshotA = Snapshot.Companion.a();
            try {
                Snapshot snapshotK = snapshotA.k();
                try {
                    for (LayoutNodeEntity<?, ?> layoutNodeEntityD = this.entities[companion.e()]; layoutNodeEntityD != null; layoutNodeEntityD = layoutNodeEntityD.d()) {
                        ((OnRemeasuredModifier) ((SimpleEntity) layoutNodeEntityD).c()).b0(F0());
                    }
                    l0 l0Var = l0.INSTANCE;
                    snapshotA.r(snapshotK);
                    snapshotA.d();
                } catch (Throwable th) {
                    snapshotA.r(snapshotK);
                    throw th;
                }
            } catch (Throwable th2) {
                snapshotA.d();
                throw th2;
            }
        }
    }

    public void W1() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
        }
    }

    public final void X1() {
        for (LayoutNodeEntity<?, ?> layoutNodeEntityD = this.entities[EntityList.Companion.b()]; layoutNodeEntityD != null; layoutNodeEntityD = layoutNodeEntityD.d()) {
            ((OnPlacedModifier) ((SimpleEntity) layoutNodeEntityD).c()).e(this);
        }
    }

    public void Y1(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        LayoutNodeWrapper layoutNodeWrapperF1 = F1();
        if (layoutNodeWrapperF1 != null) {
            layoutNodeWrapperF1.m1(canvas);
        }
    }

    public final void Z1(@NotNull MutableRect bounds, boolean z6, boolean z10) {
        t.j(bounds, "bounds");
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            if (this.isClipping) {
                if (z10) {
                    long jA1 = A1();
                    float fI = Size.i(jA1) / 2.0f;
                    float fG = Size.g(jA1) / 2.0f;
                    bounds.e(-fI, -fG, IntSize.g(a()) + fI, IntSize.f(a()) + fG);
                } else if (z6) {
                    bounds.e(0.0f, 0.0f, IntSize.g(a()), IntSize.f(a()));
                }
                if (bounds.f()) {
                    return;
                }
            }
            ownedLayer.a(bounds, false);
        }
        float fJ = IntOffset.j(this.position);
        bounds.i(bounds.b() + fJ);
        bounds.j(bounds.c() + fJ);
        float fK = IntOffset.k(this.position);
        bounds.k(bounds.d() + fK);
        bounds.h(bounds.a() + fK);
    }

    public final void b2(@NotNull MeasureResult value) {
        LayoutNode layoutNodeT0;
        t.j(value, "value");
        MeasureResult measureResult = this._measureResult;
        if (value != measureResult) {
            this._measureResult = value;
            if (measureResult == null || value.getWidth() != measureResult.getWidth() || value.getHeight() != measureResult.getHeight()) {
                U1(value.getWidth(), value.getHeight());
            }
            Map<AlignmentLine, Integer> map = this.oldAlignmentLines;
            if (((map == null || map.isEmpty()) && !(!value.c().isEmpty())) || t.e(value.c(), this.oldAlignmentLines)) {
                return;
            }
            LayoutNodeWrapper layoutNodeWrapperF1 = F1();
            if (t.e(layoutNodeWrapperF1 != null ? layoutNodeWrapperF1.layoutNode : null, this.layoutNode)) {
                LayoutNode layoutNodeT1 = this.layoutNode.t0();
                if (layoutNodeT1 != null) {
                    layoutNodeT1.S0();
                }
                if (this.layoutNode.Q().i()) {
                    LayoutNode layoutNodeT2 = this.layoutNode.t0();
                    if (layoutNodeT2 != null) {
                        LayoutNode.j1(layoutNodeT2, false, 1, null);
                    }
                } else if (this.layoutNode.Q().h() && (layoutNodeT0 = this.layoutNode.t0()) != null) {
                    LayoutNode.h1(layoutNodeT0, false, 1, null);
                }
            } else {
                this.layoutNode.S0();
            }
            this.layoutNode.Q().n(true);
            Map linkedHashMap = this.oldAlignmentLines;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                this.oldAlignmentLines = linkedHashMap;
            }
            linkedHashMap.clear();
            linkedHashMap.putAll(value.c());
        }
    }

    @Override // androidx.compose.ui.layout.Measured
    public final int c0(@NotNull AlignmentLine alignmentLine) {
        int iI1;
        t.j(alignmentLine, "alignmentLine");
        if (t1() && (iI1 = i1(alignmentLine)) != Integer.MIN_VALUE) {
            return iI1 + (alignmentLine instanceof VerticalAlignmentLine ? IntOffset.j(z0()) : IntOffset.k(z0()));
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.IntrinsicMeasurable
    @Nullable
    public Object e() {
        return B1((SimpleEntity) EntityList.p(this.entities, EntityList.Companion.c()));
    }

    public final boolean e2() {
        PointerInputEntity pointerInputEntity = (PointerInputEntity) EntityList.p(this.entities, EntityList.Companion.d());
        if (pointerInputEntity != null && pointerInputEntity.j()) {
            return true;
        }
        LayoutNodeWrapper layoutNodeWrapperF1 = F1();
        return layoutNodeWrapperF1 != null && layoutNodeWrapperF1.e2();
    }

    public long g2(long j6) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            j6 = ownedLayer.d(j6, false);
        }
        return IntOffsetKt.c(j6, this.position);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Canvas canvas) {
        N1(canvas);
        return l0.INSTANCE;
    }

    public void k1() {
        for (LayoutNodeEntity<?, ?> layoutNodeEntityD : this.entities) {
            for (; layoutNodeEntityD != null; layoutNodeEntityD = layoutNodeEntityD.d()) {
                layoutNodeEntityD.h();
            }
        }
        this._isAttached = false;
        T1(this.layerBlock);
        LayoutNode layoutNodeT0 = this.layoutNode.t0();
        if (layoutNodeT0 != null) {
            layoutNodeT0.H0();
        }
    }

    public final void m1(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.b(canvas);
            return;
        }
        float fJ = IntOffset.j(this.position);
        float fK = IntOffset.k(this.position);
        canvas.b(fJ, fK);
        o1(canvas);
        canvas.b(-fJ, -fK);
    }

    protected final void n1(@NotNull Canvas canvas, @NotNull Paint paint) {
        t.j(canvas, "canvas");
        t.j(paint, "paint");
        canvas.j(new Rect(0.5f, 0.5f, IntSize.g(F0()) - 0.5f, IntSize.f(F0()) - 0.5f), paint);
    }

    @NotNull
    public final LayoutNodeWrapper p1(@NotNull LayoutNodeWrapper other) {
        t.j(other, "other");
        LayoutNode layoutNodeT0 = other.layoutNode;
        LayoutNode layoutNodeT1 = this.layoutNode;
        if (layoutNodeT0 == layoutNodeT1) {
            LayoutNodeWrapper layoutNodeWrapperR0 = layoutNodeT1.r0();
            LayoutNodeWrapper layoutNodeWrapper = this;
            while (layoutNodeWrapper != layoutNodeWrapperR0 && layoutNodeWrapper != other) {
                layoutNodeWrapper = layoutNodeWrapper.wrappedBy;
                t.g(layoutNodeWrapper);
            }
            return layoutNodeWrapper == other ? other : this;
        }
        while (layoutNodeT0.U() > layoutNodeT1.U()) {
            layoutNodeT0 = layoutNodeT0.t0();
            t.g(layoutNodeT0);
        }
        while (layoutNodeT1.U() > layoutNodeT0.U()) {
            layoutNodeT1 = layoutNodeT1.t0();
            t.g(layoutNodeT1);
        }
        while (layoutNodeT0 != layoutNodeT1) {
            layoutNodeT0 = layoutNodeT0.t0();
            layoutNodeT1 = layoutNodeT1.t0();
            if (layoutNodeT0 == null || layoutNodeT1 == null) {
                throw new IllegalArgumentException("layouts are not part of the same hierarchy");
            }
        }
        if (layoutNodeT1 == this.layoutNode) {
            return this;
        }
        return layoutNodeT0 == other.layoutNode ? other : layoutNodeT0.c0();
    }

    public long q1(long j6) {
        long jB = IntOffsetKt.b(j6, this.position);
        OwnedLayer ownedLayer = this.layer;
        return ownedLayer != null ? ownedLayer.d(jB, true) : jB;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    @NotNull
    public Rect r(@NotNull LayoutCoordinates sourceCoordinates, boolean z6) {
        t.j(sourceCoordinates, "sourceCoordinates");
        if (!Q()) {
            throw new IllegalStateException(ExpectAttachedLayoutCoordinates.toString());
        }
        if (!sourceCoordinates.Q()) {
            throw new IllegalStateException(("LayoutCoordinates " + sourceCoordinates + " is not attached!").toString());
        }
        LayoutNodeWrapper layoutNodeWrapper = (LayoutNodeWrapper) sourceCoordinates;
        LayoutNodeWrapper layoutNodeWrapperP1 = p1(layoutNodeWrapper);
        MutableRect mutableRectD1 = D1();
        mutableRectD1.i(0.0f);
        mutableRectD1.k(0.0f);
        mutableRectD1.j(IntSize.g(sourceCoordinates.a()));
        mutableRectD1.h(IntSize.f(sourceCoordinates.a()));
        while (layoutNodeWrapper != layoutNodeWrapperP1) {
            a2(layoutNodeWrapper, mutableRectD1, z6, false, 4, null);
            if (mutableRectD1.f()) {
                return Rect.Companion.a();
            }
            layoutNodeWrapper = layoutNodeWrapper.wrappedBy;
            t.g(layoutNodeWrapper);
        }
        f1(layoutNodeWrapperP1, mutableRectD1, z6);
        return MutableRectKt.a(mutableRectD1);
    }

    @NotNull
    public final MeasureResult y1() {
        MeasureResult measureResult = this._measureResult;
        if (measureResult != null) {
            return measureResult;
        }
        throw new IllegalStateException(UnmeasuredError.toString());
    }

    private final long R1(long j6) {
        float fM0;
        float fC0;
        float fM = Offset.m(j6);
        if (fM < 0.0f) {
            fM0 = -fM;
        } else {
            fM0 = fM - M0();
        }
        float fMax = Math.max(0.0f, fM0);
        float fN = Offset.n(j6);
        if (fN < 0.0f) {
            fC0 = -fN;
        } else {
            fC0 = fN - C0();
        }
        return OffsetKt.a(fMax, Math.max(0.0f, fC0));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    @Nullable
    public final LayoutCoordinates B() {
        if (Q()) {
            return this.layoutNode.r0().wrappedBy;
        }
        throw new IllegalStateException(ExpectAttachedLayoutCoordinates.toString());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public long K(long j6) {
        if (Q()) {
            for (LayoutNodeWrapper layoutNodeWrapper = this; layoutNodeWrapper != null; layoutNodeWrapper = layoutNodeWrapper.wrappedBy) {
                j6 = layoutNodeWrapper.g2(j6);
            }
            return j6;
        }
        throw new IllegalStateException(ExpectAttachedLayoutCoordinates.toString());
    }

    protected final boolean O1(long j6) {
        float fM = Offset.m(j6);
        float fN = Offset.n(j6);
        if (fM >= 0.0f && fN >= 0.0f && fM < M0() && fN < C0()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.Placeable
    public void R0(long j6, float f, @Nullable l<? super GraphicsLayerScope, l0> lVar) {
        LayoutNode layoutNode;
        T1(lVar);
        if (!IntOffset.i(this.position, j6)) {
            this.position = j6;
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                ownedLayer.h(j6);
            } else {
                LayoutNodeWrapper layoutNodeWrapper = this.wrappedBy;
                if (layoutNodeWrapper != null) {
                    layoutNodeWrapper.M1();
                }
            }
            LayoutNodeWrapper layoutNodeWrapperF1 = F1();
            if (layoutNodeWrapperF1 != null) {
                layoutNode = layoutNodeWrapperF1.layoutNode;
            } else {
                layoutNode = null;
            }
            if (!t.e(layoutNode, this.layoutNode)) {
                this.layoutNode.S0();
            } else {
                LayoutNode layoutNodeT0 = this.layoutNode.t0();
                if (layoutNodeT0 != null) {
                    layoutNodeT0.S0();
                }
            }
            Owner ownerS0 = this.layoutNode.s0();
            if (ownerS0 != null) {
                ownerS0.i(this.layoutNode);
            }
        }
        this.zIndex = f;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public long S(long j6) {
        if (Q()) {
            LayoutCoordinates layoutCoordinatesD = LayoutCoordinatesKt.d(this);
            return O(layoutCoordinatesD, Offset.q(LayoutNodeKt.a(this.layoutNode).f(j6), LayoutCoordinatesKt.e(layoutCoordinatesD)));
        }
        throw new IllegalStateException(ExpectAttachedLayoutCoordinates.toString());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final long a() {
        return F0();
    }

    @NotNull
    public final Rect h2() {
        if (!Q()) {
            return Rect.Companion.a();
        }
        LayoutCoordinates layoutCoordinatesD = LayoutCoordinatesKt.d(this);
        MutableRect mutableRectD1 = D1();
        long jJ1 = j1(A1());
        mutableRectD1.i(-Size.i(jJ1));
        mutableRectD1.k(-Size.g(jJ1));
        mutableRectD1.j(M0() + Size.i(jJ1));
        mutableRectD1.h(C0() + Size.g(jJ1));
        LayoutNodeWrapper layoutNodeWrapper = this;
        while (layoutNodeWrapper != layoutCoordinatesD) {
            layoutNodeWrapper.Z1(mutableRectD1, false, true);
            if (mutableRectD1.f()) {
                return Rect.Companion.a();
            }
            layoutNodeWrapper = layoutNodeWrapper.wrappedBy;
            t.g(layoutNodeWrapper);
        }
        return MutableRectKt.a(mutableRectD1);
    }

    protected final long j1(long j6) {
        return SizeKt.a(Math.max(0.0f, (Size.i(j6) - M0()) / 2.0f), Math.max(0.0f, (Size.g(j6) - C0()) / 2.0f));
    }

    protected final boolean j2(long j6) {
        if (!OffsetKt.b(j6)) {
            return false;
        }
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null && this.isClipping && !ownedLayer.g(j6)) {
            return false;
        }
        return true;
    }

    protected final float l1(long j6, long j10) {
        if (M0() >= Size.i(j10) && C0() >= Size.g(j10)) {
            return Float.POSITIVE_INFINITY;
        }
        long jJ1 = j1(j10);
        float fI = Size.i(jJ1);
        float fG = Size.g(jJ1);
        long jR1 = R1(j6);
        if ((fI <= 0.0f && fG <= 0.0f) || Offset.m(jR1) > fI || Offset.n(jR1) > fG) {
            return Float.POSITIVE_INFINITY;
        }
        return Offset.l(jR1);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public long m(long j6) {
        return LayoutNodeKt.a(this.layoutNode).h(K(j6));
    }
}
