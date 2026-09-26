package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$SpanStyleSaver$2 extends v implements l<Object, SpanStyle> {
    public static final SaversKt$SpanStyleSaver$2 INSTANCE = new SaversKt$SpanStyleSaver$2();

    SaversKt$SpanStyleSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final SpanStyle invoke(@NotNull Object it) {
        t.j(it, "it");
        List list = (List) it;
        Object obj = list.get(0);
        Color.Companion companion = Color.Companion;
        Saver<Color, Object> saverG = SaversKt.g(companion);
        Boolean bool = Boolean.FALSE;
        Color colorB = (t.e(obj, bool) || obj == null) ? null : saverG.b(obj);
        t.g(colorB);
        long jV = colorB.v();
        Object obj2 = list.get(1);
        TextUnit.Companion companion2 = TextUnit.Companion;
        TextUnit textUnitB = (t.e(obj2, bool) || obj2 == null) ? null : SaversKt.q(companion2).b(obj2);
        t.g(textUnitB);
        long jK = textUnitB.k();
        Object obj3 = list.get(2);
        FontWeight fontWeightB = (t.e(obj3, bool) || obj3 == null) ? null : SaversKt.j(FontWeight.Companion).b(obj3);
        Object obj4 = list.get(3);
        FontStyle fontStyle = obj4 != null ? (FontStyle) obj4 : null;
        Object obj5 = list.get(4);
        FontSynthesis fontSynthesis = obj5 != null ? (FontSynthesis) obj5 : null;
        Object obj6 = list.get(6);
        String str = obj6 != null ? (String) obj6 : null;
        Object obj7 = list.get(7);
        TextUnit textUnitB2 = (t.e(obj7, bool) || obj7 == null) ? null : SaversKt.q(companion2).b(obj7);
        t.g(textUnitB2);
        long jK2 = textUnitB2.k();
        Object obj8 = list.get(8);
        BaselineShift baselineShiftB = (t.e(obj8, bool) || obj8 == null) ? null : SaversKt.m(BaselineShift.Companion).b(obj8);
        Object obj9 = list.get(9);
        TextGeometricTransform textGeometricTransformB = (t.e(obj9, bool) || obj9 == null) ? null : SaversKt.o(TextGeometricTransform.Companion).b(obj9);
        Object obj10 = list.get(10);
        LocaleList localeListB = (t.e(obj10, bool) || obj10 == null) ? null : SaversKt.l(LocaleList.Companion).b(obj10);
        Object obj11 = list.get(11);
        Color colorB2 = (t.e(obj11, bool) || obj11 == null) ? null : SaversKt.g(companion).b(obj11);
        t.g(colorB2);
        long jV2 = colorB2.v();
        Object obj12 = list.get(12);
        TextDecoration textDecorationB = (t.e(obj12, bool) || obj12 == null) ? null : SaversKt.n(TextDecoration.Companion).b(obj12);
        Object obj13 = list.get(13);
        return new SpanStyle(jV, jK, fontWeightB, fontStyle, fontSynthesis, (FontFamily) null, str, jK2, baselineShiftB, textGeometricTransformB, localeListB, jV2, textDecorationB, (t.e(obj13, bool) || obj13 == null) ? null : SaversKt.h(Shadow.Companion).b(obj13), 32, (k) null);
    }
}
