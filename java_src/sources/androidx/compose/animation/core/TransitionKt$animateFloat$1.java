package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class TransitionKt$animateFloat$1 extends v implements q<Transition.Segment<Object>, Composer, Integer, SpringSpec<Float>> {
    public static final TransitionKt$animateFloat$1 INSTANCE = new TransitionKt$animateFloat$1();

    public TransitionKt$animateFloat$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final SpringSpec<Float> a(@NotNull Transition.Segment<Object> segment, @Nullable Composer composer, int i10) {
        t.j(segment, "$this$null");
        composer.G(-522164544);
        SpringSpec<Float> springSpecI = AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);
        composer.Q();
        return springSpecI;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ SpringSpec<Float> invoke(Transition.Segment<Object> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
