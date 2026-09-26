package androidx.compose.foundation.gestures;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.coroutines.d;
import kotlin.jvm.internal.o0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
final class ScrollingLogic {

    @NotNull
    private final FlingBehavior flingBehavior;

    @NotNull
    private final State<NestedScrollDispatcher> nestedScrollDispatcher;

    @NotNull
    private final Orientation orientation;

    @Nullable
    private final OverscrollEffect overscrollEffect;
    private final boolean reverseDirection;

    @NotNull
    private final ScrollableState scrollableState;

    public final long a(@NotNull ScrollScope dispatchScroll, long j6, @Nullable Offset offset, int i10) {
        t.j(dispatchScroll, "$this$dispatchScroll");
        OverscrollEffect overscrollEffect = this.overscrollEffect;
        long jQ = Offset.q(j6, (overscrollEffect == null || !overscrollEffect.isEnabled()) ? Offset.Companion.c() : this.overscrollEffect.d(j6, offset, i10));
        NestedScrollDispatcher value = this.nestedScrollDispatcher.getValue();
        long jQ2 = Offset.q(jQ, value.d(jQ, i10));
        long jH = h(l(dispatchScroll.a(k(h(jQ2)))));
        long jQ3 = Offset.q(jQ2, jH);
        long jB = value.b(jH, jQ3, i10);
        OverscrollEffect overscrollEffect2 = this.overscrollEffect;
        if (overscrollEffect2 != null && overscrollEffect2.isEnabled()) {
            this.overscrollEffect.e(jQ2, Offset.q(jQ3, jB), offset, i10);
        }
        return jQ3;
    }

    @NotNull
    public final FlingBehavior c() {
        return this.flingBehavior;
    }

    @NotNull
    public final ScrollableState d() {
        return this.scrollableState;
    }

    public final float g(float f) {
        return this.reverseDirection ? f * (-1) : f;
    }

    public final long l(float f) {
        if (f == 0.0f) {
            return Offset.Companion.c();
        }
        return this.orientation == Orientation.Horizontal ? OffsetKt.a(f, 0.0f) : OffsetKt.a(0.0f, f);
    }

    public ScrollingLogic(@NotNull Orientation orientation, boolean z6, @NotNull State<NestedScrollDispatcher> nestedScrollDispatcher, @NotNull ScrollableState scrollableState, @NotNull FlingBehavior flingBehavior, @Nullable OverscrollEffect overscrollEffect) {
        t.j(orientation, "orientation");
        t.j(nestedScrollDispatcher, "nestedScrollDispatcher");
        t.j(scrollableState, "scrollableState");
        t.j(flingBehavior, "flingBehavior");
        this.orientation = orientation;
        this.reverseDirection = z6;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        this.scrollableState = scrollableState;
        this.flingBehavior = flingBehavior;
        this.overscrollEffect = overscrollEffect;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Nullable
    public final Object b(long j6, @NotNull d<? super Velocity> dVar) {
        ScrollingLogic$doFlingAnimation$1 scrollingLogic$doFlingAnimation$1;
        o0 o0Var;
        if (dVar instanceof ScrollingLogic$doFlingAnimation$1) {
            scrollingLogic$doFlingAnimation$1 = (ScrollingLogic$doFlingAnimation$1) dVar;
            int i10 = scrollingLogic$doFlingAnimation$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                scrollingLogic$doFlingAnimation$1.label = i10 - Integer.MIN_VALUE;
            } else {
                scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, dVar);
            }
        } else {
            scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, dVar);
        }
        ScrollingLogic$doFlingAnimation$1 scrollingLogic$doFlingAnimation$2 = scrollingLogic$doFlingAnimation$1;
        Object obj = scrollingLogic$doFlingAnimation$2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = scrollingLogic$doFlingAnimation$2.label;
        if (i11 == 0) {
            w.b(obj);
            o0 o0Var2 = new o0();
            o0Var2.element = j6;
            ScrollableState scrollableState = this.scrollableState;
            ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$3 = new ScrollingLogic$doFlingAnimation$2(this, o0Var2, j6, null);
            scrollingLogic$doFlingAnimation$2.L$0 = o0Var2;
            scrollingLogic$doFlingAnimation$2.label = 1;
            if (b.a(scrollableState, null, scrollingLogic$doFlingAnimation$3, scrollingLogic$doFlingAnimation$2, 1, null) == objE) {
                return objE;
            }
            o0Var = o0Var2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o0Var = (o0) scrollingLogic$doFlingAnimation$2.L$0;
            w.b(obj);
        }
        return Velocity.b(o0Var.element);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00be A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00fa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:46:0x010a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object e(float f, @NotNull d<? super l0> dVar) {
        ScrollingLogic$onDragStopped$1 scrollingLogic$onDragStopped$1;
        float fJ;
        float f6;
        ScrollingLogic scrollingLogic;
        ScrollingLogic scrollingLogic2;
        ScrollingLogic scrollingLogic3;
        long jM;
        long j6;
        long jK;
        long j10;
        long jN;
        long j11;
        OverscrollEffect overscrollEffect;
        if (dVar instanceof ScrollingLogic$onDragStopped$1) {
            scrollingLogic$onDragStopped$1 = (ScrollingLogic$onDragStopped$1) dVar;
            int i10 = scrollingLogic$onDragStopped$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                scrollingLogic$onDragStopped$1.label = i10 - Integer.MIN_VALUE;
            } else {
                scrollingLogic$onDragStopped$1 = new ScrollingLogic$onDragStopped$1(this, dVar);
            }
        } else {
            scrollingLogic$onDragStopped$1 = new ScrollingLogic$onDragStopped$1(this, dVar);
        }
        Object objF = scrollingLogic$onDragStopped$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = scrollingLogic$onDragStopped$1.label;
        if (i11 == 0) {
            w.b(objF);
            OverscrollEffect overscrollEffect2 = this.overscrollEffect;
            if (overscrollEffect2 == null || !overscrollEffect2.isEnabled()) {
                fJ = 0.0f;
                f6 = f;
                scrollingLogic = this;
            } else {
                OverscrollEffect overscrollEffect3 = this.overscrollEffect;
                long jM2 = m(f);
                scrollingLogic$onDragStopped$1.L$0 = this;
                scrollingLogic$onDragStopped$1.L$1 = this;
                scrollingLogic$onDragStopped$1.F$0 = f;
                scrollingLogic$onDragStopped$1.label = 1;
                objF = overscrollEffect3.f(jM2, scrollingLogic$onDragStopped$1);
                if (objF == objE) {
                    return objE;
                }
                scrollingLogic2 = this;
                scrollingLogic3 = scrollingLogic2;
            }
            jM = scrollingLogic.m(f6 - fJ);
            NestedScrollDispatcher value = scrollingLogic.nestedScrollDispatcher.getValue();
            scrollingLogic$onDragStopped$1.L$0 = scrollingLogic;
            scrollingLogic$onDragStopped$1.L$1 = null;
            scrollingLogic$onDragStopped$1.J$0 = jM;
            scrollingLogic$onDragStopped$1.label = 2;
            objF = value.c(jM, scrollingLogic$onDragStopped$1);
            if (objF == objE) {
                return objE;
            }
            j6 = jM;
            jK = Velocity.k(j6, ((Velocity) objF).n());
            scrollingLogic$onDragStopped$1.L$0 = scrollingLogic;
            scrollingLogic$onDragStopped$1.J$0 = jK;
            scrollingLogic$onDragStopped$1.label = 3;
            objF = scrollingLogic.b(jK, scrollingLogic$onDragStopped$1);
            if (objF == objE) {
                return objE;
            }
            j10 = jK;
            jN = ((Velocity) objF).n();
            NestedScrollDispatcher value2 = scrollingLogic.nestedScrollDispatcher.getValue();
            long jK2 = Velocity.k(j10, jN);
            scrollingLogic$onDragStopped$1.L$0 = scrollingLogic;
            scrollingLogic$onDragStopped$1.J$0 = jN;
            scrollingLogic$onDragStopped$1.label = 4;
            objF = value2.a(jK2, jN, scrollingLogic$onDragStopped$1);
            if (objF == objE) {
                return objE;
            }
            j11 = jN;
            long jK3 = Velocity.k(j11, ((Velocity) objF).n());
            overscrollEffect = scrollingLogic.overscrollEffect;
            if (overscrollEffect != null) {
            }
            return l0.INSTANCE;
        }
        if (i11 == 1) {
            f = scrollingLogic$onDragStopped$1.F$0;
            scrollingLogic2 = (ScrollingLogic) scrollingLogic$onDragStopped$1.L$1;
            scrollingLogic3 = (ScrollingLogic) scrollingLogic$onDragStopped$1.L$0;
            w.b(objF);
        } else {
            if (i11 == 2) {
                j6 = scrollingLogic$onDragStopped$1.J$0;
                scrollingLogic = (ScrollingLogic) scrollingLogic$onDragStopped$1.L$0;
                w.b(objF);
                jK = Velocity.k(j6, ((Velocity) objF).n());
                scrollingLogic$onDragStopped$1.L$0 = scrollingLogic;
                scrollingLogic$onDragStopped$1.J$0 = jK;
                scrollingLogic$onDragStopped$1.label = 3;
                objF = scrollingLogic.b(jK, scrollingLogic$onDragStopped$1);
                if (objF == objE) {
                    return objE;
                }
                j10 = jK;
                jN = ((Velocity) objF).n();
                NestedScrollDispatcher value3 = scrollingLogic.nestedScrollDispatcher.getValue();
                long jK4 = Velocity.k(j10, jN);
                scrollingLogic$onDragStopped$1.L$0 = scrollingLogic;
                scrollingLogic$onDragStopped$1.J$0 = jN;
                scrollingLogic$onDragStopped$1.label = 4;
                objF = value3.a(jK4, jN, scrollingLogic$onDragStopped$1);
                if (objF == objE) {
                    return objE;
                }
                j11 = jN;
                long jK5 = Velocity.k(j11, ((Velocity) objF).n());
                overscrollEffect = scrollingLogic.overscrollEffect;
                if (overscrollEffect != null) {
                }
                return l0.INSTANCE;
            }
            if (i11 == 3) {
                j10 = scrollingLogic$onDragStopped$1.J$0;
                scrollingLogic = (ScrollingLogic) scrollingLogic$onDragStopped$1.L$0;
                w.b(objF);
                jN = ((Velocity) objF).n();
                NestedScrollDispatcher value4 = scrollingLogic.nestedScrollDispatcher.getValue();
                long jK6 = Velocity.k(j10, jN);
                scrollingLogic$onDragStopped$1.L$0 = scrollingLogic;
                scrollingLogic$onDragStopped$1.J$0 = jN;
                scrollingLogic$onDragStopped$1.label = 4;
                objF = value4.a(jK6, jN, scrollingLogic$onDragStopped$1);
                if (objF == objE) {
                    return objE;
                }
                j11 = jN;
                long jK7 = Velocity.k(j11, ((Velocity) objF).n());
                overscrollEffect = scrollingLogic.overscrollEffect;
                if (overscrollEffect != null) {
                }
                return l0.INSTANCE;
            }
            if (i11 == 4) {
                j11 = scrollingLogic$onDragStopped$1.J$0;
                scrollingLogic = (ScrollingLogic) scrollingLogic$onDragStopped$1.L$0;
                w.b(objF);
                long jK8 = Velocity.k(j11, ((Velocity) objF).n());
                overscrollEffect = scrollingLogic.overscrollEffect;
                if (overscrollEffect != null || !overscrollEffect.isEnabled()) {
                    return l0.INSTANCE;
                }
                OverscrollEffect overscrollEffect4 = scrollingLogic.overscrollEffect;
                long jM3 = scrollingLogic.m(scrollingLogic.j(jK8));
                scrollingLogic$onDragStopped$1.L$0 = null;
                scrollingLogic$onDragStopped$1.label = 5;
                if (overscrollEffect4.a(jM3, scrollingLogic$onDragStopped$1) == objE) {
                    return objE;
                }
            } else {
                if (i11 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(objF);
            }
        }
        return l0.INSTANCE;
        fJ = scrollingLogic2.j(((Velocity) objF).n());
        f6 = f;
        scrollingLogic = scrollingLogic3;
        jM = scrollingLogic.m(f6 - fJ);
        NestedScrollDispatcher value5 = scrollingLogic.nestedScrollDispatcher.getValue();
        scrollingLogic$onDragStopped$1.L$0 = scrollingLogic;
        scrollingLogic$onDragStopped$1.L$1 = null;
        scrollingLogic$onDragStopped$1.J$0 = jM;
        scrollingLogic$onDragStopped$1.label = 2;
        objF = value5.c(jM, scrollingLogic$onDragStopped$1);
        if (objF == objE) {
            return objE;
        }
        j6 = jM;
        jK = Velocity.k(j6, ((Velocity) objF).n());
        scrollingLogic$onDragStopped$1.L$0 = scrollingLogic;
        scrollingLogic$onDragStopped$1.J$0 = jK;
        scrollingLogic$onDragStopped$1.label = 3;
        objF = scrollingLogic.b(jK, scrollingLogic$onDragStopped$1);
        if (objF == objE) {
            return objE;
        }
        j10 = jK;
        jN = ((Velocity) objF).n();
        NestedScrollDispatcher value6 = scrollingLogic.nestedScrollDispatcher.getValue();
        long jK9 = Velocity.k(j10, jN);
        scrollingLogic$onDragStopped$1.L$0 = scrollingLogic;
        scrollingLogic$onDragStopped$1.J$0 = jN;
        scrollingLogic$onDragStopped$1.label = 4;
        objF = value6.a(jK9, jN, scrollingLogic$onDragStopped$1);
        if (objF == objE) {
            return objE;
        }
        j11 = jN;
        long jK10 = Velocity.k(j11, ((Velocity) objF).n());
        overscrollEffect = scrollingLogic.overscrollEffect;
        if (overscrollEffect != null) {
        }
        return l0.INSTANCE;
    }

    public final long f(long j6) {
        return this.scrollableState.c() ? Offset.Companion.c() : l(g(this.scrollableState.a(g(k(j6)))));
    }

    public final long h(long j6) {
        return this.reverseDirection ? Offset.s(j6, -1.0f) : j6;
    }

    public final boolean i() {
        OverscrollEffect overscrollEffect;
        return this.scrollableState.c() || ((overscrollEffect = this.overscrollEffect) != null && overscrollEffect.b());
    }

    public final float j(long j6) {
        return this.orientation == Orientation.Horizontal ? Velocity.h(j6) : Velocity.i(j6);
    }

    public final float k(long j6) {
        return this.orientation == Orientation.Horizontal ? Offset.m(j6) : Offset.n(j6);
    }

    public final long m(float f) {
        return this.orientation == Orientation.Horizontal ? VelocityKt.a(f, 0.0f) : VelocityKt.a(0.0f, f);
    }

    public final long n(long j6, float f) {
        return this.orientation == Orientation.Horizontal ? Velocity.e(j6, f, 0.0f, 2, null) : Velocity.e(j6, 0.0f, f, 1, null);
    }
}
