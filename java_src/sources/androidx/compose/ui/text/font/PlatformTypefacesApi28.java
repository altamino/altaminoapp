package androidx.compose.ui.text.font;

import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
@VisibleForTesting
final class PlatformTypefacesApi28 implements PlatformTypefaces {
    private final android.graphics.Typeface d(String str, FontWeight fontWeight, int i10) {
        FontStyle.Companion companion = FontStyle.Companion;
        if (FontStyle.f(i10, companion.b()) && t.e(fontWeight, FontWeight.Companion.d()) && (str == null || str.length() == 0)) {
            android.graphics.Typeface DEFAULT = android.graphics.Typeface.DEFAULT;
            t.i(DEFAULT, "DEFAULT");
            return DEFAULT;
        }
        android.graphics.Typeface typefaceCreate = android.graphics.Typeface.create(str == null ? android.graphics.Typeface.DEFAULT : android.graphics.Typeface.create(str, 0), fontWeight.k(), FontStyle.f(i10, companion.a()));
        t.i(typefaceCreate, "create(\n            fami…ontStyle.Italic\n        )");
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
        return d(name.m(), fontWeight, i10);
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
        boolean zF = FontStyle.f(i10, FontStyle.Companion.a());
        TypefaceHelperMethodsApi28 typefaceHelperMethodsApi28 = TypefaceHelperMethodsApi28.INSTANCE;
        android.graphics.Typeface DEFAULT = android.graphics.Typeface.DEFAULT;
        t.i(DEFAULT, "DEFAULT");
        if (t.e(typefaceD, typefaceHelperMethodsApi28.a(DEFAULT, fontWeight.k(), zF)) || t.e(typefaceD, d(null, fontWeight, i10))) {
            return null;
        }
        return typefaceD;
    }
}
