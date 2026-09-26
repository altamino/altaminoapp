package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class TextFieldPressGestureFilterKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @Nullable MutableInteractionSource mutableInteractionSource, boolean z6, @NotNull l<? super Offset, l0> onTap) {
        t.j(modifier, "<this>");
        t.j(onTap, "onTap");
        return z6 ? ComposedModifierKt.d(modifier, null, new TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1(onTap, mutableInteractionSource), 1, null) : modifier;
    }
}
