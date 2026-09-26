package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.text.TextLayoutResult;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.text.ClickableTextKt$ClickableText$pressIndicator$1$1", f = "ClickableText.kt", l = {76}, m = "invokeSuspend")
final class ClickableTextKt$ClickableText$pressIndicator$1$1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ MutableState<TextLayoutResult> $layoutResult;
    final /* synthetic */ e8.l<Integer, l0> $onClick;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.ClickableTextKt$ClickableText$pressIndicator$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<Offset, l0> {
        final /* synthetic */ MutableState<TextLayoutResult> $layoutResult;
        final /* synthetic */ e8.l<Integer, l0> $onClick;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(MutableState<TextLayoutResult> mutableState, e8.l<? super Integer, l0> lVar) {
            super(1);
            this.$layoutResult = mutableState;
            this.$onClick = lVar;
        }

        public final void a(long j6) {
            TextLayoutResult value = this.$layoutResult.getValue();
            if (value != null) {
                this.$onClick.invoke(Integer.valueOf(value.w(j6)));
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Offset offset) {
            a(offset.u());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ClickableTextKt$ClickableText$pressIndicator$1$1(MutableState<TextLayoutResult> mutableState, e8.l<? super Integer, l0> lVar, d<? super ClickableTextKt$ClickableText$pressIndicator$1$1> dVar) {
        super(2, dVar);
        this.$layoutResult = mutableState;
        this.$onClick = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        ClickableTextKt$ClickableText$pressIndicator$1$1 clickableTextKt$ClickableText$pressIndicator$1$1 = new ClickableTextKt$ClickableText$pressIndicator$1$1(this.$layoutResult, this.$onClick, dVar);
        clickableTextKt$ClickableText$pressIndicator$1$1.L$0 = obj;
        return clickableTextKt$ClickableText$pressIndicator$1$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((ClickableTextKt$ClickableText$pressIndicator$1$1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$layoutResult, this.$onClick);
            this.label = 1;
            if (TapGestureDetectorKt.k(pointerInputScope, null, null, null, anonymousClass1, this, 7, null) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
