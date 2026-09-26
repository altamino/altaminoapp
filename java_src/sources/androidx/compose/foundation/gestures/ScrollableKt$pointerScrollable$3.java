package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class ScrollableKt$pointerScrollable$3 extends v implements e8.a<Boolean> {
    final /* synthetic */ State<ScrollingLogic> $scrollLogic;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollableKt$pointerScrollable$3(State<ScrollingLogic> state) {
        super(0);
        this.$scrollLogic = state;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke() {
        return Boolean.valueOf(this.$scrollLogic.getValue().i());
    }
}
