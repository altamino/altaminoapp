package androidx.compose.material.ripple;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class RippleHostView extends View {
    private static final long MinimumRippleStateChangeTime = 5;
    private static final long ResetRippleDelayDuration = 50;

    @Nullable
    private Boolean bounded;

    @Nullable
    private Long lastRippleStateChangeTimeMillis;

    @Nullable
    private e8.a<l0> onInvalidateRipple;

    @Nullable
    private Runnable resetRippleRunnable;

    @Nullable
    private UnprojectedRipple ripple;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final int[] PressedState = {android.R.attr.state_pressed, android.R.attr.state_enabled};

    @NotNull
    private static final int[] RestingState = new int[0];

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void b(@NotNull PressInteraction.Press interaction, boolean z6, long j6, int i10, long j10, float f, @NotNull e8.a<l0> onInvalidateRipple) {
        t.j(interaction, "interaction");
        t.j(onInvalidateRipple, "onInvalidateRipple");
        if (this.ripple == null || !t.e(Boolean.valueOf(z6), this.bounded)) {
            c(z6);
            this.bounded = Boolean.valueOf(z6);
        }
        UnprojectedRipple unprojectedRipple = this.ripple;
        t.g(unprojectedRipple);
        this.onInvalidateRipple = onInvalidateRipple;
        f(j6, i10, j10, f);
        if (z6) {
            unprojectedRipple.setHotspot(Offset.m(interaction.a()), Offset.n(interaction.a()));
        } else {
            unprojectedRipple.setHotspot(unprojectedRipple.getBounds().centerX(), unprojectedRipple.getBounds().centerY());
        }
        setRippleState(true);
    }

    public final void d() {
        this.onInvalidateRipple = null;
        Runnable runnable = this.resetRippleRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
            Runnable runnable2 = this.resetRippleRunnable;
            t.g(runnable2);
            runnable2.run();
        } else {
            UnprojectedRipple unprojectedRipple = this.ripple;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(RestingState);
            }
        }
        UnprojectedRipple unprojectedRipple2 = this.ripple;
        if (unprojectedRipple2 == null) {
            return;
        }
        unprojectedRipple2.setVisible(false, false);
        unscheduleDrawable(unprojectedRipple2);
    }

    public final void e() {
        setRippleState(false);
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public void refreshDrawableState() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleHostView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
    }

    private final void c(boolean z6) {
        UnprojectedRipple unprojectedRipple = new UnprojectedRipple(z6);
        setBackground(unprojectedRipple);
        this.ripple = unprojectedRipple;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setRippleState$lambda-2, reason: not valid java name */
    public static final void m2setRippleState$lambda2(RippleHostView this$0) {
        t.j(this$0, "this$0");
        UnprojectedRipple unprojectedRipple = this$0.ripple;
        if (unprojectedRipple != null) {
            unprojectedRipple.setState(RestingState);
        }
        this$0.resetRippleRunnable = null;
    }

    public final void f(long j6, int i10, long j10, float f) {
        UnprojectedRipple unprojectedRipple = this.ripple;
        if (unprojectedRipple == null) {
            return;
        }
        unprojectedRipple.c(i10);
        unprojectedRipple.b(j10, f);
        Rect rectA = RectHelper_androidKt.a(SizeKt.c(j6));
        setLeft(rectA.left);
        setTop(rectA.top);
        setRight(rectA.right);
        setBottom(rectA.bottom);
        unprojectedRipple.setBounds(rectA);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NotNull Drawable who) {
        t.j(who, "who");
        e8.a<l0> aVar = this.onInvalidateRipple;
        if (aVar != null) {
            aVar.invoke();
        }
    }

    private final void setRippleState(boolean z6) {
        long jLongValue;
        int[] iArr;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        Runnable runnable = this.resetRippleRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
            runnable.run();
        }
        Long l = this.lastRippleStateChangeTimeMillis;
        if (l != null) {
            jLongValue = l.longValue();
        } else {
            jLongValue = 0;
        }
        long j6 = jCurrentAnimationTimeMillis - jLongValue;
        if (!z6 && j6 < 5) {
            Runnable runnable2 = new Runnable() { // from class: androidx.compose.material.ripple.a
                @Override // java.lang.Runnable
                public final void run() {
                    RippleHostView.m2setRippleState$lambda2(this.f92a);
                }
            };
            this.resetRippleRunnable = runnable2;
            postDelayed(runnable2, ResetRippleDelayDuration);
        } else {
            if (z6) {
                iArr = PressedState;
            } else {
                iArr = RestingState;
            }
            UnprojectedRipple unprojectedRipple = this.ripple;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(iArr);
            }
        }
        this.lastRippleStateChangeTimeMillis = Long.valueOf(jCurrentAnimationTimeMillis);
    }
}
