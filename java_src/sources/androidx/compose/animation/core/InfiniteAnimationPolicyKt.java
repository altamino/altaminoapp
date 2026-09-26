package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.platform.InfiniteAnimationPolicy;
import e8.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class InfiniteAnimationPolicyKt {
    @Nullable
    public static final <R> Object a(@NotNull l<? super Long, ? extends R> lVar, @NotNull kotlin.coroutines.d<? super R> dVar) {
        InfiniteAnimationPolicy infiniteAnimationPolicy = (InfiniteAnimationPolicy) dVar.getContext().get(InfiniteAnimationPolicy.Key);
        if (infiniteAnimationPolicy == null) {
            return MonotonicFrameClockKt.b(lVar, dVar);
        }
        return infiniteAnimationPolicy.f(new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(lVar, null), dVar);
    }
}
