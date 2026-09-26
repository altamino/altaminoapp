package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextSelectionMouseDetectorKt;
import androidx.compose.ui.input.pointer.PointerInputScope;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.foundation.text.TextController$update$3", f = "CoreText.kt", l = {282}, m = "invokeSuspend")
final class TextController$update$3 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ TextController$update$mouseSelectionObserver$1 $mouseSelectionObserver;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextController$update$3(TextController$update$mouseSelectionObserver$1 textController$update$mouseSelectionObserver$1, d<? super TextController$update$3> dVar) {
        super(2, dVar);
        this.$mouseSelectionObserver = textController$update$mouseSelectionObserver$1;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TextController$update$3 textController$update$3 = new TextController$update$3(this.$mouseSelectionObserver, dVar);
        textController$update$3.L$0 = obj;
        return textController$update$3;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((TextController$update$3) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            TextController$update$mouseSelectionObserver$1 textController$update$mouseSelectionObserver$1 = this.$mouseSelectionObserver;
            this.label = 1;
            if (TextSelectionMouseDetectorKt.c(pointerInputScope, textController$update$mouseSelectionObserver$1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
