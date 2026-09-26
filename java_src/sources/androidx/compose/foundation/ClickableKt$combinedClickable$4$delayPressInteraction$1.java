package androidx.compose.foundation;

import androidx.compose.runtime.MutableState;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class ClickableKt$combinedClickable$4$delayPressInteraction$1 extends v implements e8.a<Boolean> {
    final /* synthetic */ MutableState<Boolean> $isClickableInScrollableContainer;
    final /* synthetic */ e8.a<Boolean> $isRootInScrollableContainer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClickableKt$combinedClickable$4$delayPressInteraction$1(MutableState<Boolean> mutableState, e8.a<Boolean> aVar) {
        super(0);
        this.$isClickableInScrollableContainer = mutableState;
        this.$isRootInScrollableContainer = aVar;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke() {
        return Boolean.valueOf(this.$isClickableInScrollableContainer.getValue().booleanValue() || this.$isRootInScrollableContainer.invoke().booleanValue());
    }
}
