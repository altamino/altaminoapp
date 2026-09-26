package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Rect;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class VectorConvertersKt$RectToVector$2 extends v implements l<AnimationVector4D, Rect> {
    public static final VectorConvertersKt$RectToVector$2 INSTANCE = new VectorConvertersKt$RectToVector$2();

    VectorConvertersKt$RectToVector$2() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Rect invoke(@NotNull AnimationVector4D it) {
        t.j(it, "it");
        return new Rect(it.f(), it.g(), it.h(), it.i());
    }
}
