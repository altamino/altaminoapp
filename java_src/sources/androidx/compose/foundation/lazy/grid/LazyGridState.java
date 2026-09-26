package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.gestures.b;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import e8.l;
import e8.p;
import java.util.List;
import kotlin.collections.d0;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@Stable
public final class LazyGridState implements ScrollableState {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Saver<LazyGridState, ?> Saver = ListSaverKt.a(LazyGridState$Companion$Saver$1.INSTANCE, LazyGridState$Companion$Saver$2.INSTANCE);

    @NotNull
    private final AwaitFirstLayoutModifier awaitLayoutModifier;
    private boolean canScrollBackward;
    private boolean canScrollForward;

    @NotNull
    private final MutableVector<LazyLayoutPrefetchState.PrefetchHandle> currentLinePrefetchHandles;

    @NotNull
    private final MutableState density$delegate;

    @NotNull
    private final MutableInteractionSource internalInteractionSource;

    @NotNull
    private final MutableState isVertical$delegate;

    @NotNull
    private final MutableState<LazyGridLayoutInfo> layoutInfoState;
    private int lineToPrefetch;
    private int numMeasurePasses;

    @NotNull
    private final MutableState placementAnimator$delegate;

    @NotNull
    private final MutableState prefetchInfoRetriever$delegate;

    @NotNull
    private final LazyLayoutPrefetchState prefetchState;
    private boolean prefetchingEnabled;

    @NotNull
    private final MutableState remeasurement$delegate;

    @NotNull
    private final RemeasurementModifier remeasurementModifier;

    @NotNull
    private final LazyGridScrollPosition scrollPosition;
    private float scrollToBeConsumed;

    @NotNull
    private final ScrollableState scrollableState;

    @NotNull
    private final MutableState slotsPerLine$delegate;
    private boolean wasScrollingForward;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Saver<LazyGridState, ?> a() {
            return LazyGridState.Saver;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LazyGridState() {
        int i10 = 0;
        this(i10, i10, 3, null);
    }

    @NotNull
    public final AwaitFirstLayoutModifier g() {
        return this.awaitLayoutModifier;
    }

    public final boolean h() {
        return this.canScrollForward;
    }

    @NotNull
    public final MutableInteractionSource l() {
        return this.internalInteractionSource;
    }

    @NotNull
    public final LazyLayoutPrefetchState p() {
        return this.prefetchState;
    }

    @NotNull
    public final RemeasurementModifier r() {
        return this.remeasurementModifier;
    }

    public final float s() {
        return this.scrollToBeConsumed;
    }

    public final float v(float f) {
        if ((f < 0.0f && !this.canScrollForward) || (f > 0.0f && !this.canScrollBackward)) {
            return 0.0f;
        }
        if (Math.abs(this.scrollToBeConsumed) > 0.5f) {
            throw new IllegalStateException(("entered drag with non-zero pending scroll: " + this.scrollToBeConsumed).toString());
        }
        float f6 = this.scrollToBeConsumed + f;
        this.scrollToBeConsumed = f6;
        if (Math.abs(f6) > 0.5f) {
            float f7 = this.scrollToBeConsumed;
            Remeasurement remeasurementQ = q();
            if (remeasurementQ != null) {
                remeasurementQ.a();
            }
            if (this.prefetchingEnabled) {
                u(f7 - this.scrollToBeConsumed);
            }
        }
        if (Math.abs(this.scrollToBeConsumed) <= 0.5f) {
            return f;
        }
        float f10 = f - this.scrollToBeConsumed;
        this.scrollToBeConsumed = 0.0f;
        return f10;
    }

    @Nullable
    public final Object w(int i10, int i11, @NotNull d<? super l0> dVar) {
        Object objA = b.a(this, null, new LazyGridState$scrollToItem$2(this, i10, i11, null), dVar, 1, null);
        return objA == kotlin.coroutines.intrinsics.d.e() ? objA : l0.INSTANCE;
    }

    public LazyGridState(int i10, int i11) {
        this.scrollPosition = new LazyGridScrollPosition(i10, i11);
        this.layoutInfoState = SnapshotStateKt__SnapshotStateKt.e(EmptyLazyGridLayoutInfo.INSTANCE, null, 2, null);
        this.internalInteractionSource = InteractionSourceKt.a();
        this.slotsPerLine$delegate = SnapshotStateKt__SnapshotStateKt.e(0, null, 2, null);
        this.density$delegate = SnapshotStateKt__SnapshotStateKt.e(DensityKt.a(1.0f, 1.0f), null, 2, null);
        this.isVertical$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);
        this.scrollableState = ScrollableStateKt.a(new LazyGridState$scrollableState$1(this));
        this.prefetchingEnabled = true;
        this.lineToPrefetch = -1;
        this.currentLinePrefetchHandles = new MutableVector<>(new LazyLayoutPrefetchState.PrefetchHandle[16], 0);
        this.remeasurement$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.remeasurementModifier = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.grid.LazyGridState$remeasurementModifier$1
            @Override // androidx.compose.ui.Modifier
            public /* synthetic */ Modifier B(Modifier modifier) {
                return a.a(this, modifier);
            }

            @Override // androidx.compose.ui.Modifier
            public /* synthetic */ Object V(Object obj, p pVar) {
                return androidx.compose.ui.b.c(this, obj, pVar);
            }

            @Override // androidx.compose.ui.Modifier
            public /* synthetic */ Object a0(Object obj, p pVar) {
                return androidx.compose.ui.b.b(this, obj, pVar);
            }

            @Override // androidx.compose.ui.Modifier
            public /* synthetic */ boolean d0(l lVar) {
                return androidx.compose.ui.b.a(this, lVar);
            }

            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public void q0(@NotNull Remeasurement remeasurement) {
                t.j(remeasurement, "remeasurement");
                this.this$0.B(remeasurement);
            }
        };
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.prefetchInfoRetriever$delegate = SnapshotStateKt__SnapshotStateKt.e(LazyGridState$prefetchInfoRetriever$2.INSTANCE, null, 2, null);
        this.placementAnimator$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.prefetchState = new LazyLayoutPrefetchState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(Remeasurement remeasurement) {
        this.remeasurement$delegate.setValue(remeasurement);
    }

    private final Remeasurement q() {
        return (Remeasurement) this.remeasurement$delegate.getValue();
    }

    private final void u(float f) {
        int iD;
        int index;
        MutableVector<LazyLayoutPrefetchState.PrefetchHandle> mutableVector;
        int iN;
        LazyLayoutPrefetchState lazyLayoutPrefetchState = this.prefetchState;
        if (this.prefetchingEnabled) {
            LazyGridLayoutInfo lazyGridLayoutInfoM = m();
            if (!lazyGridLayoutInfoM.b().isEmpty()) {
                boolean z6 = f < 0.0f;
                if (z6) {
                    LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) d0.v0(lazyGridLayoutInfoM.b());
                    iD = (t() ? lazyGridItemInfo.d() : lazyGridItemInfo.b()) + 1;
                    index = ((LazyGridItemInfo) d0.v0(lazyGridLayoutInfoM.b())).getIndex() + 1;
                } else {
                    LazyGridItemInfo lazyGridItemInfo2 = (LazyGridItemInfo) d0.j0(lazyGridLayoutInfoM.b());
                    iD = (t() ? lazyGridItemInfo2.d() : lazyGridItemInfo2.b()) - 1;
                    index = ((LazyGridItemInfo) d0.j0(lazyGridLayoutInfoM.b())).getIndex() - 1;
                }
                if (iD == this.lineToPrefetch || index < 0 || index >= lazyGridLayoutInfoM.a()) {
                    return;
                }
                if (this.wasScrollingForward != z6 && (iN = (mutableVector = this.currentLinePrefetchHandles).n()) > 0) {
                    LazyLayoutPrefetchState.PrefetchHandle[] prefetchHandleArrM = mutableVector.m();
                    int i10 = 0;
                    do {
                        prefetchHandleArrM[i10].cancel();
                        i10++;
                    } while (i10 < iN);
                }
                this.wasScrollingForward = z6;
                this.lineToPrefetch = iD;
                this.currentLinePrefetchHandles.h();
                List<u<Integer, Constraints>> listInvoke = o().invoke(LineIndex.a(LineIndex.b(iD)));
                int size = listInvoke.size();
                for (int i11 = 0; i11 < size; i11++) {
                    u<Integer, Constraints> uVar = listInvoke.get(i11);
                    this.currentLinePrefetchHandles.b(lazyLayoutPrefetchState.b(uVar.c().intValue(), uVar.d().t()));
                }
            }
        }
    }

    public static /* synthetic */ Object x(LazyGridState lazyGridState, int i10, int i11, d dVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return lazyGridState.w(i10, i11, dVar);
    }

    public final void A(@NotNull l<? super LineIndex, ? extends List<u<Integer, Constraints>>> lVar) {
        t.j(lVar, "<set-?>");
        this.prefetchInfoRetriever$delegate.setValue(lVar);
    }

    public final void C(int i10) {
        this.slotsPerLine$delegate.setValue(Integer.valueOf(i10));
    }

    public final void D(boolean z6) {
        this.isVertical$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void E(int i10, int i11) {
        this.scrollPosition.c(ItemIndex.b(i10), i11);
        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimatorN = n();
        if (lazyGridItemPlacementAnimatorN != null) {
            lazyGridItemPlacementAnimatorN.f();
        }
        Remeasurement remeasurementQ = q();
        if (remeasurementQ != null) {
            remeasurementQ.a();
        }
    }

    public final void F(@NotNull LazyGridItemProvider itemProvider) {
        t.j(itemProvider, "itemProvider");
        this.scrollPosition.h(itemProvider);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float a(float f) {
        return this.scrollableState.a(f);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    @Nullable
    public Object b(@NotNull MutatePriority mutatePriority, @NotNull p<? super ScrollScope, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super l0> dVar) {
        LazyGridState$scroll$1 lazyGridState$scroll$1;
        LazyGridState lazyGridState;
        if (dVar instanceof LazyGridState$scroll$1) {
            lazyGridState$scroll$1 = (LazyGridState$scroll$1) dVar;
            int i10 = lazyGridState$scroll$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                lazyGridState$scroll$1.label = i10 - Integer.MIN_VALUE;
            } else {
                lazyGridState$scroll$1 = new LazyGridState$scroll$1(this, dVar);
            }
        } else {
            lazyGridState$scroll$1 = new LazyGridState$scroll$1(this, dVar);
        }
        Object obj = lazyGridState$scroll$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = lazyGridState$scroll$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                pVar = (p) lazyGridState$scroll$1.L$2;
                mutatePriority = (MutatePriority) lazyGridState$scroll$1.L$1;
                lazyGridState = (LazyGridState) lazyGridState$scroll$1.L$0;
                w.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            }
            return l0.INSTANCE;
        }
        w.b(obj);
        AwaitFirstLayoutModifier awaitFirstLayoutModifier = this.awaitLayoutModifier;
        lazyGridState$scroll$1.L$0 = this;
        lazyGridState$scroll$1.L$1 = mutatePriority;
        lazyGridState$scroll$1.L$2 = pVar;
        lazyGridState$scroll$1.label = 1;
        if (awaitFirstLayoutModifier.a(lazyGridState$scroll$1) == objE) {
            return objE;
        }
        lazyGridState = this;
        ScrollableState scrollableState = lazyGridState.scrollableState;
        lazyGridState$scroll$1.L$0 = null;
        lazyGridState$scroll$1.L$1 = null;
        lazyGridState$scroll$1.L$2 = null;
        lazyGridState$scroll$1.label = 2;
        if (scrollableState.b(mutatePriority, pVar, lazyGridState$scroll$1) == objE) {
            return objE;
        }
        return l0.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean c() {
        return this.scrollableState.c();
    }

    public final void f(@NotNull LazyGridMeasureResult result) {
        t.j(result, "result");
        this.scrollPosition.g(result);
        this.scrollToBeConsumed -= result.f();
        this.layoutInfoState.setValue(result);
        this.canScrollForward = result.e();
        LazyMeasuredLine lazyMeasuredLineG = result.g();
        this.canScrollBackward = ((lazyMeasuredLineG == null || lazyMeasuredLineG.a() == 0) && result.h() == 0) ? false : true;
        this.numMeasurePasses++;
    }

    @NotNull
    public final Density i() {
        return (Density) this.density$delegate.getValue();
    }

    public final int j() {
        return this.scrollPosition.a();
    }

    public final int k() {
        return this.scrollPosition.b();
    }

    @NotNull
    public final LazyGridLayoutInfo m() {
        return this.layoutInfoState.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final LazyGridItemPlacementAnimator n() {
        return (LazyGridItemPlacementAnimator) this.placementAnimator$delegate.getValue();
    }

    @NotNull
    public final l<LineIndex, List<u<Integer, Constraints>>> o() {
        return (l) this.prefetchInfoRetriever$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean t() {
        return ((Boolean) this.isVertical$delegate.getValue()).booleanValue();
    }

    public final void y(@NotNull Density density) {
        t.j(density, "<set-?>");
        this.density$delegate.setValue(density);
    }

    public final void z(@Nullable LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator) {
        this.placementAnimator$delegate.setValue(lazyGridItemPlacementAnimator);
    }

    public /* synthetic */ LazyGridState(int i10, int i11, int i12, k kVar) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11);
    }
}
