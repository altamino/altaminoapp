package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntSize;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@ExperimentalAnimationApi
public interface SizeTransform {
    boolean b();

    @NotNull
    FiniteAnimationSpec<IntSize> c(long j6, long j10);
}
