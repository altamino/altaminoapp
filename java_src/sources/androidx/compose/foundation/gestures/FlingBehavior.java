package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Stable;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Stable
public interface FlingBehavior {
    @Nullable
    Object a(@NotNull ScrollScope scrollScope, float f, @NotNull d<? super Float> dVar);
}
