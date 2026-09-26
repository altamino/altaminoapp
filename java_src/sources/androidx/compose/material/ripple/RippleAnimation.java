package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.x;
import kotlinx.coroutines.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class RippleAnimation {

    @NotNull
    private final Animatable<Float, AnimationVector1D> animatedAlpha;

    @NotNull
    private final Animatable<Float, AnimationVector1D> animatedCenterPercent;

    @NotNull
    private final Animatable<Float, AnimationVector1D> animatedRadiusPercent;
    private final boolean bounded;

    @NotNull
    private final MutableState finishRequested$delegate;

    @NotNull
    private final x<l0> finishSignalDeferred;

    @NotNull
    private final MutableState finishedFadingIn$delegate;

    @Nullable
    private Offset origin;
    private final float radius;

    @Nullable
    private Float startRadius;

    @Nullable
    private Offset targetCenter;

    @Nullable
    private Float targetRadius;

    public /* synthetic */ RippleAnimation(Offset offset, float f, boolean z6, k kVar) {
        this(offset, f, z6);
    }

    public final void h() {
        k(true);
        this.finishSignalDeferred.o(l0.INSTANCE);
    }

    private RippleAnimation(Offset offset, float f, boolean z6) {
        this.origin = offset;
        this.radius = f;
        this.bounded = z6;
        this.animatedAlpha = AnimatableKt.b(0.0f, 0.0f, 2, null);
        this.animatedRadiusPercent = AnimatableKt.b(0.0f, 0.0f, 2, null);
        this.animatedCenterPercent = AnimatableKt.b(0.0f, 0.0f, 2, null);
        this.finishSignalDeferred = z.a(null);
        Boolean bool = Boolean.FALSE;
        this.finishedFadingIn$delegate = SnapshotStateKt__SnapshotStateKt.e(bool, null, 2, null);
        this.finishRequested$delegate = SnapshotStateKt__SnapshotStateKt.e(bool, null, 2, null);
    }

    private final Object f(d<? super l0> dVar) {
        Object objF = p0.f(new RippleAnimation$fadeIn$2(this, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    private final Object g(d<? super l0> dVar) {
        Object objF = p0.f(new RippleAnimation$fadeOut$2(this, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean i() {
        return ((Boolean) this.finishRequested$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean j() {
        return ((Boolean) this.finishedFadingIn$delegate.getValue()).booleanValue();
    }

    private final void k(boolean z6) {
        this.finishRequested$delegate.setValue(Boolean.valueOf(z6));
    }

    private final void l(boolean z6) {
        this.finishedFadingIn$delegate.setValue(Boolean.valueOf(z6));
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0071 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object d(@NotNull d<? super l0> dVar) {
        RippleAnimation$animate$1 rippleAnimation$animate$1;
        RippleAnimation rippleAnimation;
        if (dVar instanceof RippleAnimation$animate$1) {
            rippleAnimation$animate$1 = (RippleAnimation$animate$1) dVar;
            int i10 = rippleAnimation$animate$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                rippleAnimation$animate$1.label = i10 - Integer.MIN_VALUE;
            } else {
                rippleAnimation$animate$1 = new RippleAnimation$animate$1(this, dVar);
            }
        } else {
            rippleAnimation$animate$1 = new RippleAnimation$animate$1(this, dVar);
        }
        Object obj = rippleAnimation$animate$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = rippleAnimation$animate$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                rippleAnimation = (RippleAnimation) rippleAnimation$animate$1.L$0;
                w.b(obj);
            } else if (i11 == 2) {
                rippleAnimation = (RippleAnimation) rippleAnimation$animate$1.L$0;
                w.b(obj);
                rippleAnimation$animate$1.L$0 = null;
                rippleAnimation$animate$1.label = 3;
                if (rippleAnimation.g(rippleAnimation$animate$1) == objE) {
                    return objE;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            }
            return l0.INSTANCE;
        }
        w.b(obj);
        rippleAnimation$animate$1.L$0 = this;
        rippleAnimation$animate$1.label = 1;
        if (f(rippleAnimation$animate$1) == objE) {
            return objE;
        }
        rippleAnimation = this;
        rippleAnimation.l(true);
        x<l0> xVar = rippleAnimation.finishSignalDeferred;
        rippleAnimation$animate$1.L$0 = rippleAnimation;
        rippleAnimation$animate$1.label = 2;
        if (xVar.i(rippleAnimation$animate$1) == objE) {
            return objE;
        }
        rippleAnimation$animate$1.L$0 = null;
        rippleAnimation$animate$1.label = 3;
        if (rippleAnimation.g(rippleAnimation$animate$1) == objE) {
            return objE;
        }
        return l0.INSTANCE;
    }

    public final void e(@NotNull DrawScope draw, long j6) {
        t.j(draw, "$this$draw");
        if (this.startRadius == null) {
            this.startRadius = Float.valueOf(RippleAnimationKt.b(draw.c()));
        }
        if (this.targetRadius == null) {
            this.targetRadius = Float.isNaN(this.radius) ? Float.valueOf(RippleAnimationKt.a(draw, this.bounded, draw.c())) : Float.valueOf(draw.H0(this.radius));
        }
        if (this.origin == null) {
            this.origin = Offset.d(draw.W());
        }
        if (this.targetCenter == null) {
            this.targetCenter = Offset.d(OffsetKt.a(Size.i(draw.c()) / 2.0f, Size.g(draw.c()) / 2.0f));
        }
        float fFloatValue = (!i() || j()) ? this.animatedAlpha.n().floatValue() : 1.0f;
        Float f = this.startRadius;
        t.g(f);
        float fFloatValue2 = f.floatValue();
        Float f6 = this.targetRadius;
        t.g(f6);
        float fA = MathHelpersKt.a(fFloatValue2, f6.floatValue(), this.animatedRadiusPercent.n().floatValue());
        Offset offset = this.origin;
        t.g(offset);
        float fM = Offset.m(offset.u());
        Offset offset2 = this.targetCenter;
        t.g(offset2);
        float fA2 = MathHelpersKt.a(fM, Offset.m(offset2.u()), this.animatedCenterPercent.n().floatValue());
        Offset offset3 = this.origin;
        t.g(offset3);
        float fN = Offset.n(offset3.u());
        Offset offset4 = this.targetCenter;
        t.g(offset4);
        long jA = OffsetKt.a(fA2, MathHelpersKt.a(fN, Offset.n(offset4.u()), this.animatedCenterPercent.n().floatValue()));
        long jL = Color.l(j6, Color.o(j6) * fFloatValue, 0.0f, 0.0f, 0.0f, 14, null);
        if (!this.bounded) {
            androidx.compose.ui.graphics.drawscope.a.e(draw, jL, fA, jA, 0.0f, null, null, 0, 120, null);
            return;
        }
        float fI = Size.i(draw.c());
        float fG = Size.g(draw.c());
        int iB = ClipOp.Companion.b();
        DrawContext drawContextT = draw.T();
        long jC = drawContextT.c();
        drawContextT.a().r();
        drawContextT.d().a(0.0f, 0.0f, fI, fG, iB);
        androidx.compose.ui.graphics.drawscope.a.e(draw, jL, fA, jA, 0.0f, null, null, 0, 120, null);
        drawContextT.a().n();
        drawContextT.b(jC);
    }
}
