package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class TransitionKt$animateInt$1 extends v implements q<Transition.Segment<Object>, Composer, Integer, SpringSpec<Integer>> {
    public static final TransitionKt$animateInt$1 INSTANCE = new TransitionKt$animateInt$1();

    public TransitionKt$animateInt$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final SpringSpec<Integer> a(@NotNull Transition.Segment<Object> segment, @Nullable Composer composer, int i10) {
        t.j(segment, "$this$null");
        composer.G(-785273069);
        SpringSpec<Integer> springSpecI = AnimationSpecKt.i(0.0f, 0.0f, 1, 3, null);
        composer.Q();
        return springSpecI;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ SpringSpec<Integer> invoke(Transition.Segment<Object> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
