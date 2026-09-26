package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.text.font.AndroidFontUtils_androidKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.font.TypefaceHelperMethodsApi28;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class AndroidGenericFontFamilyTypeface implements AndroidTypeface {

    @NotNull
    private final FontFamily fontFamily;

    @NotNull
    private final Typeface nativeTypeface;

    public AndroidGenericFontFamilyTypeface(@NotNull GenericFontFamily fontFamily) {
        t.j(fontFamily, "fontFamily");
        this.fontFamily = fontFamily;
        Typeface typefaceCreate = Typeface.create(fontFamily.m(), 0);
        t.g(typefaceCreate);
        this.nativeTypeface = typefaceCreate;
    }

    private final Typeface b(FontWeight fontWeight, int i10) {
        return Build.VERSION.SDK_INT < 28 ? Typeface.create(this.nativeTypeface, AndroidFontUtils_androidKt.c(fontWeight, i10)) : TypefaceHelperMethodsApi28.INSTANCE.a(this.nativeTypeface, fontWeight.k(), FontStyle.f(i10, FontStyle.Companion.a()));
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    @NotNull
    public Typeface a(@NotNull FontWeight fontWeight, int i10, int i11) {
        t.j(fontWeight, "fontWeight");
        Typeface typefaceB = b(fontWeight, i10);
        t.i(typefaceB, "buildStyledTypeface(fontWeight, fontStyle)");
        return typefaceB;
    }
}
