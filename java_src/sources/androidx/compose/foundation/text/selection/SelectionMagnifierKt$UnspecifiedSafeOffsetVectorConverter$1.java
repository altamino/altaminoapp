package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1 extends v implements l<Offset, AnimationVector2D> {
    public static final SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1 INSTANCE = new SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1();

    SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1() {
        super(1);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ AnimationVector2D invoke(Offset offset) {
        return a(offset.u());
    }

    @NotNull
    public final AnimationVector2D a(long j6) {
        if (!OffsetKt.c(j6)) {
            return SelectionMagnifierKt.UnspecifiedAnimationVector2D;
        }
        return new AnimationVector2D(Offset.m(j6), Offset.n(j6));
    }
}
