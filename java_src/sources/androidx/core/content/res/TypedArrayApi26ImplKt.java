package androidx.core.content.res;

import android.content.res.TypedArray;
import android.graphics.Typeface;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleableRes;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@RequiresApi
final class TypedArrayApi26ImplKt {

    @NotNull
    public static final TypedArrayApi26ImplKt INSTANCE = new TypedArrayApi26ImplKt();

    @DoNotInline
    @NotNull
    public static final Typeface a(@NotNull TypedArray typedArray, @StyleableRes int i10) {
        t.j(typedArray, "typedArray");
        Typeface font = typedArray.getFont(i10);
        t.g(font);
        return font;
    }

    private TypedArrayApi26ImplKt() {
    }
}
