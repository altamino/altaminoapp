package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class TransitionKt$animateIntOffset$1 extends v implements q<Transition.Segment<Object>, Composer, Integer, SpringSpec<IntOffset>> {
    public static final TransitionKt$animateIntOffset$1 INSTANCE = new TransitionKt$animateIntOffset$1();

    public TransitionKt$animateIntOffset$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final SpringSpec<IntOffset> a(@NotNull Transition.Segment<Object> segment, @Nullable Composer composer, int i10) {
        t.j(segment, "$this$null");
        composer.G(-1953479610);
        SpringSpec<IntOffset> springSpecI = AnimationSpecKt.i(0.0f, 0.0f, IntOffset.b(IntOffsetKt.a(1, 1)), 3, null);
        composer.Q();
        return springSpecI;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ SpringSpec<IntOffset> invoke(Transition.Segment<Object> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
