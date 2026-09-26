package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
final class LazySemanticsKt$lazyListSemantics$1$scrollByAction$1 extends v implements p<Float, Float, Boolean> {
    final /* synthetic */ o0 $coroutineScope;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ LazyListState $state;

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$scrollByAction$1$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$scrollByAction$1$1", f = "LazySemantics.kt", l = {95}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ float $delta;
        final /* synthetic */ LazyListState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LazyListState lazyListState, float f, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$state = lazyListState;
            this.$delta = f;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$state, this.$delta, dVar);
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
                LazyListState lazyListState = this.$state;
                float f = this.$delta;
                this.label = 1;
                if (ScrollExtensionsKt.b(lazyListState, f, null, this, 2, null) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazySemanticsKt$lazyListSemantics$1$scrollByAction$1(boolean z6, o0 o0Var, LazyListState lazyListState) {
        super(2);
        this.$isVertical = z6;
        this.$coroutineScope = o0Var;
        this.$state = lazyListState;
    }

    @NotNull
    public final Boolean a(float f, float f6) {
        if (this.$isVertical) {
            f = f6;
        }
        k.d(this.$coroutineScope, null, null, new AnonymousClass1(this.$state, f, null), 3, null);
        return Boolean.TRUE;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Boolean invoke(Float f, Float f6) {
        return a(f.floatValue(), f6.floatValue());
    }
}
