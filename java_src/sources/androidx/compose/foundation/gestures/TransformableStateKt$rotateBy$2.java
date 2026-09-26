package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
@f(c = "androidx.compose.foundation.gestures.TransformableStateKt$rotateBy$2", f = "TransformableState.kt", l = {}, m = "invokeSuspend")
final class TransformableStateKt$rotateBy$2 extends l implements p<TransformScope, d<? super l0>, Object> {
    final /* synthetic */ float $degrees;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransformableStateKt$rotateBy$2(float f, d<? super TransformableStateKt$rotateBy$2> dVar) {
        super(2, dVar);
        this.$degrees = f;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TransformableStateKt$rotateBy$2 transformableStateKt$rotateBy$2 = new TransformableStateKt$rotateBy$2(this.$degrees, dVar);
        transformableStateKt$rotateBy$2.L$0 = obj;
        return transformableStateKt$rotateBy$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull TransformScope transformScope, @Nullable d<? super l0> dVar) {
        return ((TransformableStateKt$rotateBy$2) create(transformScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            ((TransformScope) this.L$0).a(1.0f, Offset.Companion.c(), this.$degrees);
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
