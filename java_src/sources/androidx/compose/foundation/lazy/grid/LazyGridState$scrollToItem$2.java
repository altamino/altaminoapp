package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.ScrollScope;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.lazy.grid.LazyGridState$scrollToItem$2", f = "LazyGridState.kt", l = {}, m = "invokeSuspend")
final class LazyGridState$scrollToItem$2 extends l implements p<ScrollScope, d<? super l0>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ int $scrollOffset;
    int label;
    final /* synthetic */ LazyGridState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridState$scrollToItem$2(LazyGridState lazyGridState, int i10, int i11, d<? super LazyGridState$scrollToItem$2> dVar) {
        super(2, dVar);
        this.this$0 = lazyGridState;
        this.$index = i10;
        this.$scrollOffset = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new LazyGridState$scrollToItem$2(this.this$0, this.$index, this.$scrollOffset, dVar);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable d<? super l0> dVar) {
        return ((LazyGridState$scrollToItem$2) create(scrollScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            this.this$0.E(this.$index, this.$scrollOffset);
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
