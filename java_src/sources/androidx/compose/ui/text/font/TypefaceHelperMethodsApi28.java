package androidx.compose.ui.text.font;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@RequiresApi
public final class TypefaceHelperMethodsApi28 {

    @NotNull
    public static final TypefaceHelperMethodsApi28 INSTANCE = new TypefaceHelperMethodsApi28();

    @DoNotInline
    @RequiresApi
    @NotNull
    public final android.graphics.Typeface a(@NotNull android.graphics.Typeface typeface, int i10, boolean z6) {
        t.j(typeface, "typeface");
        android.graphics.Typeface typefaceCreate = android.graphics.Typeface.create(typeface, i10, z6);
        t.i(typefaceCreate, "create(typeface, finalFontWeight, finalFontStyle)");
        return typefaceCreate;
    }

    private TypefaceHelperMethodsApi28() {
    }
}
