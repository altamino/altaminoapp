package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Density;
import e8.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldScrollKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            iArr[Orientation.Vertical.ordinal()] = 1;
            iArr[Orientation.Horizontal.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect b(Density density, int i10, TransformedText transformedText, TextLayoutResult textLayoutResult, boolean z6, int i11) {
        Rect rectA;
        if (textLayoutResult == null || (rectA = textLayoutResult.d(transformedText.a().b(i10))) == null) {
            rectA = Rect.Companion.a();
        }
        Rect rect = rectA;
        int iJ0 = density.j0(TextFieldCursorKt.d());
        return Rect.d(rect, z6 ? (i11 - rect.j()) - iJ0 : rect.j(), 0.0f, z6 ? i11 - rect.j() : rect.j() + iJ0, 0.0f, 10, null);
    }

    @NotNull
    public static final Modifier c(@NotNull Modifier modifier, @NotNull TextFieldScrollerPosition scrollerPosition, @NotNull TextFieldValue textFieldValue, @NotNull VisualTransformation visualTransformation, @NotNull a<TextLayoutResultProxy> textLayoutResultProvider) {
        Modifier verticalScrollLayoutModifier;
        t.j(modifier, "<this>");
        t.j(scrollerPosition, "scrollerPosition");
        t.j(textFieldValue, "textFieldValue");
        t.j(visualTransformation, "visualTransformation");
        t.j(textLayoutResultProvider, "textLayoutResultProvider");
        Orientation orientationF = scrollerPosition.f();
        int iE = scrollerPosition.e(textFieldValue.g());
        scrollerPosition.i(textFieldValue.g());
        TransformedText transformedTextA = visualTransformation.a(textFieldValue.e());
        int i10 = WhenMappings.$EnumSwitchMapping$0[orientationF.ordinal()];
        if (i10 == 1) {
            verticalScrollLayoutModifier = new VerticalScrollLayoutModifier(scrollerPosition, iE, transformedTextA, textLayoutResultProvider);
        } else {
            if (i10 != 2) {
                throw new s();
            }
            verticalScrollLayoutModifier = new HorizontalScrollLayoutModifier(scrollerPosition, iE, transformedTextA, textLayoutResultProvider);
        }
        return ClipKt.b(modifier).B(verticalScrollLayoutModifier);
    }

    @NotNull
    public static final Modifier d(@NotNull Modifier modifier, @NotNull TextFieldScrollerPosition scrollerPosition, @Nullable MutableInteractionSource mutableInteractionSource, boolean z6) {
        t.j(modifier, "<this>");
        t.j(scrollerPosition, "scrollerPosition");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new TextFieldScrollKt$textFieldScrollable$$inlined$debugInspectorInfo$1(scrollerPosition, mutableInteractionSource, z6) : InspectableValueKt.a(), new TextFieldScrollKt$textFieldScrollable$2(scrollerPosition, z6, mutableInteractionSource));
    }
}
