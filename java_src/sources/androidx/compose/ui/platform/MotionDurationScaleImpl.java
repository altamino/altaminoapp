package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.MotionDurationScale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class MotionDurationScaleImpl implements MotionDurationScale {

    @NotNull
    private final MutableState scaleFactor$delegate = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(1.0f), null, 2, null);

    @Override // kotlin.coroutines.g.b
    public /* synthetic */ kotlin.coroutines.g.c getKey() {
        return androidx.compose.ui.c.a(this);
    }

    public void c(float f) {
        this.scaleFactor$delegate.setValue(Float.valueOf(f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.MotionDurationScale
    public float g0() {
        return ((Number) this.scaleFactor$delegate.getValue()).floatValue();
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
        return (R) MotionDurationScale.DefaultImpls.a(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> cVar) {
        return (E) MotionDurationScale.DefaultImpls.b(this, cVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> cVar) {
        return MotionDurationScale.DefaultImpls.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g plus(@NotNull kotlin.coroutines.g gVar) {
        return MotionDurationScale.DefaultImpls.d(this, gVar);
    }
}
