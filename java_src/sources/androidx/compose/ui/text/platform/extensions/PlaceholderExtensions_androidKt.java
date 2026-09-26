package androidx.compose.ui.text.platform.extensions;

import android.text.Spannable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.PlaceholderVerticalAlign;
import androidx.compose.ui.text.android.style.PlaceholderSpan;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class PlaceholderExtensions_androidKt {
    private static final int b(int i10) {
        PlaceholderVerticalAlign.Companion companion = PlaceholderVerticalAlign.Companion;
        if (PlaceholderVerticalAlign.j(i10, companion.a())) {
            return 0;
        }
        if (PlaceholderVerticalAlign.j(i10, companion.g())) {
            return 1;
        }
        if (PlaceholderVerticalAlign.j(i10, companion.b())) {
            return 2;
        }
        if (PlaceholderVerticalAlign.j(i10, companion.c())) {
            return 3;
        }
        if (PlaceholderVerticalAlign.j(i10, companion.f())) {
            return 4;
        }
        if (PlaceholderVerticalAlign.j(i10, companion.d())) {
            return 5;
        }
        if (PlaceholderVerticalAlign.j(i10, companion.e())) {
            return 6;
        }
        throw new IllegalStateException("Invalid PlaceholderVerticalAlign".toString());
    }

    private static final void c(Spannable spannable, Placeholder placeholder, int i10, int i11, Density density) {
        SpannableExtensions_androidKt.r(spannable, new PlaceholderSpan(TextUnit.h(placeholder.c()), a(placeholder.c()), TextUnit.h(placeholder.a()), a(placeholder.a()), density.E0() * density.getDensity(), b(placeholder.b())), i10, i11);
    }

    public static final void d(@NotNull Spannable spannable, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density) {
        t.j(spannable, "<this>");
        t.j(placeholders, "placeholders");
        t.j(density, "density");
        int size = placeholders.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<Placeholder> range = placeholders.get(i10);
            c(spannable, range.a(), range.b(), range.c(), density);
        }
    }

    private static final int a(long j6) {
        long jG = TextUnit.g(j6);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.g(jG, companion.b())) {
            return 0;
        }
        if (TextUnitType.g(jG, companion.a())) {
            return 1;
        }
        return 2;
    }
}
