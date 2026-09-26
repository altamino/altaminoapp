package androidx.compose.foundation;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class ScrollKt$scroll$2$semantics$1$accessibilityScrollState$1 extends v implements e8.a<Float> {
    final /* synthetic */ ScrollState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollKt$scroll$2$semantics$1$accessibilityScrollState$1(ScrollState scrollState) {
        super(0);
        this.$state = scrollState;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Float invoke() {
        return Float.valueOf(this.$state.k());
    }
}
