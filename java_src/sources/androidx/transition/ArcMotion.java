package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes9.dex */
public class ArcMotion extends PathMotion {
    private static final float DEFAULT_MAX_ANGLE_DEGREES = 70.0f;
    private static final float DEFAULT_MAX_TANGENT = (float) Math.tan(Math.toRadians(35.0d));
    private static final float DEFAULT_MIN_ANGLE_DEGREES = 0.0f;
    private float mMaximumAngle;
    private float mMaximumTangent;
    private float mMinimumHorizontalAngle;
    private float mMinimumHorizontalTangent;
    private float mMinimumVerticalAngle;
    private float mMinimumVerticalTangent;

    public ArcMotion() {
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
    }

    private static float e(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    @SuppressLint({"RestrictedApi"})
    public ArcMotion(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.ARC_MOTION);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        d(TypedArrayUtils.j(typedArrayObtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        c(TypedArrayUtils.j(typedArrayObtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        b(TypedArrayUtils.j(typedArrayObtainStyledAttributes, xmlPullParser, "maximumAngle", 2, DEFAULT_MAX_ANGLE_DEGREES));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.transition.PathMotion
    @NonNull
    public Path a(float f, float f6, float f7, float f10) {
        float f11;
        float f12;
        float f13;
        Path path = new Path();
        path.moveTo(f, f6);
        float f14 = f7 - f;
        float f15 = f10 - f6;
        float f16 = (f14 * f14) + (f15 * f15);
        float f17 = (f + f7) / 2.0f;
        float f18 = (f6 + f10) / 2.0f;
        float f19 = 0.25f * f16;
        boolean z6 = f6 > f10;
        if (Math.abs(f14) < Math.abs(f15)) {
            float fAbs = Math.abs(f16 / (f15 * 2.0f));
            if (z6) {
                f12 = fAbs + f10;
                f11 = f7;
            } else {
                f12 = fAbs + f6;
                f11 = f;
            }
            f13 = this.mMinimumVerticalTangent;
        } else {
            float f20 = f16 / (f14 * 2.0f);
            if (z6) {
                f12 = f6;
                f11 = f20 + f;
            } else {
                f11 = f7 - f20;
                f12 = f10;
            }
            f13 = this.mMinimumHorizontalTangent;
        }
        float f21 = f19 * f13 * f13;
        float f22 = f17 - f11;
        float f23 = f18 - f12;
        float f24 = (f22 * f22) + (f23 * f23);
        float f25 = this.mMaximumTangent;
        float f26 = f19 * f25 * f25;
        if (f24 >= f21) {
            f21 = f24 > f26 ? f26 : 0.0f;
        }
        if (f21 != 0.0f) {
            float fSqrt = (float) Math.sqrt(f21 / f24);
            f11 = ((f11 - f17) * fSqrt) + f17;
            f12 = f18 + (fSqrt * (f12 - f18));
        }
        path.cubicTo((f + f11) / 2.0f, (f6 + f12) / 2.0f, (f11 + f7) / 2.0f, (f12 + f10) / 2.0f, f7, f10);
        return path;
    }

    public void b(float f) {
        this.mMaximumAngle = f;
        this.mMaximumTangent = e(f);
    }

    public void c(float f) {
        this.mMinimumHorizontalAngle = f;
        this.mMinimumHorizontalTangent = e(f);
    }

    public void d(float f) {
        this.mMinimumVerticalAngle = f;
        this.mMinimumVerticalTangent = e(f);
    }
}
