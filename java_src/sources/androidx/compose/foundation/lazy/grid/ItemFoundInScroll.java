package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector1D;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class ItemFoundInScroll extends CancellationException {

    @NotNull
    private final LazyGridItemInfo item;

    @NotNull
    private final AnimationState<Float, AnimationVector1D> previousAnimation;

    @NotNull
    public final LazyGridItemInfo a() {
        return this.item;
    }

    @NotNull
    public final AnimationState<Float, AnimationVector1D> b() {
        return this.previousAnimation;
    }

    public ItemFoundInScroll(@NotNull LazyGridItemInfo item, @NotNull AnimationState<Float, AnimationVector1D> previousAnimation) {
        t.j(item, "item");
        t.j(previousAnimation, "previousAnimation");
        this.item = item;
        this.previousAnimation = previousAnimation;
    }
}
