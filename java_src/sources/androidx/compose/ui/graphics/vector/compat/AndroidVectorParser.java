package androidx.compose.ui.graphics.vector.compat;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.StyleableRes;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.TypedArrayUtils;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes10.dex */
public final class AndroidVectorParser {
    private int config;

    @NotNull
    private final XmlPullParser xmlParser;

    public AndroidVectorParser(@NotNull XmlPullParser xmlParser, int i10) {
        t.j(xmlParser, "xmlParser");
        this.xmlParser = xmlParser;
        this.config = i10;
    }

    private final void m(int i10) {
        this.config = i10 | this.config;
    }

    public final int a() {
        return this.config;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidVectorParser)) {
            return false;
        }
        AndroidVectorParser androidVectorParser = (AndroidVectorParser) obj;
        return t.e(this.xmlParser, androidVectorParser.xmlParser) && this.config == androidVectorParser.config;
    }

    public int hashCode() {
        return (this.xmlParser.hashCode() * 31) + this.config;
    }

    @NotNull
    public final XmlPullParser k() {
        return this.xmlParser;
    }

    @NotNull
    public String toString() {
        return "AndroidVectorParser(xmlParser=" + this.xmlParser + ", config=" + this.config + ')';
    }

    public /* synthetic */ AndroidVectorParser(XmlPullParser xmlPullParser, int i10, int i11, k kVar) {
        this(xmlPullParser, (i11 & 2) != 0 ? 0 : i10);
    }

    public final float b(@NotNull TypedArray typedArray, int i10, float f) {
        t.j(typedArray, "typedArray");
        float dimension = typedArray.getDimension(i10, f);
        m(typedArray.getChangingConfigurations());
        return dimension;
    }

    public final float c(@NotNull TypedArray typedArray, int i10, float f) {
        t.j(typedArray, "typedArray");
        float f6 = typedArray.getFloat(i10, f);
        m(typedArray.getChangingConfigurations());
        return f6;
    }

    public final int d(@NotNull TypedArray typedArray, int i10, int i11) {
        t.j(typedArray, "typedArray");
        int i12 = typedArray.getInt(i10, i11);
        m(typedArray.getChangingConfigurations());
        return i12;
    }

    public final boolean e(@NotNull TypedArray typedArray, @NotNull String attrName, @StyleableRes int i10, boolean z6) {
        t.j(typedArray, "typedArray");
        t.j(attrName, "attrName");
        boolean zE = TypedArrayUtils.e(typedArray, this.xmlParser, attrName, i10, z6);
        m(typedArray.getChangingConfigurations());
        return zE;
    }

    @Nullable
    public final ColorStateList f(@NotNull TypedArray typedArray, @Nullable Resources.Theme theme, @NotNull String attrName, @StyleableRes int i10) {
        t.j(typedArray, "typedArray");
        t.j(attrName, "attrName");
        ColorStateList colorStateListG = TypedArrayUtils.g(typedArray, this.xmlParser, theme, attrName, i10);
        m(typedArray.getChangingConfigurations());
        return colorStateListG;
    }

    @NotNull
    public final ComplexColorCompat g(@NotNull TypedArray typedArray, @Nullable Resources.Theme theme, @NotNull String attrName, @StyleableRes int i10, @ColorInt int i11) {
        t.j(typedArray, "typedArray");
        t.j(attrName, "attrName");
        ComplexColorCompat result = TypedArrayUtils.i(typedArray, this.xmlParser, theme, attrName, i10, i11);
        m(typedArray.getChangingConfigurations());
        t.i(result, "result");
        return result;
    }

    public final float h(@NotNull TypedArray typedArray, @NotNull String attrName, @StyleableRes int i10, float f) {
        t.j(typedArray, "typedArray");
        t.j(attrName, "attrName");
        float fJ = TypedArrayUtils.j(typedArray, this.xmlParser, attrName, i10, f);
        m(typedArray.getChangingConfigurations());
        return fJ;
    }

    public final int i(@NotNull TypedArray typedArray, @NotNull String attrName, @StyleableRes int i10, int i11) {
        t.j(typedArray, "typedArray");
        t.j(attrName, "attrName");
        int iK = TypedArrayUtils.k(typedArray, this.xmlParser, attrName, i10, i11);
        m(typedArray.getChangingConfigurations());
        return iK;
    }

    @Nullable
    public final String j(@NotNull TypedArray typedArray, int i10) {
        t.j(typedArray, "typedArray");
        String string = typedArray.getString(i10);
        m(typedArray.getChangingConfigurations());
        return string;
    }

    @NotNull
    public final TypedArray l(@NotNull Resources res, @Nullable Resources.Theme theme, @NotNull AttributeSet set, @NotNull int[] attrs) {
        t.j(res, "res");
        t.j(set, "set");
        t.j(attrs, "attrs");
        TypedArray typedArrayS = TypedArrayUtils.s(res, theme, set, attrs);
        t.i(typedArrayS, "obtainAttributes(\n      …          attrs\n        )");
        m(typedArrayS.getChangingConfigurations());
        return typedArrayS;
    }
}
