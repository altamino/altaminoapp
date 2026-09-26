package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntSize;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class AnimatedContentKt$SizeTransform$1 extends v implements p<IntSize, IntSize, SpringSpec<IntSize>> {
    public static final AnimatedContentKt$SizeTransform$1 INSTANCE = new AnimatedContentKt$SizeTransform$1();

    AnimatedContentKt$SizeTransform$1() {
        super(2);
    }

    @NotNull
    public final SpringSpec<IntSize> a(long j6, long j10) {
        return AnimationSpecKt.i(0.0f, 0.0f, IntSize.b(VisibilityThresholdsKt.f(IntSize.Companion)), 3, null);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ SpringSpec<IntSize> invoke(IntSize intSize, IntSize intSize2) {
        return a(intSize.j(), intSize2.j());
    }
}
