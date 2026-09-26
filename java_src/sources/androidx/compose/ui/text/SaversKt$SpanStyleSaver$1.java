package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$SpanStyleSaver$1 extends v implements p<SaverScope, SpanStyle, Object> {
    public static final SaversKt$SpanStyleSaver$1 INSTANCE = new SaversKt$SpanStyleSaver$1();

    SaversKt$SpanStyleSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull SpanStyle it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        Color colorH = Color.h(it.f());
        Color.Companion companion = Color.Companion;
        TextUnit textUnitB = TextUnit.b(it.i());
        TextUnit.Companion companion2 = TextUnit.Companion;
        return kotlin.collections.v.g(SaversKt.t(colorH, SaversKt.g(companion), Saver), SaversKt.t(textUnitB, SaversKt.q(companion2), Saver), SaversKt.t(it.l(), SaversKt.j(FontWeight.Companion), Saver), SaversKt.s(it.j()), SaversKt.s(it.k()), SaversKt.s(-1), SaversKt.s(it.h()), SaversKt.t(TextUnit.b(it.m()), SaversKt.q(companion2), Saver), SaversKt.t(it.d(), SaversKt.m(BaselineShift.Companion), Saver), SaversKt.t(it.s(), SaversKt.o(TextGeometricTransform.Companion), Saver), SaversKt.t(it.n(), SaversKt.l(LocaleList.Companion), Saver), SaversKt.t(Color.h(it.c()), SaversKt.g(companion), Saver), SaversKt.t(it.q(), SaversKt.n(TextDecoration.Companion), Saver), SaversKt.t(it.p(), SaversKt.h(Shadow.Companion), Saver));
    }
}
