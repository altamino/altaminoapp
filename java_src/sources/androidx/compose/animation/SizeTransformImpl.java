package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntSize;
import e8.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@ExperimentalAnimationApi
final class SizeTransformImpl implements SizeTransform {
    private final boolean clip;

    @NotNull
    private final p<IntSize, IntSize, FiniteAnimationSpec<IntSize>> sizeAnimationSpec;

    /* JADX WARN: Multi-variable type inference failed */
    public SizeTransformImpl(boolean z6, @NotNull p<? super IntSize, ? super IntSize, ? extends FiniteAnimationSpec<IntSize>> sizeAnimationSpec) {
        t.j(sizeAnimationSpec, "sizeAnimationSpec");
        this.clip = z6;
        this.sizeAnimationSpec = sizeAnimationSpec;
    }

    @Override // androidx.compose.animation.SizeTransform
    public boolean b() {
        return this.clip;
    }

    public /* synthetic */ SizeTransformImpl(boolean z6, p pVar, int i10, k kVar) {
        this((i10 & 1) != 0 ? true : z6, pVar);
    }

    @Override // androidx.compose.animation.SizeTransform
    @NotNull
    public FiniteAnimationSpec<IntSize> c(long j6, long j10) {
        return this.sizeAnimationSpec.invoke(IntSize.b(j6), IntSize.b(j10));
    }
}
