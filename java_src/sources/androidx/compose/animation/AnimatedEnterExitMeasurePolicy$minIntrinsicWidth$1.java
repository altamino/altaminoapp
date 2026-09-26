package androidx.compose.animation;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1 extends v implements l<IntrinsicMeasurable, Integer> {
    final /* synthetic */ int $height;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1(int i10) {
        super(1);
        this.$height = i10;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Integer invoke(@NotNull IntrinsicMeasurable it) {
        t.j(it, "it");
        return Integer.valueOf(it.Y(this.$height));
    }
}
