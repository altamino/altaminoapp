package androidx.compose.ui.text.font;

import androidx.annotation.VisibleForTesting;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@VisibleForTesting
final class PlatformTypefacesApi implements PlatformTypefaces {
    private final android.graphics.Typeface d(String str, FontWeight fontWeight, int i10) {
        if (FontStyle.f(i10, FontStyle.Companion.b()) && t.e(fontWeight, FontWeight.Companion.d()) && (str == null || str.length() == 0)) {
            android.graphics.Typeface DEFAULT = android.graphics.Typeface.DEFAULT;
            t.i(DEFAULT, "DEFAULT");
            return DEFAULT;
        }
        int iC = AndroidFontUtils_androidKt.c(fontWeight, i10);
        if (str == null || str.length() == 0) {
            android.graphics.Typeface typefaceDefaultFromStyle = android.graphics.Typeface.defaultFromStyle(iC);
            t.i(typefaceDefaultFromStyle, "{\n            Typeface.d…le(targetStyle)\n        }");
            return typefaceDefaultFromStyle;
        }
        android.graphics.Typeface typefaceCreate = android.graphics.Typeface.create(str, iC);
        t.i(typefaceCreate, "{\n            Typeface.c…y, targetStyle)\n        }");
        return typefaceCreate;
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    @Nullable
    public android.graphics.Typeface a(@NotNull String familyName, @NotNull FontWeight weight, int i10) {
        t.j(familyName, "familyName");
        t.j(weight, "weight");
        FontFamily.Companion companion = FontFamily.Companion;
        if (t.e(familyName, companion.d().m())) {
            return b(companion.d(), weight, i10);
        }
        if (t.e(familyName, companion.e().m())) {
            return b(companion.e(), weight, i10);
        }
        if (t.e(familyName, companion.c().m())) {
            return b(companion.c(), weight, i10);
        }
        return t.e(familyName, companion.a().m()) ? b(companion.a(), weight, i10) : e(familyName, weight, i10);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    @NotNull
    public android.graphics.Typeface b(@NotNull GenericFontFamily name, @NotNull FontWeight fontWeight, int i10) {
        t.j(name, "name");
        t.j(fontWeight, "fontWeight");
        android.graphics.Typeface typefaceE = e(PlatformTypefacesKt.b(name.m(), fontWeight), fontWeight, i10);
        return typefaceE == null ? d(name.m(), fontWeight, i10) : typefaceE;
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    @NotNull
    public android.graphics.Typeface c(@NotNull FontWeight fontWeight, int i10) {
        t.j(fontWeight, "fontWeight");
        return d(null, fontWeight, i10);
    }

    private final android.graphics.Typeface e(String str, FontWeight fontWeight, int i10) {
        if (str.length() == 0) {
            return null;
        }
        android.graphics.Typeface typefaceD = d(str, fontWeight, i10);
        if (t.e(typefaceD, android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, AndroidFontUtils_androidKt.c(fontWeight, i10))) || t.e(typefaceD, d(null, fontWeight, i10))) {
            return null;
        }
        return typefaceD;
    }
}
