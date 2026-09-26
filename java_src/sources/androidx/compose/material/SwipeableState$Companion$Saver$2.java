package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class SwipeableState$Companion$Saver$2 extends v implements l<Object, SwipeableState<Object>> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ l<Object, Boolean> $confirmStateChange;

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final SwipeableState<Object> invoke(@NotNull Object it) {
        t.j(it, "it");
        return new SwipeableState<>(it, this.$animationSpec, this.$confirmStateChange);
    }
}
