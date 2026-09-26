package androidx.compose.foundation;

import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class MagnifierKt$magnifier$4$isMagnifierShown$2$1 extends v implements e8.a<Boolean> {
    final /* synthetic */ State<Offset> $sourceCenterInRoot$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MagnifierKt$magnifier$4$isMagnifierShown$2$1(State<Offset> state) {
        super(0);
        this.$sourceCenterInRoot$delegate = state;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke() {
        return Boolean.valueOf(OffsetKt.c(MagnifierKt$magnifier$4.r(this.$sourceCenterInRoot$delegate)));
    }
}
