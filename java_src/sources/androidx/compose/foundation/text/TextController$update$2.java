package androidx.compose.foundation.text;

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
@f(c = "androidx.compose.foundation.text.TextController$update$2", f = "CoreText.kt", l = {191}, m = "invokeSuspend")
final class TextController$update$2 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TextController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextController$update$2(TextController textController, d<? super TextController$update$2> dVar) {
        super(2, dVar);
        this.this$0 = textController;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TextController$update$2 textController$update$2 = new TextController$update$2(this.this$0, dVar);
        textController$update$2.L$0 = obj;
        return textController$update$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((TextController$update$2) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            TextDragObserver textDragObserverH = this.this$0.h();
            this.label = 1;
            if (LongPressTextDragObserverKt.d(pointerInputScope, textDragObserverH, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
