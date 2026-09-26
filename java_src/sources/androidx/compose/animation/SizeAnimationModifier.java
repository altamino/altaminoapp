package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class SizeAnimationModifier extends LayoutModifierWithPassThroughIntrinsics {

    @Nullable
    private AnimData animData;

    @NotNull
    private final AnimationSpec<IntSize> animSpec;

    @Nullable
    private p<? super IntSize, ? super IntSize, l0> listener;

    @NotNull
    private final o0 scope;

    @StabilityInferred
    public static final class AnimData {
        public static final int $stable = 8;

        @NotNull
        private final Animatable<IntSize, AnimationVector2D> anim;
        private long startSize;

        public /* synthetic */ AnimData(Animatable animatable, long j6, k kVar) {
            this(animatable, j6);
        }

        @NotNull
        public final Animatable<IntSize, AnimationVector2D> a() {
            return this.anim;
        }

        public final long b() {
            return this.startSize;
        }

        public final void c(long j6) {
            this.startSize = j6;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnimData)) {
                return false;
            }
            AnimData animData = (AnimData) obj;
            return t.e(this.anim, animData.anim) && IntSize.e(this.startSize, animData.startSize);
        }

        public int hashCode() {
            return (this.anim.hashCode() * 31) + IntSize.h(this.startSize);
        }

        @NotNull
        public String toString() {
            return "AnimData(anim=" + this.anim + ", startSize=" + ((Object) IntSize.i(this.startSize)) + ')';
        }

        private AnimData(Animatable<IntSize, AnimationVector2D> animatable, long j6) {
            this.anim = animatable;
            this.startSize = j6;
        }
    }

    @NotNull
    public final AnimationSpec<IntSize> b() {
        return this.animSpec;
    }

    @Nullable
    public final p<IntSize, IntSize, l0> c() {
        return this.listener;
    }

    public final void d(@Nullable p<? super IntSize, ? super IntSize, l0> pVar) {
        this.listener = pVar;
    }

    public SizeAnimationModifier(@NotNull AnimationSpec<IntSize> animSpec, @NotNull o0 scope) {
        t.j(animSpec, "animSpec");
        t.j(scope, "scope");
        this.animSpec = animSpec;
        this.scope = scope;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        Placeable placeableB0 = measurable.b0(j6);
        long jA = a(IntSizeKt.a(placeableB0.Q0(), placeableB0.B0()));
        return MeasureScope.CC.b(measure, IntSize.g(jA), IntSize.f(jA), null, new SizeAnimationModifier$measure$1(placeableB0), 4, null);
    }

    public final long a(long j6) {
        AnimData animData = this.animData;
        if (animData == null) {
            animData = new AnimData(new Animatable(IntSize.b(j6), VectorConvertersKt.h(IntSize.Companion), IntSize.b(IntSizeKt.a(1, 1))), j6, null);
        } else if (!IntSize.e(j6, animData.a().l().j())) {
            animData.c(animData.a().n().j());
            kotlinx.coroutines.k.d(this.scope, null, null, new SizeAnimationModifier$animateTo$data$1$1(animData, j6, this, null), 3, null);
        }
        this.animData = animData;
        return animData.a().n().j();
    }
}
