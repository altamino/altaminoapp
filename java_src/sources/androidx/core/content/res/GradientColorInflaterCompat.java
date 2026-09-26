package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo
final class GradientColorInflaterCompat {
    private static final int TILE_MODE_CLAMP = 0;
    private static final int TILE_MODE_MIRROR = 2;
    private static final int TILE_MODE_REPEAT = 1;

    private static Shader.TileMode d(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR;
        }
        return Shader.TileMode.REPEAT;
    }

    private static ColorStops a(@Nullable ColorStops colorStops, @ColorInt int i10, @ColorInt int i11, boolean z6, @ColorInt int i12) {
        if (colorStops != null) {
            return colorStops;
        }
        return z6 ? new ColorStops(i10, i12, i11) : new ColorStops(i10, i11);
    }

    static Shader b(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, R.styleable.GradientColor);
        float fJ = TypedArrayUtils.j(typedArrayS, xmlPullParser, "startX", R.styleable.GradientColor_android_startX, 0.0f);
        float fJ2 = TypedArrayUtils.j(typedArrayS, xmlPullParser, "startY", R.styleable.GradientColor_android_startY, 0.0f);
        float fJ3 = TypedArrayUtils.j(typedArrayS, xmlPullParser, "endX", R.styleable.GradientColor_android_endX, 0.0f);
        float fJ4 = TypedArrayUtils.j(typedArrayS, xmlPullParser, "endY", R.styleable.GradientColor_android_endY, 0.0f);
        float fJ5 = TypedArrayUtils.j(typedArrayS, xmlPullParser, "centerX", R.styleable.GradientColor_android_centerX, 0.0f);
        float fJ6 = TypedArrayUtils.j(typedArrayS, xmlPullParser, "centerY", R.styleable.GradientColor_android_centerY, 0.0f);
        int iK = TypedArrayUtils.k(typedArrayS, xmlPullParser, "type", R.styleable.GradientColor_android_type, 0);
        int iF = TypedArrayUtils.f(typedArrayS, xmlPullParser, "startColor", R.styleable.GradientColor_android_startColor, 0);
        boolean zR = TypedArrayUtils.r(xmlPullParser, "centerColor");
        int iF2 = TypedArrayUtils.f(typedArrayS, xmlPullParser, "centerColor", R.styleable.GradientColor_android_centerColor, 0);
        int iF3 = TypedArrayUtils.f(typedArrayS, xmlPullParser, "endColor", R.styleable.GradientColor_android_endColor, 0);
        int iK2 = TypedArrayUtils.k(typedArrayS, xmlPullParser, "tileMode", R.styleable.GradientColor_android_tileMode, 0);
        float fJ7 = TypedArrayUtils.j(typedArrayS, xmlPullParser, "gradientRadius", R.styleable.GradientColor_android_gradientRadius, 0.0f);
        typedArrayS.recycle();
        ColorStops colorStopsA = a(c(resources, xmlPullParser, attributeSet, theme), iF, iF3, zR, iF2);
        if (iK != 1) {
            return iK != 2 ? new LinearGradient(fJ, fJ2, fJ3, fJ4, colorStopsA.mColors, colorStopsA.mOffsets, d(iK2)) : new SweepGradient(fJ5, fJ6, colorStopsA.mColors, colorStopsA.mOffsets);
        }
        if (fJ7 > 0.0f) {
            return new RadialGradient(fJ5, fJ6, fJ7, colorStopsA.mColors, colorStopsA.mOffsets, d(iK2));
        }
        throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
    }

    private GradientColorInflaterCompat() {
    }

    private static ColorStops c(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, R.styleable.GradientColorItem);
                int i10 = R.styleable.GradientColorItem_android_color;
                boolean zHasValue = typedArrayS.hasValue(i10);
                int i11 = R.styleable.GradientColorItem_android_offset;
                boolean zHasValue2 = typedArrayS.hasValue(i11);
                if (zHasValue && zHasValue2) {
                    int color = typedArrayS.getColor(i10, 0);
                    float f = typedArrayS.getFloat(i11, 0.0f);
                    typedArrayS.recycle();
                    arrayList2.add(Integer.valueOf(color));
                    arrayList.add(Float.valueOf(f));
                } else {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
                }
            }
        }
        if (arrayList2.size() > 0) {
            return new ColorStops(arrayList2, arrayList);
        }
        return null;
    }

    static final class ColorStops {
        final int[] mColors;
        final float[] mOffsets;

        ColorStops(@NonNull List<Integer> list, @NonNull List<Float> list2) {
            int size = list.size();
            this.mColors = new int[size];
            this.mOffsets = new float[size];
            for (int i10 = 0; i10 < size; i10++) {
                this.mColors[i10] = list.get(i10).intValue();
                this.mOffsets[i10] = list2.get(i10).floatValue();
            }
        }

        ColorStops(@ColorInt int i10, @ColorInt int i11) {
            this.mColors = new int[]{i10, i11};
            this.mOffsets = new float[]{0.0f, 1.0f};
        }

        ColorStops(@ColorInt int i10, @ColorInt int i11, @ColorInt int i12) {
            this.mColors = new int[]{i10, i11, i12};
            this.mOffsets = new float[]{0.0f, 0.5f, 1.0f};
        }
    }
}
