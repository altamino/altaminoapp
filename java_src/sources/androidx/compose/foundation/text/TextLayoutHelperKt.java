package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class TextLayoutHelperKt {
    public static final boolean a(@NotNull TextLayoutResult canReuse, @NotNull AnnotatedString text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z6, int i11, @NotNull Density density, @NotNull LayoutDirection layoutDirection, @NotNull FontFamily.Resolver fontFamilyResolver, long j6) {
        t.j(canReuse, "$this$canReuse");
        t.j(text, "text");
        t.j(style, "style");
        t.j(placeholders, "placeholders");
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        TextLayoutInput textLayoutInputK = canReuse.k();
        if (canReuse.v().i().b() || !t.e(textLayoutInputK.j(), text) || !textLayoutInputK.i().A(style) || !t.e(textLayoutInputK.g(), placeholders) || textLayoutInputK.e() != i10 || textLayoutInputK.h() != z6 || !TextOverflow.e(textLayoutInputK.f(), i11) || !t.e(textLayoutInputK.b(), density) || textLayoutInputK.d() != layoutDirection || !t.e(textLayoutInputK.c(), fontFamilyResolver) || Constraints.p(j6) != Constraints.p(textLayoutInputK.a())) {
            return false;
        }
        if (z6 || TextOverflow.e(i11, TextOverflow.Companion.b())) {
            return Constraints.n(j6) == Constraints.n(textLayoutInputK.a()) && Constraints.m(j6) == Constraints.m(textLayoutInputK.a());
        }
        return true;
    }
}
