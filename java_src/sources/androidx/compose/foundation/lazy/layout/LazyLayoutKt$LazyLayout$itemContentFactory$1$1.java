package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.State;
import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class LazyLayoutKt$LazyLayout$itemContentFactory$1$1 extends v implements a<LazyLayoutItemProvider> {
    final /* synthetic */ State<LazyLayoutItemProvider> $currentItemProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LazyLayoutKt$LazyLayout$itemContentFactory$1$1(State<? extends LazyLayoutItemProvider> state) {
        super(0);
        this.$currentItemProvider = state;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LazyLayoutItemProvider invoke() {
        return this.$currentItemProvider.getValue();
    }
}
