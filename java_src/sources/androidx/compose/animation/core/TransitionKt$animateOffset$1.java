package androidx.compose.animation.core;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.geometry.Offset;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class TransitionKt$animateOffset$1 extends v implements q<Transition.Segment<Object>, Composer, Integer, SpringSpec<Offset>> {
    public static final TransitionKt$animateOffset$1 INSTANCE = new TransitionKt$animateOffset$1();

    public TransitionKt$animateOffset$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final SpringSpec<Offset> a(@NotNull Transition.Segment<Object> segment, @Nullable Composer composer, int i10) {
        t.j(segment, "$this$null");
        composer.G(1623385561);
        SpringSpec<Offset> springSpecI = AnimationSpecKt.i(0.0f, 0.0f, Offset.d(VisibilityThresholdsKt.c(Offset.Companion)), 3, null);
        composer.Q();
        return springSpecI;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ SpringSpec<Offset> invoke(Transition.Segment<Object> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
