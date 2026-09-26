package androidx.compose.ui.platform;

import androidx.compose.runtime.MonotonicFrameClockKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class InfiniteAnimationPolicyKt {
    @Nullable
    public static final <R> Object a(@NotNull e8.l<? super Long, ? extends R> lVar, @NotNull kotlin.coroutines.d<? super R> dVar) {
        InfiniteAnimationPolicy infiniteAnimationPolicy = (InfiniteAnimationPolicy) dVar.getContext().get(InfiniteAnimationPolicy.Key);
        if (infiniteAnimationPolicy == null) {
            return MonotonicFrameClockKt.b(lVar, dVar);
        }
        return infiniteAnimationPolicy.f(new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(lVar, null), dVar);
    }
}
