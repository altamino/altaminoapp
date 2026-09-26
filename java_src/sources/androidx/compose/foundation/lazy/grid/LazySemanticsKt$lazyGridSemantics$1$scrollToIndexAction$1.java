package androidx.compose.foundation.lazy.grid;

import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
final class LazySemanticsKt$lazyGridSemantics$1$scrollToIndexAction$1 extends v implements l<Integer, Boolean> {
    final /* synthetic */ o0 $coroutineScope;
    final /* synthetic */ LazyGridState $state;

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazySemanticsKt$lazyGridSemantics$1$scrollToIndexAction$1$2, reason: invalid class name */
    @f(c = "androidx.compose.foundation.lazy.grid.LazySemanticsKt$lazyGridSemantics$1$scrollToIndexAction$1$2", f = "LazySemantics.kt", l = {112}, m = "invokeSuspend")
    static final class AnonymousClass2 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ int $index;
        final /* synthetic */ LazyGridState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(LazyGridState lazyGridState, int i10, d<? super AnonymousClass2> dVar) {
            super(2, dVar);
            this.$state = lazyGridState;
            this.$index = i10;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass2(this.$state, this.$index, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                LazyGridState lazyGridState = this.$state;
                int i11 = this.$index;
                this.label = 1;
                if (LazyGridState.x(lazyGridState, i11, 0, this, 2, null) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazySemanticsKt$lazyGridSemantics$1$scrollToIndexAction$1(LazyGridState lazyGridState, o0 o0Var) {
        super(1);
        this.$state = lazyGridState;
        this.$coroutineScope = o0Var;
    }

    @NotNull
    public final Boolean b(int i10) {
        boolean z6 = i10 >= 0 && i10 < this.$state.m().a();
        LazyGridState lazyGridState = this.$state;
        if (z6) {
            k.d(this.$coroutineScope, null, null, new AnonymousClass2(lazyGridState, i10, null), 3, null);
            return Boolean.TRUE;
        }
        throw new IllegalArgumentException(("Can't scroll to index " + i10 + ", it is out of bounds [0, " + lazyGridState.m().a() + ')').toString());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
        return b(num.intValue());
    }
}
