package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.unit.IntOffset;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class PlaceableInfo {

    @NotNull
    private final Animatable<IntOffset, AnimationVector2D> animatedOffset;

    @NotNull
    private final MutableState inProgress$delegate;
    private int size;
    private long targetOffset;

    public /* synthetic */ PlaceableInfo(long j6, int i10, k kVar) {
        this(j6, i10);
    }

    @NotNull
    public final Animatable<IntOffset, AnimationVector2D> a() {
        return this.animatedOffset;
    }

    public final int c() {
        return this.size;
    }

    public final long d() {
        return this.targetOffset;
    }

    public final void f(int i10) {
        this.size = i10;
    }

    public final void g(long j6) {
        this.targetOffset = j6;
    }

    private PlaceableInfo(long j6, int i10) {
        this.size = i10;
        this.animatedOffset = new Animatable<>(IntOffset.b(j6), VectorConvertersKt.g(IntOffset.Companion), null, 4, null);
        this.targetOffset = j6;
        this.inProgress$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean b() {
        return ((Boolean) this.inProgress$delegate.getValue()).booleanValue();
    }

    public final void e(boolean z6) {
        this.inProgress$delegate.setValue(Boolean.valueOf(z6));
    }
}
