package androidx.compose.foundation.text;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldGestureModifiersKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull TextDragObserver observer, boolean z6) {
        t.j(modifier, "<this>");
        t.j(observer, "observer");
        return z6 ? SuspendingPointerInputFilterKt.b(modifier, observer, new TextFieldGestureModifiersKt$longPressDragGestureFilter$1(observer, null)) : modifier;
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull MouseSelectionObserver observer, boolean z6) {
        t.j(modifier, "<this>");
        t.j(observer, "observer");
        return z6 ? SuspendingPointerInputFilterKt.b(Modifier.Companion, observer, new TextFieldGestureModifiersKt$mouseDragGestureDetector$1(observer, null)) : modifier;
    }

    @NotNull
    public static final Modifier c(@NotNull Modifier modifier, boolean z6, @NotNull FocusRequester focusRequester, @Nullable MutableInteractionSource mutableInteractionSource, @NotNull l<? super FocusState, l0> onFocusChanged) {
        t.j(modifier, "<this>");
        t.j(focusRequester, "focusRequester");
        t.j(onFocusChanged, "onFocusChanged");
        return FocusableKt.c(FocusChangedModifierKt.a(FocusRequesterModifierKt.a(modifier, focusRequester), onFocusChanged), z6, mutableInteractionSource);
    }
}
