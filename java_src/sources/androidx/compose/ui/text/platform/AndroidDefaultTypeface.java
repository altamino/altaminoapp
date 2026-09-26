package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.text.font.AndroidFontUtils_androidKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.TypefaceHelperMethodsApi28;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class AndroidDefaultTypeface implements AndroidTypeface {

    @NotNull
    private final FontFamily fontFamily = FontFamily.Companion.b();

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    @NotNull
    public Typeface a(@NotNull FontWeight fontWeight, int i10, int i11) {
        t.j(fontWeight, "fontWeight");
        if (Build.VERSION.SDK_INT < 28) {
            Typeface typefaceDefaultFromStyle = Typeface.defaultFromStyle(AndroidFontUtils_androidKt.c(fontWeight, i10));
            t.i(typefaceDefaultFromStyle, "{\n            Typeface.d…)\n            )\n        }");
            return typefaceDefaultFromStyle;
        }
        TypefaceHelperMethodsApi28 typefaceHelperMethodsApi28 = TypefaceHelperMethodsApi28.INSTANCE;
        Typeface DEFAULT = Typeface.DEFAULT;
        t.i(DEFAULT, "DEFAULT");
        return typefaceHelperMethodsApi28.a(DEFAULT, fontWeight.k(), FontStyle.f(i10, FontStyle.Companion.a()));
    }
}
