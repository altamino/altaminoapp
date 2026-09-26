package androidx.compose.animation;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
final class ExitTransitionImpl extends ExitTransition {

    @NotNull
    private final TransitionData data;

    @Override // androidx.compose.animation.ExitTransition
    @NotNull
    public TransitionData a() {
        return this.data;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExitTransitionImpl(@NotNull TransitionData data) {
        super(null);
        t.j(data, "data");
        this.data = data;
    }
}
