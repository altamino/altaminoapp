package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.XmlRes;
import androidx.core.R;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public final class ColorStateListInflaterCompat {
    private static final ThreadLocal<TypedValue> sTempTypedValue = new ThreadLocal<>();

    @ColorInt
    private static int g(@ColorInt int i10, @FloatRange float f, @FloatRange float f6) {
        boolean z6 = f6 >= 0.0f && f6 <= 100.0f;
        if (f == 1.0f && !z6) {
            return i10;
        }
        int iB = MathUtils.b((int) ((Color.alpha(i10) * f) + 0.5f), 0, 255);
        if (z6) {
            CamColor camColorC = CamColor.c(i10);
            i10 = CamColor.m(camColorC.j(), camColorC.i(), f6);
        }
        return (i10 & ViewCompat.MEASURED_SIZE_MASK) | (iB << 24);
    }

    @NonNull
    private static TypedValue c() {
        ThreadLocal<TypedValue> threadLocal = sTempTypedValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0095  */
    private static ColorStateList e(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        float f;
        int i10 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20][];
        int[] iArrA = new int[20];
        int i11 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i10 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayH = h(resources, theme, attributeSet, R.styleable.ColorStateListItem);
                int i12 = R.styleable.ColorStateListItem_android_color;
                int resourceId = typedArrayH.getResourceId(i12, -1);
                if (resourceId == -1 || f(resources, resourceId)) {
                    color = typedArrayH.getColor(i12, -65281);
                } else {
                    try {
                        color = a(resources, resources.getXml(resourceId), theme).getDefaultColor();
                    } catch (Exception unused) {
                        color = typedArrayH.getColor(R.styleable.ColorStateListItem_android_color, -65281);
                    }
                }
                int i13 = R.styleable.ColorStateListItem_android_alpha;
                float f6 = 1.0f;
                if (typedArrayH.hasValue(i13)) {
                    f6 = typedArrayH.getFloat(i13, 1.0f);
                } else {
                    int i14 = R.styleable.ColorStateListItem_alpha;
                    if (typedArrayH.hasValue(i14)) {
                        f6 = typedArrayH.getFloat(i14, 1.0f);
                    }
                }
                if (Build.VERSION.SDK_INT >= 31) {
                    int i15 = R.styleable.ColorStateListItem_android_lStar;
                    if (typedArrayH.hasValue(i15)) {
                        f = typedArrayH.getFloat(i15, -1.0f);
                    } else {
                        f = typedArrayH.getFloat(R.styleable.ColorStateListItem_lStar, -1.0f);
                    }
                } else {
                    f = typedArrayH.getFloat(R.styleable.ColorStateListItem_lStar, -1.0f);
                }
                typedArrayH.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i16 = 0;
                for (int i17 = 0; i17 < attributeCount; i17++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i17);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                        int i18 = i16 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i17, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i16] = attributeNameResource;
                        i16 = i18;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr2, i16);
                iArrA = GrowingArrayUtils.a(iArrA, i11, g(color, f6, f));
                iArr = (int[][]) GrowingArrayUtils.b(iArr, i11, iArrTrimStateSet);
                i11++;
            }
            i10 = 1;
        }
        int[] iArr3 = new int[i11];
        int[][] iArr4 = new int[i11][];
        System.arraycopy(iArrA, 0, iArr3, 0, i11);
        System.arraycopy(iArr, 0, iArr4, 0, i11);
        return new ColorStateList(iArr4, iArr3);
    }

    private static TypedArray h(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    private ColorStateListInflaterCompat() {
    }

    @NonNull
    public static ColorStateList a(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(resources, xmlPullParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    @NonNull
    public static ColorStateList b(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return e(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    @Nullable
    public static ColorStateList d(@NonNull Resources resources, @XmlRes int i10, @Nullable Resources.Theme theme) {
        try {
            return a(resources, resources.getXml(i10), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }

    private static boolean f(@NonNull Resources resources, @ColorRes int i10) {
        TypedValue typedValueC = c();
        resources.getValue(i10, typedValueC, true);
        int i11 = typedValueC.type;
        if (i11 >= 28 && i11 <= 31) {
            return true;
        }
        return false;
    }
}
