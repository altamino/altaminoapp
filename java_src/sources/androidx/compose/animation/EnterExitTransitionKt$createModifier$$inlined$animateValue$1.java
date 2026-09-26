package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.TransformOrigin;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$createModifier$$inlined$animateValue$1 extends v implements q<Transition.Segment<EnterExitState>, Composer, Integer, SpringSpec<TransformOrigin>> {
    public static final EnterExitTransitionKt$createModifier$$inlined$animateValue$1 INSTANCE = new EnterExitTransitionKt$createModifier$$inlined$animateValue$1();

    public EnterExitTransitionKt$createModifier$$inlined$animateValue$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final SpringSpec<TransformOrigin> a(@NotNull Transition.Segment<EnterExitState> segment, @Nullable Composer composer, int i10) {
        t.j(segment, "$this$null");
        composer.G(-895531546);
        SpringSpec<TransformOrigin> springSpecI = AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);
        composer.Q();
        return springSpecI;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ SpringSpec<TransformOrigin> invoke(Transition.Segment<EnterExitState> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
