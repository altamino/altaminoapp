package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontWeight;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidTypefaceWrapper implements AndroidTypeface {

    @Nullable
    private final FontFamily fontFamily;

    @NotNull
    private final Typeface typeface;

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    @NotNull
    public Typeface a(@NotNull FontWeight fontWeight, int i10, int i11) {
        t.j(fontWeight, "fontWeight");
        return this.typeface;
    }

    public AndroidTypefaceWrapper(@NotNull Typeface typeface) {
        t.j(typeface, "typeface");
        this.typeface = typeface;
    }
}
