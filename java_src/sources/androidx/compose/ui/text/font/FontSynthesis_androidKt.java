package androidx.compose.ui.text.font;

import android.os.Build;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class FontSynthesis_androidKt {
    /* JADX WARN: Code duplicated, block: B:14:0x0042  */
    @NotNull
    public static final Object a(int i10, @NotNull Object typeface, @NotNull Font font, @NotNull FontWeight requestedWeight, int i11) {
        boolean z6;
        android.graphics.Typeface typefaceA;
        t.j(typeface, "typeface");
        t.j(font, "font");
        t.j(requestedWeight, "requestedWeight");
        if (!(typeface instanceof android.graphics.Typeface)) {
            return typeface;
        }
        boolean z10 = false;
        if (!FontSynthesis.k(i10) || t.e(font.b(), requestedWeight)) {
            z6 = false;
        } else {
            FontWeight.Companion companion = FontWeight.Companion;
            if (requestedWeight.compareTo(AndroidFontUtils_androidKt.a(companion)) < 0 || font.b().compareTo(AndroidFontUtils_androidKt.a(companion)) >= 0) {
                z6 = false;
            } else {
                z6 = true;
            }
        }
        boolean z11 = FontSynthesis.j(i10) && !FontStyle.f(i11, font.c());
        if (!z11 && !z6) {
            return typeface;
        }
        if (Build.VERSION.SDK_INT < 28) {
            if (z11 && FontStyle.f(i11, FontStyle.Companion.a())) {
                z10 = true;
            }
            typefaceA = android.graphics.Typeface.create((android.graphics.Typeface) typeface, AndroidFontUtils_androidKt.b(z6, z10));
        } else {
            typefaceA = TypefaceHelperMethodsApi28.INSTANCE.a((android.graphics.Typeface) typeface, z6 ? requestedWeight.k() : font.b().k(), z11 ? FontStyle.f(i11, FontStyle.Companion.a()) : FontStyle.f(font.c(), FontStyle.Companion.a()));
        }
        t.i(typefaceA, "if (Build.VERSION.SDK_IN…ht, finalFontStyle)\n    }");
        return typefaceA;
    }
}
