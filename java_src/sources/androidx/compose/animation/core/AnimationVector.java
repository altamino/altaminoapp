package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@StabilityInferred
public abstract class AnimationVector {
    public static final int $stable = 0;

    public /* synthetic */ AnimationVector(k kVar) {
        this();
    }

    public abstract float a(int i10);

    public abstract int b();

    @NotNull
    public abstract AnimationVector c();

    public abstract void d();

    public abstract void e(int i10, float f);

    private AnimationVector() {
    }
}
