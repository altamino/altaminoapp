package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public final class ComplexColorCompat {
    private static final String LOG_TAG = "ComplexColorCompat";
    private int mColor;
    private final ColorStateList mColorStateList;
    private final Shader mShader;

    @ColorInt
    public int e() {
        return this.mColor;
    }

    @Nullable
    public Shader f() {
        return this.mShader;
    }

    public boolean h() {
        return this.mShader != null;
    }

    public void k(@ColorInt int i10) {
        this.mColor = i10;
    }

    static ComplexColorCompat b(@ColorInt int i10) {
        return new ComplexColorCompat(null, null, i10);
    }

    static ComplexColorCompat c(@NonNull ColorStateList colorStateList) {
        return new ComplexColorCompat(null, colorStateList, colorStateList.getDefaultColor());
    }

    static ComplexColorCompat d(@NonNull Shader shader) {
        return new ComplexColorCompat(shader, null, 0);
    }

    public boolean i() {
        ColorStateList colorStateList;
        return this.mShader == null && (colorStateList = this.mColorStateList) != null && colorStateList.isStateful();
    }

    private ComplexColorCompat(Shader shader, ColorStateList colorStateList, @ColorInt int i10) {
        this.mShader = shader;
        this.mColorStateList = colorStateList;
        this.mColor = i10;
    }

    @NonNull
    private static ComplexColorCompat a(@NonNull Resources resources, @ColorRes int i10, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        XmlResourceParser xml = resources.getXml(i10);
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            name.hashCode();
            if (!name.equals("gradient")) {
                if (name.equals("selector")) {
                    return c(ColorStateListInflaterCompat.b(resources, xml, attributeSetAsAttributeSet, theme));
                }
                throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
            }
            return d(GradientColorInflaterCompat.b(resources, xml, attributeSetAsAttributeSet, theme));
        }
        throw new XmlPullParserException("No start tag found");
    }

    @Nullable
    public static ComplexColorCompat g(@NonNull Resources resources, @ColorRes int i10, @Nullable Resources.Theme theme) {
        try {
            return a(resources, i10, theme);
        } catch (Exception e) {
            Log.e(LOG_TAG, "Failed to inflate ComplexColor.", e);
            return null;
        }
    }

    public boolean j(int[] iArr) {
        if (i()) {
            ColorStateList colorStateList = this.mColorStateList;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.mColor) {
                this.mColor = colorForState;
                return true;
            }
        }
        return false;
    }

    public boolean l() {
        if (!h() && this.mColor == 0) {
            return false;
        }
        return true;
    }
}
