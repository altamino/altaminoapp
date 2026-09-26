package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.input.pointer.PointerInputScope;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$1", f = "TextFieldSelectionManager.kt", l = {818}, m = "invokeSuspend")
final class TextFieldSelectionManagerKt$TextFieldSelectionHandle$1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ TextDragObserver $observer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldSelectionManagerKt$TextFieldSelectionHandle$1(TextDragObserver textDragObserver, d<? super TextFieldSelectionManagerKt$TextFieldSelectionHandle$1> dVar) {
        super(2, dVar);
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TextFieldSelectionManagerKt$TextFieldSelectionHandle$1 textFieldSelectionManagerKt$TextFieldSelectionHandle$1 = new TextFieldSelectionManagerKt$TextFieldSelectionHandle$1(this.$observer, dVar);
        textFieldSelectionManagerKt$TextFieldSelectionHandle$1.L$0 = obj;
        return textFieldSelectionManagerKt$TextFieldSelectionHandle$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((TextFieldSelectionManagerKt$TextFieldSelectionHandle$1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            TextDragObserver textDragObserver = this.$observer;
            this.label = 1;
            if (LongPressTextDragObserverKt.c(pointerInputScope, textDragObserver, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
