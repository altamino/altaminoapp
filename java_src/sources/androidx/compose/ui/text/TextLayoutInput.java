package androidx.compose.ui.text;

import androidx.compose.foundation.c;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class TextLayoutInput {

    @Nullable
    private Font.ResourceLoader _developerSuppliedResourceLoader;
    private final long constraints;

    @NotNull
    private final Density density;

    @NotNull
    private final FontFamily.Resolver fontFamilyResolver;

    @NotNull
    private final LayoutDirection layoutDirection;
    private final int maxLines;
    private final int overflow;

    @NotNull
    private final List<AnnotatedString.Range<Placeholder>> placeholders;
    private final boolean softWrap;

    @NotNull
    private final TextStyle style;

    @NotNull
    private final AnnotatedString text;

    public /* synthetic */ TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i10, boolean z6, int i11, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, long j6, k kVar) {
        this(annotatedString, textStyle, (List<AnnotatedString.Range<Placeholder>>) list, i10, z6, i11, density, layoutDirection, resourceLoader, j6);
    }

    public final long a() {
        return this.constraints;
    }

    @NotNull
    public final Density b() {
        return this.density;
    }

    @NotNull
    public final FontFamily.Resolver c() {
        return this.fontFamilyResolver;
    }

    @NotNull
    public final LayoutDirection d() {
        return this.layoutDirection;
    }

    public final int e() {
        return this.maxLines;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextLayoutInput)) {
            return false;
        }
        TextLayoutInput textLayoutInput = (TextLayoutInput) obj;
        return t.e(this.text, textLayoutInput.text) && t.e(this.style, textLayoutInput.style) && t.e(this.placeholders, textLayoutInput.placeholders) && this.maxLines == textLayoutInput.maxLines && this.softWrap == textLayoutInput.softWrap && TextOverflow.e(this.overflow, textLayoutInput.overflow) && t.e(this.density, textLayoutInput.density) && this.layoutDirection == textLayoutInput.layoutDirection && t.e(this.fontFamilyResolver, textLayoutInput.fontFamilyResolver) && Constraints.g(this.constraints, textLayoutInput.constraints);
    }

    public final int f() {
        return this.overflow;
    }

    @NotNull
    public final List<AnnotatedString.Range<Placeholder>> g() {
        return this.placeholders;
    }

    public final boolean h() {
        return this.softWrap;
    }

    @NotNull
    public final TextStyle i() {
        return this.style;
    }

    @NotNull
    public final AnnotatedString j() {
        return this.text;
    }

    public /* synthetic */ TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i10, boolean z6, int i11, Density density, LayoutDirection layoutDirection, FontFamily.Resolver resolver, long j6, k kVar) {
        this(annotatedString, textStyle, (List<AnnotatedString.Range<Placeholder>>) list, i10, z6, i11, density, layoutDirection, resolver, j6);
    }

    public int hashCode() {
        return (((((((((((((((((this.text.hashCode() * 31) + this.style.hashCode()) * 31) + this.placeholders.hashCode()) * 31) + this.maxLines) * 31) + c.a(this.softWrap)) * 31) + TextOverflow.f(this.overflow)) * 31) + this.density.hashCode()) * 31) + this.layoutDirection.hashCode()) * 31) + this.fontFamilyResolver.hashCode()) * 31) + Constraints.q(this.constraints);
    }

    @NotNull
    public String toString() {
        return "TextLayoutInput(text=" + ((Object) this.text) + ", style=" + this.style + ", placeholders=" + this.placeholders + ", maxLines=" + this.maxLines + ", softWrap=" + this.softWrap + ", overflow=" + ((Object) TextOverflow.g(this.overflow)) + ", density=" + this.density + ", layoutDirection=" + this.layoutDirection + ", fontFamilyResolver=" + this.fontFamilyResolver + ", constraints=" + ((Object) Constraints.s(this.constraints)) + ')';
    }

    private TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i10, boolean z6, int i11, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, FontFamily.Resolver resolver, long j6) {
        this.text = annotatedString;
        this.style = textStyle;
        this.placeholders = list;
        this.maxLines = i10;
        this.softWrap = z6;
        this.overflow = i11;
        this.density = density;
        this.layoutDirection = layoutDirection;
        this.fontFamilyResolver = resolver;
        this.constraints = j6;
        this._developerSuppliedResourceLoader = resourceLoader;
    }

    private TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i10, boolean z6, int i11, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, long j6) {
        this(annotatedString, textStyle, list, i10, z6, i11, density, layoutDirection, resourceLoader, DelegatingFontLoaderForDeprecatedUsage_androidKt.a(resourceLoader), j6);
    }

    private TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i10, boolean z6, int i11, Density density, LayoutDirection layoutDirection, FontFamily.Resolver resolver, long j6) {
        this(annotatedString, textStyle, list, i10, z6, i11, density, layoutDirection, (Font.ResourceLoader) null, resolver, j6);
    }
}
