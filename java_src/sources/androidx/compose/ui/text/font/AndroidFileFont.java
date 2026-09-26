package androidx.compose.ui.text.font;

import java.io.File;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class AndroidFileFont extends AndroidPreloadedFont {

    @Nullable
    private final String cacheKey;

    @NotNull
    private final File file;
    private final int style;

    @Nullable
    private final android.graphics.Typeface typefaceInternal;

    @NotNull
    private final FontWeight weight;

    public /* synthetic */ AndroidFileFont(File file, FontWeight fontWeight, int i10, k kVar) {
        this(file, fontWeight, i10);
    }

    @Override // androidx.compose.ui.text.font.Font
    @NotNull
    public FontWeight b() {
        return this.weight;
    }

    @Override // androidx.compose.ui.text.font.Font
    public int c() {
        return this.style;
    }

    @Override // androidx.compose.ui.text.font.AndroidPreloadedFont
    @Nullable
    public String e() {
        return this.cacheKey;
    }

    @Override // androidx.compose.ui.text.font.AndroidPreloadedFont
    @Nullable
    public android.graphics.Typeface f() {
        return this.typefaceInternal;
    }

    public /* synthetic */ AndroidFileFont(File file, FontWeight fontWeight, int i10, int i11, k kVar) {
        this(file, (i11 & 2) != 0 ? FontWeight.Companion.d() : fontWeight, (i11 & 4) != 0 ? FontStyle.Companion.b() : i10, null);
    }

    @NotNull
    public String toString() {
        return "Font(file=" + this.file + ", weight=" + b() + ", style=" + ((Object) FontStyle.h(c())) + ')';
    }

    private AndroidFileFont(File file, FontWeight fontWeight, int i10) {
        this.file = file;
        this.weight = fontWeight;
        this.style = i10;
        this.typefaceInternal = android.graphics.Typeface.createFromFile(file);
    }
}
