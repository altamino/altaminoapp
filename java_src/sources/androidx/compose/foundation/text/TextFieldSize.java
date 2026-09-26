package androidx.compose.foundation.text;

import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class TextFieldSize {

    @NotNull
    private Density density;

    @NotNull
    private FontFamily.Resolver fontFamilyResolver;

    @NotNull
    private LayoutDirection layoutDirection;
    private long minSize;

    @NotNull
    private TextStyle resolvedStyle;

    @NotNull
    private Object typeface;

    public final long b() {
        return this.minSize;
    }

    public TextFieldSize(@NotNull LayoutDirection layoutDirection, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull TextStyle resolvedStyle, @NotNull Object typeface) {
        t.j(layoutDirection, "layoutDirection");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        t.j(resolvedStyle, "resolvedStyle");
        t.j(typeface, "typeface");
        this.layoutDirection = layoutDirection;
        this.density = density;
        this.fontFamilyResolver = fontFamilyResolver;
        this.resolvedStyle = resolvedStyle;
        this.typeface = typeface;
        this.minSize = a();
    }

    private final long a() {
        return TextFieldDelegateKt.b(this.resolvedStyle, this.density, this.fontFamilyResolver, null, 0, 24, null);
    }

    public final void c(@NotNull LayoutDirection layoutDirection, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull TextStyle resolvedStyle, @NotNull Object typeface) {
        t.j(layoutDirection, "layoutDirection");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        t.j(resolvedStyle, "resolvedStyle");
        t.j(typeface, "typeface");
        if (layoutDirection == this.layoutDirection && t.e(density, this.density) && t.e(fontFamilyResolver, this.fontFamilyResolver) && t.e(resolvedStyle, this.resolvedStyle) && t.e(typeface, this.typeface)) {
            return;
        }
        this.layoutDirection = layoutDirection;
        this.density = density;
        this.fontFamilyResolver = fontFamilyResolver;
        this.resolvedStyle = resolvedStyle;
        this.typeface = typeface;
        this.minSize = a();
    }
}
