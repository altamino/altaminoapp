package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class TransitionKt$animateColor$1 extends v implements q<Transition.Segment<Object>, Composer, Integer, SpringSpec<Color>> {
    public static final TransitionKt$animateColor$1 INSTANCE = new TransitionKt$animateColor$1();

    public TransitionKt$animateColor$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final SpringSpec<Color> a(@NotNull Transition.Segment<Object> segment, @Nullable Composer composer, int i10) {
        t.j(segment, "$this$null");
        composer.G(-1457805428);
        SpringSpec<Color> springSpecI = AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);
        composer.Q();
        return springSpecI;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ SpringSpec<Color> invoke(Transition.Segment<Object> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
