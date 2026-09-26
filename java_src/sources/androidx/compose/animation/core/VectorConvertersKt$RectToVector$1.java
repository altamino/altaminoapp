package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Rect;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$RectToVector$1 extends v implements l<Rect, AnimationVector4D> {
    public static final VectorConvertersKt$RectToVector$1 INSTANCE = new VectorConvertersKt$RectToVector$1();

    VectorConvertersKt$RectToVector$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final AnimationVector4D invoke(@NotNull Rect it) {
        t.j(it, "it");
        return new AnimationVector4D(it.j(), it.m(), it.k(), it.e());
    }
}
