package androidx.compose.runtime;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.runtime.SdkStubsFallbackFrameClock$withFrameNanos$2", f = "ActualAndroid.android.kt", l = {51}, m = "invokeSuspend")
final class SdkStubsFallbackFrameClock$withFrameNanos$2<R> extends l implements p<o0, d<? super R>, Object> {
    final /* synthetic */ e8.l<Long, R> $onFrame;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SdkStubsFallbackFrameClock$withFrameNanos$2(e8.l<? super Long, ? extends R> lVar, d<? super SdkStubsFallbackFrameClock$withFrameNanos$2> dVar) {
        super(2, dVar);
        this.$onFrame = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new SdkStubsFallbackFrameClock$withFrameNanos$2(this.$onFrame, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super R> dVar) {
        return ((SdkStubsFallbackFrameClock$withFrameNanos$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            this.label = 1;
            if (y0.a(16L, this) == objE) {
                return objE;
            }
        }
        return this.$onFrame.invoke(kotlin.coroutines.jvm.internal.b.e(System.nanoTime()));
    }
}
