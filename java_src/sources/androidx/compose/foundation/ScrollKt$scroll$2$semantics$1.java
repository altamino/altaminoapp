package androidx.compose.foundation;

import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
final class ScrollKt$scroll$2$semantics$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ o0 $coroutineScope;
    final /* synthetic */ boolean $isScrollable;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ boolean $reverseScrolling;
    final /* synthetic */ ScrollState $state;

    /* JADX INFO: renamed from: androidx.compose.foundation.ScrollKt$scroll$2$semantics$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Float, Float, Boolean> {
        final /* synthetic */ o0 $coroutineScope;
        final /* synthetic */ boolean $isVertical;
        final /* synthetic */ ScrollState $state;

        /* JADX INFO: renamed from: androidx.compose.foundation.ScrollKt$scroll$2$semantics$1$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.foundation.ScrollKt$scroll$2$semantics$1$1$1", f = "Scroll.kt", l = {276, 278}, m = "invokeSuspend")
        static final class C00271 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ boolean $isVertical;
            final /* synthetic */ ScrollState $state;
            final /* synthetic */ float $x;
            final /* synthetic */ float $y;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00271(boolean z6, ScrollState scrollState, float f, float f6, d<? super C00271> dVar) {
                super(2, dVar);
                this.$isVertical = z6;
                this.$state = scrollState;
                this.$y = f;
                this.$x = f6;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new C00271(this.$isVertical, this.$state, this.$y, this.$x, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((C00271) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 != 1 && i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.b(obj);
                } else {
                    w.b(obj);
                    if (this.$isVertical) {
                        ScrollState scrollState = this.$state;
                        float f = this.$y;
                        this.label = 1;
                        if (ScrollExtensionsKt.b(scrollState, f, null, this, 2, null) == objE) {
                            return objE;
                        }
                    } else {
                        ScrollState scrollState2 = this.$state;
                        float f6 = this.$x;
                        this.label = 2;
                        if (ScrollExtensionsKt.b(scrollState2, f6, null, this, 2, null) == objE) {
                            return objE;
                        }
                    }
                }
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(o0 o0Var, boolean z6, ScrollState scrollState) {
            super(2);
            this.$coroutineScope = o0Var;
            this.$isVertical = z6;
            this.$state = scrollState;
        }

        @NotNull
        public final Boolean a(float f, float f6) {
            k.d(this.$coroutineScope, null, null, new C00271(this.$isVertical, this.$state, f6, f, null), 3, null);
            return Boolean.TRUE;
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Boolean invoke(Float f, Float f6) {
            return a(f.floatValue(), f6.floatValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollKt$scroll$2$semantics$1(boolean z6, boolean z10, boolean z11, ScrollState scrollState, o0 o0Var) {
        super(1);
        this.$reverseScrolling = z6;
        this.$isVertical = z10;
        this.$isScrollable = z11;
        this.$state = scrollState;
        this.$coroutineScope = o0Var;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        ScrollAxisRange scrollAxisRange = new ScrollAxisRange(new ScrollKt$scroll$2$semantics$1$accessibilityScrollState$1(this.$state), new ScrollKt$scroll$2$semantics$1$accessibilityScrollState$2(this.$state), this.$reverseScrolling);
        if (this.$isVertical) {
            SemanticsPropertiesKt.a0(semantics, scrollAxisRange);
        } else {
            SemanticsPropertiesKt.J(semantics, scrollAxisRange);
        }
        if (this.$isScrollable) {
            SemanticsPropertiesKt.B(semantics, null, new AnonymousClass1(this.$coroutineScope, this.$isVertical, this.$state), 1, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
