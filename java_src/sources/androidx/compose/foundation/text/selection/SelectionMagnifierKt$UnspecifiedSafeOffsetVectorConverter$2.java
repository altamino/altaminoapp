package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2 extends v implements l<AnimationVector2D, Offset> {
    public static final SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2 INSTANCE = new SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2();

    SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2() {
        super(1);
    }

    public final long a(@NotNull AnimationVector2D it) {
        t.j(it, "it");
        return OffsetKt.a(it.f(), it.g());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Offset invoke(AnimationVector2D animationVector2D) {
        return Offset.d(a(animationVector2D));
    }
}
