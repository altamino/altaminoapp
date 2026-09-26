package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class SwipeableKt$rememberSwipeableState$2 extends v implements a<SwipeableState<Object>> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ l<Object, Boolean> $confirmStateChange;
    final /* synthetic */ Object $initialValue;

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final SwipeableState<Object> invoke() {
        return new SwipeableState<>(this.$initialValue, this.$animationSpec, this.$confirmStateChange);
    }
}
