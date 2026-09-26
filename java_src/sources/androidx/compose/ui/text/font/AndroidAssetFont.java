package androidx.compose.ui.text.font;

import android.content.res.AssetManager;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidAssetFont extends AndroidPreloadedFont {

    @NotNull
    private final AssetManager assetManager;

    @NotNull
    private final String cacheKey;

    @NotNull
    private final String path;
    private final int style;

    @Nullable
    private final android.graphics.Typeface typefaceInternal;

    @NotNull
    private final FontWeight weight;

    public /* synthetic */ AndroidAssetFont(AssetManager assetManager, String str, FontWeight fontWeight, int i10, k kVar) {
        this(assetManager, str, fontWeight, i10);
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
    @NotNull
    public String e() {
        return this.cacheKey;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!t.e(AndroidAssetFont.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj != null) {
            return t.e(this.path, ((AndroidAssetFont) obj).path);
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.text.font.AndroidAssetFont");
    }

    @Override // androidx.compose.ui.text.font.AndroidPreloadedFont
    @Nullable
    public android.graphics.Typeface f() {
        return this.typefaceInternal;
    }

    public /* synthetic */ AndroidAssetFont(AssetManager assetManager, String str, FontWeight fontWeight, int i10, int i11, k kVar) {
        this(assetManager, str, (i11 & 4) != 0 ? FontWeight.Companion.d() : fontWeight, (i11 & 8) != 0 ? FontStyle.Companion.b() : i10, null);
    }

    public int hashCode() {
        return this.path.hashCode();
    }

    @NotNull
    public String toString() {
        return "Font(assetManager, path=" + this.path + ", weight=" + b() + ", style=" + ((Object) FontStyle.h(c())) + ')';
    }

    private AndroidAssetFont(AssetManager assetManager, String str, FontWeight fontWeight, int i10) {
        this.assetManager = assetManager;
        this.path = str;
        this.weight = fontWeight;
        this.style = i10;
        this.typefaceInternal = android.graphics.Typeface.createFromAsset(assetManager, str);
        this.cacheKey = "asset:" + str;
    }
}
