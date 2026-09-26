package androidx.compose.foundation.text;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextPainter;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.z;

/* JADX INFO: loaded from: classes5.dex */
public final class TextFieldDelegate {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final TransformedText b(long j6, @NotNull TransformedText transformed) {
            t.j(transformed, "transformed");
            AnnotatedString.Builder builder = new AnnotatedString.Builder(transformed.b());
            builder.b(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.Companion.d(), (Shadow) null, 12287, (k) null), transformed.a().b(TextRange.n(j6)), transformed.a().b(TextRange.i(j6)));
            return new TransformedText(builder.e(), transformed.a());
        }

        public final void c(@NotNull Canvas canvas, @NotNull TextFieldValue value, @NotNull OffsetMapping offsetMapping, @NotNull TextLayoutResult textLayoutResult, @NotNull Paint selectionPaint) {
            int iB;
            int iB2;
            t.j(canvas, "canvas");
            t.j(value, "value");
            t.j(offsetMapping, "offsetMapping");
            t.j(textLayoutResult, "textLayoutResult");
            t.j(selectionPaint, "selectionPaint");
            if (!TextRange.h(value.g()) && (iB = offsetMapping.b(TextRange.l(value.g()))) != (iB2 = offsetMapping.b(TextRange.k(value.g())))) {
                canvas.t(textLayoutResult.y(iB, iB2), selectionPaint);
            }
            TextPainter.INSTANCE.a(canvas, textLayoutResult);
        }

        @NotNull
        public final z<Integer, Integer, TextLayoutResult> d(@NotNull TextDelegate textDelegate, long j6, @NotNull LayoutDirection layoutDirection, @Nullable TextLayoutResult textLayoutResult) {
            t.j(textDelegate, "textDelegate");
            t.j(layoutDirection, "layoutDirection");
            TextLayoutResult textLayoutResultL = textDelegate.l(j6, layoutDirection, textLayoutResult);
            return new z<>(Integer.valueOf(IntSize.g(textLayoutResultL.A())), Integer.valueOf(IntSize.f(textLayoutResultL.A())), textLayoutResultL);
        }

        public final void e(@NotNull TextInputSession textInputSession, @NotNull EditProcessor editProcessor, @NotNull l<? super TextFieldValue, l0> onValueChange) {
            t.j(textInputSession, "textInputSession");
            t.j(editProcessor, "editProcessor");
            t.j(onValueChange, "onValueChange");
            onValueChange.invoke(TextFieldValue.c(editProcessor.c(), null, 0L, null, 3, null));
            textInputSession.a();
        }

        @NotNull
        public final TextInputSession g(@NotNull TextInputService textInputService, @NotNull TextFieldValue value, @NotNull EditProcessor editProcessor, @NotNull ImeOptions imeOptions, @NotNull l<? super TextFieldValue, l0> onValueChange, @NotNull l<? super ImeAction, l0> onImeActionPerformed) {
            t.j(textInputService, "textInputService");
            t.j(value, "value");
            t.j(editProcessor, "editProcessor");
            t.j(imeOptions, "imeOptions");
            t.j(onValueChange, "onValueChange");
            t.j(onImeActionPerformed, "onImeActionPerformed");
            return h(textInputService, value, editProcessor, imeOptions, onValueChange, onImeActionPerformed);
        }

        @NotNull
        public final TextInputSession h(@NotNull TextInputService textInputService, @NotNull TextFieldValue value, @NotNull EditProcessor editProcessor, @NotNull ImeOptions imeOptions, @NotNull l<? super TextFieldValue, l0> onValueChange, @NotNull l<? super ImeAction, l0> onImeActionPerformed) {
            t.j(textInputService, "textInputService");
            t.j(value, "value");
            t.j(editProcessor, "editProcessor");
            t.j(imeOptions, "imeOptions");
            t.j(onValueChange, "onValueChange");
            t.j(onImeActionPerformed, "onImeActionPerformed");
            return textInputService.b(value, imeOptions, new TextFieldDelegate$Companion$restartInput$1(editProcessor, onValueChange), onImeActionPerformed);
        }

        public final void i(long j6, @NotNull TextLayoutResultProxy textLayoutResult, @NotNull EditProcessor editProcessor, @NotNull OffsetMapping offsetMapping, @NotNull l<? super TextFieldValue, l0> onValueChange) {
            t.j(textLayoutResult, "textLayoutResult");
            t.j(editProcessor, "editProcessor");
            t.j(offsetMapping, "offsetMapping");
            t.j(onValueChange, "onValueChange");
            onValueChange.invoke(TextFieldValue.c(editProcessor.c(), null, TextRangeKt.a(offsetMapping.a(TextLayoutResultProxy.h(textLayoutResult, j6, false, 2, null))), null, 5, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void f(List<? extends EditCommand> list, EditProcessor editProcessor, l<? super TextFieldValue, l0> lVar) {
            lVar.invoke(editProcessor.a(list));
        }
    }
}
