package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class MenuKt$DropdownMenuContent$alpha$2 extends v implements q<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>> {
    public static final MenuKt$DropdownMenuContent$alpha$2 INSTANCE = new MenuKt$DropdownMenuContent$alpha$2();

    MenuKt$DropdownMenuContent$alpha$2() {
        super(3);
    }

    @ComposableTarget
    @Composable
    @NotNull
    public final FiniteAnimationSpec<Float> a(@NotNull Transition.Segment<Boolean> animateFloat, @Nullable Composer composer, int i10) {
        t.j(animateFloat, "$this$animateFloat");
        composer.G(782718552);
        TweenSpec tweenSpecK = animateFloat.a(Boolean.FALSE, Boolean.TRUE) ? AnimationSpecKt.k(30, 0, null, 6, null) : AnimationSpecKt.k(75, 0, null, 6, null);
        composer.Q();
        return tweenSpecK;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<Boolean> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
