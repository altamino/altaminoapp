package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import android.text.Spannable;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.android.style.TypefaceSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import e8.q;
import e8.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SpannableExtensions_androidKt$setFontAttributes$1 extends v implements q<SpanStyle, Integer, Integer, l0> {
    final /* synthetic */ r<FontFamily, FontWeight, FontStyle, FontSynthesis, Typeface> $resolveTypeface;
    final /* synthetic */ Spannable $this_setFontAttributes;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SpannableExtensions_androidKt$setFontAttributes$1(Spannable spannable, r<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> rVar) {
        super(3);
        this.$this_setFontAttributes = spannable;
        this.$resolveTypeface = rVar;
    }

    public final void a(@NotNull SpanStyle spanStyle, int i10, int i11) {
        t.j(spanStyle, "spanStyle");
        Spannable spannable = this.$this_setFontAttributes;
        r<FontFamily, FontWeight, FontStyle, FontSynthesis, Typeface> rVar = this.$resolveTypeface;
        FontFamily fontFamilyG = spanStyle.g();
        FontWeight fontWeightL = spanStyle.l();
        if (fontWeightL == null) {
            fontWeightL = FontWeight.Companion.d();
        }
        FontStyle fontStyleJ = spanStyle.j();
        FontStyle fontStyleC = FontStyle.c(fontStyleJ != null ? fontStyleJ.i() : FontStyle.Companion.b());
        FontSynthesis fontSynthesisK = spanStyle.k();
        spannable.setSpan(new TypefaceSpan(rVar.invoke(fontFamilyG, fontWeightL, fontStyleC, FontSynthesis.e(fontSynthesisK != null ? fontSynthesisK.m() : FontSynthesis.Companion.a()))), i10, i11, 33);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(SpanStyle spanStyle, Integer num, Integer num2) {
        a(spanStyle, num.intValue(), num2.intValue());
        return l0.INSTANCE;
    }
}
