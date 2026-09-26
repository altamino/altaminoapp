package androidx.compose.foundation;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class ScrollKt$rememberScrollState$1 extends v implements e8.a<ScrollState> {
    final /* synthetic */ int $initial;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollKt$rememberScrollState$1(int i10) {
        super(0);
        this.$initial = i10;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ScrollState invoke() {
        return new ScrollState(this.$initial);
    }
}
