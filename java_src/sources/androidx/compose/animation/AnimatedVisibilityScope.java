package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public interface AnimatedVisibilityScope {

    public static final class DefaultImpls {
    }

    @ExperimentalAnimationApi
    @NotNull
    Transition<EnterExitState> a();
}
