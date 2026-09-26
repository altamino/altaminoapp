package androidx.compose.foundation.gestures;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.apache.commons.compress.compressors.bzip2.BZip2Constants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
@f(c = "androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$4", f = "Scrollable.kt", l = {}, m = "invokeSuspend")
final class ScrollableKt$pointerScrollable$4 extends l implements q<o0, Float, d<? super l0>, Object> {
    final /* synthetic */ MutableState<NestedScrollDispatcher> $nestedScrollDispatcher;
    final /* synthetic */ State<ScrollingLogic> $scrollLogic;
    /* synthetic */ float F$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$4$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$4$1", f = "Scrollable.kt", l = {BZip2Constants.MAX_ALPHA_SIZE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ State<ScrollingLogic> $scrollLogic;
        final /* synthetic */ float $velocity;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(State<ScrollingLogic> state, float f, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$scrollLogic = state;
            this.$velocity = f;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$scrollLogic, this.$velocity, dVar);
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
                ScrollingLogic value = this.$scrollLogic.getValue();
                float f = this.$velocity;
                this.label = 1;
                if (value.e(f, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollableKt$pointerScrollable$4(MutableState<NestedScrollDispatcher> mutableState, State<ScrollingLogic> state, d<? super ScrollableKt$pointerScrollable$4> dVar) {
        super(3, dVar);
        this.$nestedScrollDispatcher = mutableState;
        this.$scrollLogic = state;
    }

    @Nullable
    public final Object f(@NotNull o0 o0Var, float f, @Nullable d<? super l0> dVar) {
        ScrollableKt$pointerScrollable$4 scrollableKt$pointerScrollable$4 = new ScrollableKt$pointerScrollable$4(this.$nestedScrollDispatcher, this.$scrollLogic, dVar);
        scrollableKt$pointerScrollable$4.F$0 = f;
        return scrollableKt$pointerScrollable$4.invokeSuspend(l0.INSTANCE);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Object invoke(o0 o0Var, Float f, d<? super l0> dVar) {
        return f(o0Var, f.floatValue(), dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            k.d(this.$nestedScrollDispatcher.getValue().e(), null, null, new AnonymousClass1(this.$scrollLogic, this.F$0, null), 3, null);
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
