package androidx.compose.foundation.layout;

import android.graphics.Insets;
import android.os.CancellationSignal;
import android.view.View;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi
final class WindowInsetsNestedScrollConnection implements NestedScrollConnection, WindowInsetsAnimationControlListener {

    @Nullable
    private WindowInsetsAnimationController animationController;

    @Nullable
    private b2 animationJob;

    @NotNull
    private final CancellationSignal cancellationSignal;

    @Nullable
    private kotlinx.coroutines.o<? super WindowInsetsAnimationController> continuation;

    @NotNull
    private final Density density;
    private boolean isControllerRequested;
    private float partialConsumption;

    @NotNull
    private final SideCalculator sideCalculator;

    @NotNull
    private final View view;

    @NotNull
    private final AndroidWindowInsets windowInsets;

    /* JADX INFO: renamed from: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$onReady$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<Throwable, l0> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull Throwable it) {
            t.j(it, "it");
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }
    }

    public WindowInsetsNestedScrollConnection(@NotNull AndroidWindowInsets windowInsets, @NotNull View view, @NotNull SideCalculator sideCalculator, @NotNull Density density) {
        t.j(windowInsets, "windowInsets");
        t.j(view, "view");
        t.j(sideCalculator, "sideCalculator");
        t.j(density, "density");
        this.windowInsets = windowInsets;
        this.view = view;
        this.sideCalculator = sideCalculator;
        this.density = density;
        this.cancellationSignal = new CancellationSignal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(float f) {
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (windowInsetsAnimationController != null) {
            Insets currentInsets = windowInsetsAnimationController.getCurrentInsets();
            t.i(currentInsets, "it.currentInsets");
            windowInsetsAnimationController.setInsetsAndAlpha(this.sideCalculator.e(currentInsets, g8.c.c(f)), 1.0f, 0.0f);
        }
    }

    private final void m() {
        WindowInsetsAnimationController windowInsetsAnimationController;
        WindowInsetsAnimationController windowInsetsAnimationController2 = this.animationController;
        if (windowInsetsAnimationController2 != null && windowInsetsAnimationController2.isReady() && (windowInsetsAnimationController = this.animationController) != null) {
            windowInsetsAnimationController.finish(this.windowInsets.g());
        }
        this.animationController = null;
        kotlinx.coroutines.o<? super WindowInsetsAnimationController> oVar = this.continuation;
        if (oVar != null) {
            oVar.B(null, WindowInsetsNestedScrollConnection$animationEnded$1.INSTANCE);
        }
        this.continuation = null;
        b2 b2Var = this.animationJob;
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
        }
        this.animationJob = null;
        this.partialConsumption = 0.0f;
        this.isControllerRequested = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public final Object o(long j6, float f, boolean z6, kotlin.coroutines.d<? super Velocity> dVar) throws Throwable {
        WindowInsetsNestedScrollConnection$fling$1 windowInsetsNestedScrollConnection$fling$1;
        long j10;
        WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection;
        WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection2;
        m0 m0Var;
        long j11;
        WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection3;
        long j12;
        float f6 = f;
        if (dVar instanceof WindowInsetsNestedScrollConnection$fling$1) {
            windowInsetsNestedScrollConnection$fling$1 = (WindowInsetsNestedScrollConnection$fling$1) dVar;
            int i10 = windowInsetsNestedScrollConnection$fling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                windowInsetsNestedScrollConnection$fling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                windowInsetsNestedScrollConnection$fling$1 = new WindowInsetsNestedScrollConnection$fling$1(this, dVar);
            }
        } else {
            windowInsetsNestedScrollConnection$fling$1 = new WindowInsetsNestedScrollConnection$fling$1(this, dVar);
        }
        Object obj = windowInsetsNestedScrollConnection$fling$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = windowInsetsNestedScrollConnection$fling$1.label;
        if (i11 == 0) {
            w.b(obj);
            b2 b2Var = this.animationJob;
            if (b2Var != null) {
                b2.a.a(b2Var, null, 1, null);
            }
            this.animationJob = null;
            this.partialConsumption = 0.0f;
            if ((f6 == 0.0f && !z6) || (this.animationController == null && this.windowInsets.g() == z6)) {
                return Velocity.b(Velocity.Companion.a());
            }
            windowInsetsNestedScrollConnection$fling$1.L$0 = this;
            windowInsetsNestedScrollConnection$fling$1.J$0 = j6;
            windowInsetsNestedScrollConnection$fling$1.F$0 = f6;
            windowInsetsNestedScrollConnection$fling$1.label = 1;
            Object objP = p(windowInsetsNestedScrollConnection$fling$1);
            if (objP == objE) {
                return objE;
            }
            j10 = j6;
            obj = objP;
            windowInsetsNestedScrollConnection = this;
        } else {
            if (i11 != 1) {
                if (i11 == 2) {
                    j11 = windowInsetsNestedScrollConnection$fling$1.J$0;
                    m0Var = (m0) windowInsetsNestedScrollConnection$fling$1.L$1;
                    windowInsetsNestedScrollConnection2 = (WindowInsetsNestedScrollConnection) windowInsetsNestedScrollConnection$fling$1.L$0;
                    w.b(obj);
                    return Velocity.b(windowInsetsNestedScrollConnection2.sideCalculator.g(j11, m0Var.element));
                }
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j12 = windowInsetsNestedScrollConnection$fling$1.J$0;
                windowInsetsNestedScrollConnection3 = (WindowInsetsNestedScrollConnection) windowInsetsNestedScrollConnection$fling$1.L$0;
                w.b(obj);
                return Velocity.b(windowInsetsNestedScrollConnection3.sideCalculator.g(j12, 0.0f));
            }
            f6 = windowInsetsNestedScrollConnection$fling$1.F$0;
            j10 = windowInsetsNestedScrollConnection$fling$1.J$0;
            windowInsetsNestedScrollConnection = (WindowInsetsNestedScrollConnection) windowInsetsNestedScrollConnection$fling$1.L$0;
            w.b(obj);
        }
        WindowInsetsAnimationController windowInsetsAnimationControllerA = g.a(obj);
        if (windowInsetsAnimationControllerA == null) {
            return Velocity.b(Velocity.Companion.a());
        }
        SideCalculator sideCalculator = windowInsetsNestedScrollConnection.sideCalculator;
        Insets hiddenStateInsets = windowInsetsAnimationControllerA.getHiddenStateInsets();
        t.i(hiddenStateInsets, "animationController.hiddenStateInsets");
        int iF = sideCalculator.f(hiddenStateInsets);
        SideCalculator sideCalculator2 = windowInsetsNestedScrollConnection.sideCalculator;
        Insets shownStateInsets = windowInsetsAnimationControllerA.getShownStateInsets();
        t.i(shownStateInsets, "animationController.shownStateInsets");
        int iF2 = sideCalculator2.f(shownStateInsets);
        Insets currentInsets = windowInsetsAnimationControllerA.getCurrentInsets();
        t.i(currentInsets, "animationController.currentInsets");
        int iF3 = windowInsetsNestedScrollConnection.sideCalculator.f(currentInsets);
        if ((f6 <= 0.0f && iF3 == iF) || (f6 >= 0.0f && iF3 == iF2)) {
            windowInsetsAnimationControllerA.finish(iF3 == iF2);
            windowInsetsNestedScrollConnection.animationController = null;
            return Velocity.b(Velocity.Companion.a());
        }
        SplineBasedFloatDecayAnimationSpec splineBasedFloatDecayAnimationSpec = new SplineBasedFloatDecayAnimationSpec(windowInsetsNestedScrollConnection.density);
        float f7 = iF3 + splineBasedFloatDecayAnimationSpec.f(f6);
        float f10 = iF;
        boolean z10 = (f7 - f10) / ((float) (iF2 - iF)) > 0.5f;
        int i12 = z10 ? iF2 : iF;
        if (f7 <= iF2 && f7 >= f10) {
            WindowInsetsNestedScrollConnection$fling$3 windowInsetsNestedScrollConnection$fling$3 = new WindowInsetsNestedScrollConnection$fling$3(windowInsetsNestedScrollConnection, iF3, i12, f6, windowInsetsAnimationControllerA, z10, null);
            windowInsetsNestedScrollConnection$fling$1.L$0 = windowInsetsNestedScrollConnection;
            windowInsetsNestedScrollConnection$fling$1.J$0 = j10;
            windowInsetsNestedScrollConnection$fling$1.label = 3;
            if (p0.f(windowInsetsNestedScrollConnection$fling$3, windowInsetsNestedScrollConnection$fling$1) == objE) {
                return objE;
            }
            windowInsetsNestedScrollConnection3 = windowInsetsNestedScrollConnection;
            j12 = j10;
            return Velocity.b(windowInsetsNestedScrollConnection3.sideCalculator.g(j12, 0.0f));
        }
        m0 m0Var2 = new m0();
        WindowInsetsNestedScrollConnection$fling$2 windowInsetsNestedScrollConnection$fling$2 = new WindowInsetsNestedScrollConnection$fling$2(windowInsetsNestedScrollConnection, iF3, f6, splineBasedFloatDecayAnimationSpec, iF, iF2, m0Var2, windowInsetsAnimationControllerA, z10, null);
        windowInsetsNestedScrollConnection$fling$1.L$0 = windowInsetsNestedScrollConnection;
        windowInsetsNestedScrollConnection$fling$1.L$1 = m0Var2;
        windowInsetsNestedScrollConnection$fling$1.J$0 = j10;
        windowInsetsNestedScrollConnection$fling$1.label = 2;
        if (p0.f(windowInsetsNestedScrollConnection$fling$2, windowInsetsNestedScrollConnection$fling$1) == objE) {
            return objE;
        }
        windowInsetsNestedScrollConnection2 = windowInsetsNestedScrollConnection;
        m0Var = m0Var2;
        j11 = j10;
        return Velocity.b(windowInsetsNestedScrollConnection2.sideCalculator.g(j11, m0Var.element));
    }

    private final Object p(kotlin.coroutines.d<? super WindowInsetsAnimationController> dVar) throws Throwable {
        Object objU = this.animationController;
        if (objU == null) {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.continuation = pVar;
            q();
            objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
        }
        return objU;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q() {
        if (this.isControllerRequested) {
            return;
        }
        this.isControllerRequested = true;
        WindowInsetsController windowInsetsController = this.view.getWindowInsetsController();
        if (windowInsetsController != null) {
            windowInsetsController.controlWindowInsetsAnimation(this.windowInsets.f(), -1L, null, this.cancellationSignal, o.a(this));
        }
    }

    private final long r(long j6, float f) {
        b2 b2Var = this.animationJob;
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
            this.animationJob = null;
        }
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (f != 0.0f) {
            if (this.windowInsets.g() != (f > 0.0f) || windowInsetsAnimationController != null) {
                if (windowInsetsAnimationController == null) {
                    this.partialConsumption = 0.0f;
                    q();
                    return this.sideCalculator.c(j6);
                }
                SideCalculator sideCalculator = this.sideCalculator;
                Insets hiddenStateInsets = windowInsetsAnimationController.getHiddenStateInsets();
                t.i(hiddenStateInsets, "animationController.hiddenStateInsets");
                int iF = sideCalculator.f(hiddenStateInsets);
                SideCalculator sideCalculator2 = this.sideCalculator;
                Insets shownStateInsets = windowInsetsAnimationController.getShownStateInsets();
                t.i(shownStateInsets, "animationController.shownStateInsets");
                int iF2 = sideCalculator2.f(shownStateInsets);
                Insets currentInsets = windowInsetsAnimationController.getCurrentInsets();
                t.i(currentInsets, "animationController.currentInsets");
                int iF3 = this.sideCalculator.f(currentInsets);
                if (iF3 == (f > 0.0f ? iF2 : iF)) {
                    this.partialConsumption = 0.0f;
                    return Offset.Companion.c();
                }
                float f6 = iF3 + f + this.partialConsumption;
                int iN = j8.o.n(g8.c.c(f6), iF, iF2);
                this.partialConsumption = f6 - g8.c.c(f6);
                if (iN != iF3) {
                    windowInsetsAnimationController.setInsetsAndAlpha(this.sideCalculator.e(currentInsets, iN), 1.0f, 0.0f);
                }
                return this.sideCalculator.c(j6);
            }
        }
        return Offset.Companion.c();
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    public Object a(long j6, long j10, @NotNull kotlin.coroutines.d<? super Velocity> dVar) {
        return o(j10, this.sideCalculator.a(Velocity.h(j10), Velocity.i(j10)), true, dVar);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public long b(long j6, long j10, int i10) {
        return r(j10, this.sideCalculator.a(Offset.m(j10), Offset.n(j10)));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    public Object c(long j6, @NotNull kotlin.coroutines.d<? super Velocity> dVar) {
        return o(j6, this.sideCalculator.b(Velocity.h(j6), Velocity.i(j6)), false, dVar);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public long d(long j6, int i10) {
        return r(j6, this.sideCalculator.b(Offset.m(j6), Offset.n(j6)));
    }

    public final void n() {
        kotlinx.coroutines.o<? super WindowInsetsAnimationController> oVar = this.continuation;
        if (oVar != null) {
            oVar.B(null, WindowInsetsNestedScrollConnection$dispose$1.INSTANCE);
        }
        b2 b2Var = this.animationJob;
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
        }
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (windowInsetsAnimationController != null) {
            windowInsetsAnimationController.finish(!t.e(windowInsetsAnimationController.getCurrentInsets(), windowInsetsAnimationController.getHiddenStateInsets()));
        }
    }

    public void onFinished(@NotNull WindowInsetsAnimationController controller) {
        t.j(controller, "controller");
        m();
    }

    public void onReady(@NotNull WindowInsetsAnimationController controller, int i10) {
        t.j(controller, "controller");
        this.animationController = controller;
        this.isControllerRequested = false;
        kotlinx.coroutines.o<? super WindowInsetsAnimationController> oVar = this.continuation;
        if (oVar != null) {
            oVar.B(controller, AnonymousClass1.INSTANCE);
        }
        this.continuation = null;
    }

    public void onCancelled(@Nullable WindowInsetsAnimationController windowInsetsAnimationController) {
        m();
    }
}
