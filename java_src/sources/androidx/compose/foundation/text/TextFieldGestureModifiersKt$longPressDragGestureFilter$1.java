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
@f(c = "androidx.compose.foundation.text.TextFieldGestureModifiersKt$longPressDragGestureFilter$1", f = "TextFieldGestureModifiers.kt", l = {35}, m = "invokeSuspend")
final class TextFieldGestureModifiersKt$longPressDragGestureFilter$1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ TextDragObserver $observer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldGestureModifiersKt$longPressDragGestureFilter$1(TextDragObserver textDragObserver, d<? super TextFieldGestureModifiersKt$longPressDragGestureFilter$1> dVar) {
        super(2, dVar);
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TextFieldGestureModifiersKt$longPressDragGestureFilter$1 textFieldGestureModifiersKt$longPressDragGestureFilter$1 = new TextFieldGestureModifiersKt$longPressDragGestureFilter$1(this.$observer, dVar);
        textFieldGestureModifiersKt$longPressDragGestureFilter$1.L$0 = obj;
        return textFieldGestureModifiersKt$longPressDragGestureFilter$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((TextFieldGestureModifiersKt$longPressDragGestureFilter$1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            if (LongPressTextDragObserverKt.d(pointerInputScope, textDragObserver, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
