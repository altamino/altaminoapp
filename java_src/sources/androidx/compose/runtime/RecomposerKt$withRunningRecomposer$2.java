package androidx.compose.runtime;

import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
@f(c = "androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2", f = "Recomposer.kt", l = {69, 71}, m = "invokeSuspend")
final class RecomposerKt$withRunningRecomposer$2 extends l implements p<o0, d<Object>, Object> {
    final /* synthetic */ q<o0, Recomposer, d<Object>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2$1, reason: invalid class name */
    @f(c = "androidx.compose.runtime.RecomposerKt$withRunningRecomposer$2$1", f = "Recomposer.kt", l = {68}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ Recomposer $recomposer;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Recomposer recomposer, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$recomposer = recomposer;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$recomposer, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                Recomposer recomposer = this.$recomposer;
                this.label = 1;
                if (recomposer.t0(this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RecomposerKt$withRunningRecomposer$2(q<? super o0, ? super Recomposer, ? super d<Object>, ? extends Object> qVar, d<? super RecomposerKt$withRunningRecomposer$2> dVar) {
        super(2, dVar);
        this.$block = qVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        RecomposerKt$withRunningRecomposer$2 recomposerKt$withRunningRecomposer$2 = new RecomposerKt$withRunningRecomposer$2(this.$block, dVar);
        recomposerKt$withRunningRecomposer$2.L$0 = obj;
        return recomposerKt$withRunningRecomposer$2;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<Object> dVar) {
        return ((RecomposerKt$withRunningRecomposer$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Recomposer recomposer;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    Object obj2 = this.L$0;
                    w.b(obj);
                    return obj2;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            recomposer = (Recomposer) this.L$0;
            w.b(obj);
        } else {
            w.b(obj);
            o0 o0Var = (o0) this.L$0;
            recomposer = new Recomposer(o0Var.getCoroutineContext());
            k.d(o0Var, null, null, new AnonymousClass1(recomposer, null), 3, null);
            q<o0, Recomposer, d<Object>, Object> qVar = this.$block;
            this.L$0 = recomposer;
            this.label = 1;
            obj = qVar.invoke(o0Var, recomposer, this);
            if (obj == objE) {
                return objE;
            }
        }
        recomposer.a0();
        this.L$0 = obj;
        this.label = 2;
        if (recomposer.j0(this) == objE) {
            return objE;
        }
        return obj;
    }
}
