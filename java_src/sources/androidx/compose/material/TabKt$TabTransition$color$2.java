package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class TabKt$TabTransition$color$2 extends v implements q<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Color>> {
    public static final TabKt$TabTransition$color$2 INSTANCE = new TabKt$TabTransition$color$2();

    TabKt$TabTransition$color$2() {
        super(3);
    }

    @Composable
    @NotNull
    public final FiniteAnimationSpec<Color> a(@NotNull Transition.Segment<Boolean> animateColor, @Nullable Composer composer, int i10) {
        t.j(animateColor, "$this$animateColor");
        composer.G(-2120892502);
        TweenSpec tweenSpecJ = animateColor.a(Boolean.FALSE, Boolean.TRUE) ? AnimationSpecKt.j(TextFieldImplKt.AnimationDuration, 100, EasingKt.b()) : AnimationSpecKt.k(100, 0, EasingKt.b(), 2, null);
        composer.Q();
        return tweenSpecJ;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ FiniteAnimationSpec<Color> invoke(Transition.Segment<Boolean> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
