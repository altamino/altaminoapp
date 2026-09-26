package androidx.compose.foundation.gestures;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
@f(c = "androidx.compose.foundation.gestures.TransformableStateKt$panBy$2", f = "TransformableState.kt", l = {}, m = "invokeSuspend")
final class TransformableStateKt$panBy$2 extends l implements p<TransformScope, d<? super l0>, Object> {
    final /* synthetic */ long $offset;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransformableStateKt$panBy$2(long j6, d<? super TransformableStateKt$panBy$2> dVar) {
        super(2, dVar);
        this.$offset = j6;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TransformableStateKt$panBy$2 transformableStateKt$panBy$2 = new TransformableStateKt$panBy$2(this.$offset, dVar);
        transformableStateKt$panBy$2.L$0 = obj;
        return transformableStateKt$panBy$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull TransformScope transformScope, @Nullable d<? super l0> dVar) {
        return ((TransformableStateKt$panBy$2) create(transformScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            ((TransformScope) this.L$0).a(1.0f, this.$offset, 0.0f);
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
