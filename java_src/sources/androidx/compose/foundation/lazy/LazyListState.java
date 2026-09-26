package androidx.compose.foundation.lazy;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.gestures.b;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import e8.l;
import e8.p;
import kotlin.collections.d0;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@Stable
public final class LazyListState implements ScrollableState {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Saver<LazyListState, ?> Saver = ListSaverKt.a(LazyListState$Companion$Saver$1.INSTANCE, LazyListState$Companion$Saver$2.INSTANCE);

    @NotNull
    private final AwaitFirstLayoutModifier awaitLayoutModifier;
    private boolean canScrollBackward;
    private boolean canScrollForward;

    @Nullable
    private LazyLayoutPrefetchState.PrefetchHandle currentPrefetchHandle;

    @NotNull
    private final MutableState density$delegate;
    private int indexToPrefetch;

    @NotNull
    private final MutableInteractionSource internalInteractionSource;

    @NotNull
    private final MutableState<LazyListLayoutInfo> layoutInfoState;
    private int numMeasurePasses;

    @NotNull
    private final MutableState placementAnimator$delegate;

    @NotNull
    private final LazyLayoutPrefetchState prefetchState;
    private boolean prefetchingEnabled;

    @NotNull
    private final MutableState premeasureConstraints$delegate;

    @NotNull
    private final MutableState remeasurement$delegate;

    @NotNull
    private final RemeasurementModifier remeasurementModifier;

    @NotNull
    private final LazyListScrollPosition scrollPosition;
    private float scrollToBeConsumed;

    @NotNull
    private final ScrollableState scrollableState;
    private boolean wasScrollingForward;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Saver<LazyListState, ?> a() {
            return LazyListState.Saver;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LazyListState() {
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
    public final LazyLayoutPrefetchState o() {
        return this.prefetchState;
    }

    @NotNull
    public final RemeasurementModifier r() {
        return this.remeasurementModifier;
    }

    public final float s() {
        return this.scrollToBeConsumed;
    }

    public final float u(float f) {
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
                t(f7 - this.scrollToBeConsumed);
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
    public final Object v(int i10, int i11, @NotNull d<? super l0> dVar) {
        Object objA = b.a(this, null, new LazyListState$scrollToItem$2(this, i10, i11, null), dVar, 1, null);
        return objA == kotlin.coroutines.intrinsics.d.e() ? objA : l0.INSTANCE;
    }

    public LazyListState(int i10, int i11) {
        this.scrollPosition = new LazyListScrollPosition(i10, i11);
        this.layoutInfoState = SnapshotStateKt__SnapshotStateKt.e(EmptyLazyListLayoutInfo.INSTANCE, null, 2, null);
        this.internalInteractionSource = InteractionSourceKt.a();
        this.density$delegate = SnapshotStateKt__SnapshotStateKt.e(DensityKt.a(1.0f, 1.0f), null, 2, null);
        this.scrollableState = ScrollableStateKt.a(new LazyListState$scrollableState$1(this));
        this.prefetchingEnabled = true;
        this.indexToPrefetch = -1;
        this.remeasurement$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.remeasurementModifier = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.LazyListState$remeasurementModifier$1
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
                this.this$0.A(remeasurement);
            }
        };
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.placementAnimator$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.premeasureConstraints$delegate = SnapshotStateKt__SnapshotStateKt.e(Constraints.b(ConstraintsKt.b(0, 0, 0, 0, 15, null)), null, 2, null);
        this.prefetchState = new LazyLayoutPrefetchState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(Remeasurement remeasurement) {
        this.remeasurement$delegate.setValue(remeasurement);
    }

    private final void t(float f) {
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle;
        if (this.prefetchingEnabled) {
            LazyListLayoutInfo lazyListLayoutInfoM = m();
            if (!lazyListLayoutInfoM.b().isEmpty()) {
                boolean z6 = f < 0.0f;
                int index = z6 ? ((LazyListItemInfo) d0.v0(lazyListLayoutInfoM.b())).getIndex() + 1 : ((LazyListItemInfo) d0.j0(lazyListLayoutInfoM.b())).getIndex() - 1;
                if (index == this.indexToPrefetch || index < 0 || index >= lazyListLayoutInfoM.a()) {
                    return;
                }
                if (this.wasScrollingForward != z6 && (prefetchHandle = this.currentPrefetchHandle) != null) {
                    prefetchHandle.cancel();
                }
                this.wasScrollingForward = z6;
                this.indexToPrefetch = index;
                this.currentPrefetchHandle = this.prefetchState.b(index, p());
            }
        }
    }

    public static /* synthetic */ Object w(LazyListState lazyListState, int i10, int i11, d dVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return lazyListState.v(i10, i11, dVar);
    }

    public final void B(int i10, int i11) {
        this.scrollPosition.c(DataIndex.b(i10), i11);
        LazyListItemPlacementAnimator lazyListItemPlacementAnimatorN = n();
        if (lazyListItemPlacementAnimatorN != null) {
            lazyListItemPlacementAnimatorN.f();
        }
        Remeasurement remeasurementQ = q();
        if (remeasurementQ != null) {
            remeasurementQ.a();
        }
    }

    public final void C(@NotNull LazyListItemProvider itemProvider) {
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
        LazyListState$scroll$1 lazyListState$scroll$1;
        LazyListState lazyListState;
        if (dVar instanceof LazyListState$scroll$1) {
            lazyListState$scroll$1 = (LazyListState$scroll$1) dVar;
            int i10 = lazyListState$scroll$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                lazyListState$scroll$1.label = i10 - Integer.MIN_VALUE;
            } else {
                lazyListState$scroll$1 = new LazyListState$scroll$1(this, dVar);
            }
        } else {
            lazyListState$scroll$1 = new LazyListState$scroll$1(this, dVar);
        }
        Object obj = lazyListState$scroll$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = lazyListState$scroll$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                pVar = (p) lazyListState$scroll$1.L$2;
                mutatePriority = (MutatePriority) lazyListState$scroll$1.L$1;
                lazyListState = (LazyListState) lazyListState$scroll$1.L$0;
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
        lazyListState$scroll$1.L$0 = this;
        lazyListState$scroll$1.L$1 = mutatePriority;
        lazyListState$scroll$1.L$2 = pVar;
        lazyListState$scroll$1.label = 1;
        if (awaitFirstLayoutModifier.a(lazyListState$scroll$1) == objE) {
            return objE;
        }
        lazyListState = this;
        ScrollableState scrollableState = lazyListState.scrollableState;
        lazyListState$scroll$1.L$0 = null;
        lazyListState$scroll$1.L$1 = null;
        lazyListState$scroll$1.L$2 = null;
        lazyListState$scroll$1.label = 2;
        if (scrollableState.b(mutatePriority, pVar, lazyListState$scroll$1) == objE) {
            return objE;
        }
        return l0.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean c() {
        return this.scrollableState.c();
    }

    public final void f(@NotNull LazyListMeasureResult result) {
        t.j(result, "result");
        this.scrollPosition.g(result);
        this.scrollToBeConsumed -= result.f();
        this.layoutInfoState.setValue(result);
        this.canScrollForward = result.e();
        LazyMeasuredItem lazyMeasuredItemG = result.g();
        this.canScrollBackward = ((lazyMeasuredItemG == null || lazyMeasuredItemG.b() == 0) && result.h() == 0) ? false : true;
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
    public final LazyListLayoutInfo m() {
        return this.layoutInfoState.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final LazyListItemPlacementAnimator n() {
        return (LazyListItemPlacementAnimator) this.placementAnimator$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long p() {
        return ((Constraints) this.premeasureConstraints$delegate.getValue()).t();
    }

    @Nullable
    public final Remeasurement q() {
        return (Remeasurement) this.remeasurement$delegate.getValue();
    }

    public final void x(@NotNull Density density) {
        t.j(density, "<set-?>");
        this.density$delegate.setValue(density);
    }

    public final void y(@Nullable LazyListItemPlacementAnimator lazyListItemPlacementAnimator) {
        this.placementAnimator$delegate.setValue(lazyListItemPlacementAnimator);
    }

    public final void z(long j6) {
        this.premeasureConstraints$delegate.setValue(Constraints.b(j6));
    }

    public /* synthetic */ LazyListState(int i10, int i11, int i12, k kVar) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11);
    }
}
