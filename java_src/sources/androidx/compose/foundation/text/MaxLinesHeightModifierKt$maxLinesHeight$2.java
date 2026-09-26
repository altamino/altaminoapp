package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class MaxLinesHeightModifierKt$maxLinesHeight$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ int $maxLines;
    final /* synthetic */ TextStyle $textStyle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MaxLinesHeightModifierKt$maxLinesHeight$2(int i10, TextStyle textStyle) {
        super(3);
        this.$maxLines = i10;
        this.$textStyle = textStyle;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-1027014173);
        int i11 = this.$maxLines;
        if (i11 <= 0) {
            throw new IllegalArgumentException("maxLines must be greater than 0".toString());
        }
        if (i11 == Integer.MAX_VALUE) {
            Modifier.Companion companion = Modifier.Companion;
            composer.Q();
            return companion;
        }
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        FontFamily.Resolver resolver = (FontFamily.Resolver) composer.x(CompositionLocalsKt.g());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        TextStyle textStyle = this.$textStyle;
        composer.G(511388516);
        boolean zK = composer.k(textStyle) | composer.k(layoutDirection);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = TextStyleKt.d(textStyle, layoutDirection);
            composer.z(objH);
        }
        composer.Q();
        TextStyle textStyle2 = (TextStyle) objH;
        composer.G(511388516);
        boolean zK2 = composer.k(resolver) | composer.k(textStyle2);
        Object objH2 = composer.H();
        if (zK2 || objH2 == Composer.Companion.a()) {
            FontFamily fontFamilyH = textStyle2.h();
            FontWeight fontWeightM = textStyle2.m();
            if (fontWeightM == null) {
                fontWeightM = FontWeight.Companion.d();
            }
            FontStyle fontStyleK = textStyle2.k();
            int i12 = fontStyleK != null ? fontStyleK.i() : FontStyle.Companion.b();
            FontSynthesis fontSynthesisL = textStyle2.l();
            objH2 = resolver.a(fontFamilyH, fontWeightM, i12, fontSynthesisL != null ? fontSynthesisL.m() : FontSynthesis.Companion.a());
            composer.z(objH2);
        }
        composer.Q();
        State state = (State) objH2;
        Object[] objArr = {density, resolver, this.$textStyle, layoutDirection, b(state)};
        composer.G(-568225417);
        boolean zK3 = false;
        for (int i13 = 0; i13 < 5; i13++) {
            zK3 |= composer.k(objArr[i13]);
        }
        Object objH3 = composer.H();
        if (zK3 || objH3 == Composer.Companion.a()) {
            objH3 = Integer.valueOf(IntSize.f(TextFieldDelegateKt.a(textStyle2, density, resolver, TextFieldDelegateKt.c(), 1)));
            composer.z(objH3);
        }
        composer.Q();
        int iIntValue = ((Number) objH3).intValue();
        Object[] objArr2 = {density, resolver, this.$textStyle, layoutDirection, b(state)};
        composer.G(-568225417);
        boolean zK4 = false;
        for (int i14 = 0; i14 < 5; i14++) {
            zK4 |= composer.k(objArr2[i14]);
        }
        Object objH4 = composer.H();
        if (zK4 || objH4 == Composer.Companion.a()) {
            objH4 = Integer.valueOf(IntSize.f(TextFieldDelegateKt.a(textStyle2, density, resolver, TextFieldDelegateKt.c() + '\n' + TextFieldDelegateKt.c(), 2)));
            composer.z(objH4);
        }
        composer.Q();
        Modifier modifierQ = SizeKt.q(Modifier.Companion, 0.0f, density.j(iIntValue + ((((Number) objH4).intValue() - iIntValue) * (this.$maxLines - 1))), 1, null);
        composer.Q();
        return modifierQ;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }

    private static final Object b(State<? extends Object> state) {
        return state.getValue();
    }
}
