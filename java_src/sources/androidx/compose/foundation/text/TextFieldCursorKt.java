package androidx.compose.foundation.text;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class TextFieldCursorKt {
    private static final float DefaultCursorThickness = Dp.f(2);

    public static final float d() {
        return DefaultCursorThickness;
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull TextFieldState state, @NotNull TextFieldValue value, @NotNull OffsetMapping offsetMapping, @NotNull Brush cursorBrush, boolean z6) {
        t.j(modifier, "<this>");
        t.j(state, "state");
        t.j(value, "value");
        t.j(offsetMapping, "offsetMapping");
        t.j(cursorBrush, "cursorBrush");
        return z6 ? ComposedModifierKt.d(modifier, null, new TextFieldCursorKt$cursor$1(cursorBrush, state, value, offsetMapping), 1, null) : modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationSpec<Float> c() {
        return AnimationSpecKt.d(AnimationSpecKt.e(TextFieldCursorKt$cursorAnimationSpec$1.INSTANCE), null, 0L, 6, null);
    }
}
