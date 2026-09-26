package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.a;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import e8.l;
import e8.p;
import j8.o;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.h;
import kotlinx.coroutines.flow.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
@Stable
@ExperimentalMaterialApi
public class SwipeableState<T> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final MutableState<Float> absoluteOffset;

    @NotNull
    private final MutableState anchors$delegate;

    @NotNull
    private final AnimationSpec<Float> animationSpec;

    @NotNull
    private final MutableState<Float> animationTarget;

    @NotNull
    private final l<T, Boolean> confirmStateChange;

    @NotNull
    private final MutableState currentValue$delegate;

    @NotNull
    private final DraggableState draggableState;

    @NotNull
    private final MutableState isAnimationRunning$delegate;

    @NotNull
    private final g<Map<Float, T>> latestNonEmptyAnchorsFlow;
    private float maxBound;
    private float minBound;

    @NotNull
    private final MutableState<Float> offsetState;

    @NotNull
    private final MutableState<Float> overflowState;

    @NotNull
    private final MutableState resistance$delegate;

    @NotNull
    private final MutableState thresholds$delegate;

    @NotNull
    private final MutableState velocityThreshold$delegate;

    /* JADX INFO: renamed from: androidx.compose.material.SwipeableState$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<T, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(T t5) {
            return Boolean.TRUE;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SwipeableState(T t5, @NotNull AnimationSpec<Float> animationSpec, @NotNull l<? super T, Boolean> confirmStateChange) {
        t.j(animationSpec, "animationSpec");
        t.j(confirmStateChange, "confirmStateChange");
        this.animationSpec = animationSpec;
        this.confirmStateChange = confirmStateChange;
        this.currentValue$delegate = SnapshotStateKt__SnapshotStateKt.e(t5, null, 2, null);
        this.isAnimationRunning$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
        Float fValueOf = Float.valueOf(0.0f);
        this.offsetState = SnapshotStateKt__SnapshotStateKt.e(fValueOf, null, 2, null);
        this.overflowState = SnapshotStateKt__SnapshotStateKt.e(fValueOf, null, 2, null);
        this.absoluteOffset = SnapshotStateKt__SnapshotStateKt.e(fValueOf, null, 2, null);
        this.animationTarget = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.anchors$delegate = SnapshotStateKt__SnapshotStateKt.e(s0.h(), null, 2, null);
        final g gVarO = SnapshotStateKt.o(new SwipeableState$latestNonEmptyAnchorsFlow$1(this));
        this.latestNonEmptyAnchorsFlow = i.L(new g<Map<Float, ? extends T>>() { // from class: androidx.compose.material.SwipeableState$special$$inlined$filter$1

            /* JADX INFO: renamed from: androidx.compose.material.SwipeableState$special$$inlined$filter$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements h {
                final /* synthetic */ h $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.compose.material.SwipeableState$special$$inlined$filter$1$2$1, reason: invalid class name */
                @f(c = "androidx.compose.material.SwipeableState$special$$inlined$filter$1$2", f = "Swipeable.kt", l = {224}, m = "emit")
                public static final class AnonymousClass1 extends d {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(kotlin.coroutines.d dVar) {
                        super(dVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(h hVar) {
                    this.$this_unsafeFlow = hVar;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                public final Object emit(Object obj, @NotNull kotlin.coroutines.d dVar) {
                    AnonymousClass1 anonymousClass1;
                    if (dVar instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) dVar;
                        int i10 = anonymousClass1.label;
                        if ((i10 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i10 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(dVar);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(dVar);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object objE = kotlin.coroutines.intrinsics.d.e();
                    int i11 = anonymousClass1.label;
                    if (i11 == 0) {
                        w.b(obj2);
                        h hVar = this.$this_unsafeFlow;
                        if (!((Map) obj).isEmpty()) {
                            anonymousClass1.label = 1;
                            if (hVar.emit(obj, anonymousClass1) == objE) {
                                return objE;
                            }
                        }
                    } else {
                        if (i11 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        w.b(obj2);
                    }
                    return l0.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.g
            @Nullable
            public Object collect(@NotNull h hVar, @NotNull kotlin.coroutines.d dVar) {
                Object objCollect = gVarO.collect(new AnonymousClass2(hVar), dVar);
                return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : l0.INSTANCE;
            }
        }, 1);
        this.minBound = Float.NEGATIVE_INFINITY;
        this.maxBound = Float.POSITIVE_INFINITY;
        this.thresholds$delegate = SnapshotStateKt__SnapshotStateKt.e(SwipeableState$thresholds$2.INSTANCE, null, 2, null);
        this.velocityThreshold$delegate = SnapshotStateKt__SnapshotStateKt.e(fValueOf, null, 2, null);
        this.resistance$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.draggableState = DraggableKt.a(new SwipeableState$draggableState$1(this));
    }

    @NotNull
    public final AnimationSpec<Float> n() {
        return this.animationSpec;
    }

    @NotNull
    public final l<T, Boolean> o() {
        return this.confirmStateChange;
    }

    @NotNull
    public final DraggableState q() {
        return this.draggableState;
    }

    public final float r() {
        return this.maxBound;
    }

    public final float s() {
        return this.minBound;
    }

    @NotNull
    public final State<Float> t() {
        return this.offsetState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(boolean z6) {
        this.isAnimationRunning$delegate.setValue(Boolean.valueOf(z6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(T t5) {
        this.currentValue$delegate.setValue(t5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object I(float f, kotlin.coroutines.d<? super l0> dVar) {
        Object objA = a.a(this.draggableState, null, new SwipeableState$snapInternalToOffset$2(f, this, null), dVar, 1, null);
        return objA == kotlin.coroutines.intrinsics.d.e() ? objA : l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object i(float f, AnimationSpec<Float> animationSpec, kotlin.coroutines.d<? super l0> dVar) {
        Object objA = a.a(this.draggableState, null, new SwipeableState$animateInternalToOffset$2(this, f, animationSpec, null), dVar, 1, null);
        return objA == kotlin.coroutines.intrinsics.d.e() ? objA : l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object k(SwipeableState swipeableState, Object obj, AnimationSpec animationSpec, kotlin.coroutines.d dVar, int i10, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: animateTo");
        }
        if ((i10 & 2) != 0) {
            animationSpec = swipeableState.animationSpec;
        }
        return swipeableState.j(obj, animationSpec, dVar);
    }

    @Nullable
    public final Object A(final float f, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objCollect = this.latestNonEmptyAnchorsFlow.collect(new h<Map<Float, ? extends T>>(this) { // from class: androidx.compose.material.SwipeableState$performFling$2
            final /* synthetic */ SwipeableState<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // kotlinx.coroutines.flow.h
            @Nullable
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public final Object emit(@NotNull Map<Float, ? extends T> map, @NotNull kotlin.coroutines.d<? super l0> dVar2) {
                Float fE = SwipeableKt.e(map, this.this$0.p());
                t.g(fE);
                float fFloatValue = fE.floatValue();
                T t5 = map.get(b.c(SwipeableKt.c(this.this$0.t().getValue().floatValue(), fFloatValue, map.keySet(), this.this$0.w(), f, this.this$0.x())));
                if (t5 != null && this.this$0.o().invoke(t5).booleanValue()) {
                    Object objK = SwipeableState.k(this.this$0, t5, null, dVar2, 2, null);
                    return objK == kotlin.coroutines.intrinsics.d.e() ? objK : l0.INSTANCE;
                }
                SwipeableState<T> swipeableState = this.this$0;
                Object objI = swipeableState.i(fFloatValue, swipeableState.n(), dVar2);
                return objI == kotlin.coroutines.intrinsics.d.e() ? objI : l0.INSTANCE;
            }
        }, dVar);
        return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:86:0x020d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:87:0x020e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.compose.material.SwipeableState] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.compose.material.SwipeableState] */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.compose.material.SwipeableState] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17, types: [androidx.compose.material.SwipeableState, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v18, types: [androidx.compose.material.SwipeableState] */
    /* JADX WARN: Type inference failed for: r2v20, types: [androidx.compose.material.SwipeableState] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.compose.material.SwipeableState, androidx.compose.material.SwipeableState<T>, java.lang.Object] */
    @Nullable
    public final Object B(@NotNull Map<Float, ? extends T> map, @NotNull Map<Float, ? extends T> map2, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        SwipeableState$processNewAnchors$1 swipeableState$processNewAnchors$1;
        float fFloatValue;
        ?? r1;
        ?? r5;
        ?? r10;
        ?? r11;
        if (dVar instanceof SwipeableState$processNewAnchors$1) {
            swipeableState$processNewAnchors$1 = (SwipeableState$processNewAnchors$1) dVar;
            int i10 = swipeableState$processNewAnchors$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                swipeableState$processNewAnchors$1.label = i10 - Integer.MIN_VALUE;
            } else {
                swipeableState$processNewAnchors$1 = new SwipeableState$processNewAnchors$1(this, dVar);
            }
        } else {
            swipeableState$processNewAnchors$1 = new SwipeableState$processNewAnchors$1(this, dVar);
        }
        Object obj = swipeableState$processNewAnchors$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = swipeableState$processNewAnchors$1.label;
        if (i11 == 0) {
            w.b(obj);
            if (map.isEmpty()) {
                Float fA0 = d0.A0(map2.keySet());
                t.g(fA0);
                this.minBound = fA0.floatValue();
                Float fY0 = d0.y0(map2.keySet());
                t.g(fY0);
                this.maxBound = fY0.floatValue();
                Float fE = SwipeableKt.e(map2, p());
                if (fE == null) {
                    throw new IllegalArgumentException("The initial value must have an associated anchor.".toString());
                }
                float fFloatValue2 = fE.floatValue();
                swipeableState$processNewAnchors$1.label = 1;
                if (I(fFloatValue2, swipeableState$processNewAnchors$1) == objE) {
                    return objE;
                }
                return l0.INSTANCE;
            }
            if (!t.e(map2, map)) {
                this.minBound = Float.NEGATIVE_INFINITY;
                this.maxBound = Float.POSITIVE_INFINITY;
                Float value = this.animationTarget.getValue();
                Object next = null;
                if (value != null) {
                    Float fE2 = SwipeableKt.e(map2, map.get(value));
                    if (fE2 != null) {
                        fFloatValue = fE2.floatValue();
                    } else {
                        Iterator<T> it = map2.keySet().iterator();
                        if (it.hasNext()) {
                            next = it.next();
                            if (it.hasNext()) {
                                float fAbs = Math.abs(((Number) next).floatValue() - value.floatValue());
                                do {
                                    Object next2 = it.next();
                                    float fAbs2 = Math.abs(((Number) next2).floatValue() - value.floatValue());
                                    if (Float.compare(fAbs, fAbs2) > 0) {
                                        next = next2;
                                        fAbs = fAbs2;
                                    }
                                } while (it.hasNext());
                            }
                        }
                        t.g(next);
                        fFloatValue = ((Number) next).floatValue();
                    }
                } else {
                    Object objP = map.get(t().getValue());
                    if (t.e(objP, p())) {
                        objP = p();
                    }
                    Float fE3 = SwipeableKt.e(map2, objP);
                    if (fE3 != null) {
                        fFloatValue = fE3.floatValue();
                    } else {
                        Iterator<T> it2 = map2.keySet().iterator();
                        if (it2.hasNext()) {
                            next = it2.next();
                            if (it2.hasNext()) {
                                float fAbs3 = Math.abs(((Number) next).floatValue() - t().getValue().floatValue());
                                do {
                                    Object next3 = it2.next();
                                    float fAbs4 = Math.abs(((Number) next3).floatValue() - t().getValue().floatValue());
                                    if (Float.compare(fAbs3, fAbs4) > 0) {
                                        next = next3;
                                        fAbs3 = fAbs4;
                                    }
                                } while (it2.hasNext());
                            }
                        }
                        t.g(next);
                        fFloatValue = ((Number) next).floatValue();
                    }
                }
                try {
                    AnimationSpec<Float> animationSpec = this.animationSpec;
                    swipeableState$processNewAnchors$1.L$0 = this;
                    swipeableState$processNewAnchors$1.L$1 = map2;
                    swipeableState$processNewAnchors$1.F$0 = fFloatValue;
                    swipeableState$processNewAnchors$1.label = 2;
                    if (i(fFloatValue, animationSpec, swipeableState$processNewAnchors$1) == objE) {
                        return objE;
                    }
                    r10 = this;
                    r10.E(s0.i(map2, b.c(fFloatValue)));
                    Float fA1 = d0.A0(map2.keySet());
                    t.g(fA1);
                    r10.minBound = fA1.floatValue();
                    Float fY1 = d0.y0(map2.keySet());
                    t.g(fY1);
                    r10.maxBound = fY1.floatValue();
                } catch (CancellationException unused) {
                    r5 = this;
                    swipeableState$processNewAnchors$1.L$0 = r5;
                    swipeableState$processNewAnchors$1.L$1 = map2;
                    swipeableState$processNewAnchors$1.F$0 = fFloatValue;
                    swipeableState$processNewAnchors$1.label = 3;
                    if (r5.I(fFloatValue, swipeableState$processNewAnchors$1) == objE) {
                        return objE;
                    }
                    r11 = r5;
                    r11.E(s0.i(map2, b.c(fFloatValue)));
                    Float fA2 = d0.A0(map2.keySet());
                    t.g(fA2);
                    r11.minBound = fA2.floatValue();
                    Float fY2 = d0.y0(map2.keySet());
                    t.g(fY2);
                    r11.maxBound = fY2.floatValue();
                } catch (Throwable th) {
                    th = th;
                    r1 = this;
                    r1.E(s0.i(map2, b.c(fFloatValue)));
                    Float fA3 = d0.A0(map2.keySet());
                    t.g(fA3);
                    r1.minBound = fA3.floatValue();
                    Float fY3 = d0.y0(map2.keySet());
                    t.g(fY3);
                    r1.maxBound = fY3.floatValue();
                    throw th;
                }
            }
        } else {
            if (i11 == 1) {
                w.b(obj);
                return l0.INSTANCE;
            }
            if (i11 == 2) {
                fFloatValue = swipeableState$processNewAnchors$1.F$0;
                map2 = (Map) swipeableState$processNewAnchors$1.L$1;
                r5 = (SwipeableState) swipeableState$processNewAnchors$1.L$0;
                try {
                    try {
                        w.b(obj);
                        r10 = r5;
                        r10.E(s0.i(map2, b.c(fFloatValue)));
                        Float fA4 = d0.A0(map2.keySet());
                        t.g(fA4);
                        r10.minBound = fA4.floatValue();
                        Float fY4 = d0.y0(map2.keySet());
                        t.g(fY4);
                        r10.maxBound = fY4.floatValue();
                    } catch (CancellationException unused2) {
                        swipeableState$processNewAnchors$1.L$0 = r5;
                        swipeableState$processNewAnchors$1.L$1 = map2;
                        swipeableState$processNewAnchors$1.F$0 = fFloatValue;
                        swipeableState$processNewAnchors$1.label = 3;
                        if (r5.I(fFloatValue, swipeableState$processNewAnchors$1) == objE) {
                            return objE;
                        }
                        r11 = r5;
                        r11.E(s0.i(map2, b.c(fFloatValue)));
                        Float fA5 = d0.A0(map2.keySet());
                        t.g(fA5);
                        r11.minBound = fA5.floatValue();
                        Float fY5 = d0.y0(map2.keySet());
                        t.g(fY5);
                        r11.maxBound = fY5.floatValue();
                        return l0.INSTANCE;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r1 = r5;
                    r1.E(s0.i(map2, b.c(fFloatValue)));
                    Float fA6 = d0.A0(map2.keySet());
                    t.g(fA6);
                    r1.minBound = fA6.floatValue();
                    Float fY6 = d0.y0(map2.keySet());
                    t.g(fY6);
                    r1.maxBound = fY6.floatValue();
                    throw th;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                fFloatValue = swipeableState$processNewAnchors$1.F$0;
                map2 = (Map) swipeableState$processNewAnchors$1.L$1;
                r1 = (SwipeableState) swipeableState$processNewAnchors$1.L$0;
                try {
                    w.b(obj);
                    r11 = r1;
                    r11.E(s0.i(map2, b.c(fFloatValue)));
                    Float fA7 = d0.A0(map2.keySet());
                    t.g(fA7);
                    r11.minBound = fA7.floatValue();
                    Float fY7 = d0.y0(map2.keySet());
                    t.g(fY7);
                    r11.maxBound = fY7.floatValue();
                } catch (Throwable th3) {
                    th = th3;
                    r1.E(s0.i(map2, b.c(fFloatValue)));
                    Float fA8 = d0.A0(map2.keySet());
                    t.g(fA8);
                    r1.minBound = fA8.floatValue();
                    Float fY8 = d0.y0(map2.keySet());
                    t.g(fY8);
                    r1.maxBound = fY8.floatValue();
                    throw th;
                }
            }
        }
        return l0.INSTANCE;
    }

    public final void C(@NotNull Map<Float, ? extends T> map) {
        t.j(map, "<set-?>");
        this.anchors$delegate.setValue(map);
    }

    public final void F(@Nullable ResistanceConfig resistanceConfig) {
        this.resistance$delegate.setValue(resistanceConfig);
    }

    public final void G(@NotNull p<? super Float, ? super Float, Float> pVar) {
        t.j(pVar, "<set-?>");
        this.thresholds$delegate.setValue(pVar);
    }

    public final void H(float f) {
        this.velocityThreshold$delegate.setValue(Float.valueOf(f));
    }

    @ExperimentalMaterialApi
    @Nullable
    public final Object j(T t5, @NotNull AnimationSpec<Float> animationSpec, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objCollect = this.latestNonEmptyAnchorsFlow.collect(new SwipeableState$animateTo$2(t5, this, animationSpec), dVar);
        return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : l0.INSTANCE;
    }

    public final void l(@NotNull Map<Float, ? extends T> newAnchors) {
        t.j(newAnchors, "newAnchors");
        if (m().isEmpty()) {
            Float fE = SwipeableKt.e(newAnchors, p());
            if (fE == null) {
                throw new IllegalArgumentException("The initial value must have an associated anchor.".toString());
            }
            this.offsetState.setValue(fE);
            this.absoluteOffset.setValue(fE);
        }
    }

    @NotNull
    public final Map<Float, T> m() {
        return (Map) this.anchors$delegate.getValue();
    }

    public final T p() {
        return this.currentValue$delegate.getValue();
    }

    @Nullable
    public final ResistanceConfig u() {
        return (ResistanceConfig) this.resistance$delegate.getValue();
    }

    public final T v() {
        float fC;
        Float value = this.animationTarget.getValue();
        if (value != null) {
            fC = value.floatValue();
        } else {
            float fFloatValue = t().getValue().floatValue();
            Float fE = SwipeableKt.e(m(), p());
            fC = SwipeableKt.c(fFloatValue, fE != null ? fE.floatValue() : t().getValue().floatValue(), m().keySet(), w(), 0.0f, Float.POSITIVE_INFINITY);
        }
        T t5 = m().get(Float.valueOf(fC));
        return t5 == null ? p() : t5;
    }

    @NotNull
    public final p<Float, Float, Float> w() {
        return (p) this.thresholds$delegate.getValue();
    }

    public final float x() {
        return ((Number) this.velocityThreshold$delegate.getValue()).floatValue();
    }

    public final boolean y() {
        return ((Boolean) this.isAnimationRunning$delegate.getValue()).booleanValue();
    }

    public final float z(float f) {
        float fM = o.m(this.absoluteOffset.getValue().floatValue() + f, this.minBound, this.maxBound) - this.absoluteOffset.getValue().floatValue();
        if (Math.abs(fM) > 0.0f) {
            this.draggableState.a(fM);
        }
        return fM;
    }

    public /* synthetic */ SwipeableState(Object obj, AnimationSpec animationSpec, l lVar, int i10, k kVar) {
        this(obj, (i10 & 2) != 0 ? SwipeableDefaults.INSTANCE.a() : animationSpec, (i10 & 4) != 0 ? AnonymousClass1.INSTANCE : lVar);
    }
}
