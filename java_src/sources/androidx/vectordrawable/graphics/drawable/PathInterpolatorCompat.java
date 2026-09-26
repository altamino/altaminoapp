package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public class PathInterpolatorCompat implements Interpolator {
    public static final double EPSILON = 1.0E-5d;
    public static final int MAX_NUM_POINTS = 3000;
    private static final float PRECISION = 0.002f;
    private float[] mX;
    private float[] mY;

    public PathInterpolatorCompat(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int length = this.mX.length - 1;
        int i10 = 0;
        while (length - i10 > 1) {
            int i11 = (i10 + length) / 2;
            if (f < this.mX[i11]) {
                length = i11;
            } else {
                i10 = i11;
            }
        }
        float[] fArr = this.mX;
        float f6 = fArr[length];
        float f7 = fArr[i10];
        float f10 = f6 - f7;
        if (f10 == 0.0f) {
            return this.mY[i10];
        }
        float f11 = (f - f7) / f10;
        float[] fArr2 = this.mY;
        float f12 = fArr2[i10];
        return f12 + (f11 * (fArr2[length] - f12));
    }

    public PathInterpolatorCompat(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayS = TypedArrayUtils.s(resources, theme, attributeSet, AndroidResources.STYLEABLE_PATH_INTERPOLATOR);
        d(typedArrayS, xmlPullParser);
        typedArrayS.recycle();
    }

    private void a(float f, float f6, float f7, float f10) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f6, f7, f10, 1.0f, 1.0f);
        b(path);
    }

    private void b(Path path) {
        int i10 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.mX = new float[iMin];
        this.mY = new float[iMin];
        float[] fArr = new float[2];
        for (int i11 = 0; i11 < iMin; i11++) {
            pathMeasure.getPosTan((i11 * length) / (iMin - 1), fArr, null);
            this.mX[i11] = fArr[0];
            this.mY[i11] = fArr[1];
        }
        if (Math.abs(this.mX[0]) <= 1.0E-5d && Math.abs(this.mY[0]) <= 1.0E-5d) {
            int i12 = iMin - 1;
            if (Math.abs(this.mX[i12] - 1.0f) <= 1.0E-5d && Math.abs(this.mY[i12] - 1.0f) <= 1.0E-5d) {
                float f = 0.0f;
                int i13 = 0;
                while (i10 < iMin) {
                    float[] fArr2 = this.mX;
                    int i14 = i13 + 1;
                    float f6 = fArr2[i13];
                    if (f6 < f) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f6);
                    }
                    fArr2[i10] = f6;
                    i10++;
                    f = f6;
                    i13 = i14;
                }
                if (pathMeasure.nextContour()) {
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("The Path must start at (0,0) and end at (1,1) start: ");
        sb.append(this.mX[0]);
        sb.append(",");
        sb.append(this.mY[0]);
        sb.append(" end:");
        int i15 = iMin - 1;
        sb.append(this.mX[i15]);
        sb.append(",");
        sb.append(this.mY[i15]);
        throw new IllegalArgumentException(sb.toString());
    }

    private void c(float f, float f6) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f6, 1.0f, 1.0f);
        b(path);
    }

    private void d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.r(xmlPullParser, "pathData")) {
            String strM = TypedArrayUtils.m(typedArray, xmlPullParser, "pathData", 4);
            Path pathE = PathParser.e(strM);
            if (pathE != null) {
                b(pathE);
                return;
            }
            throw new InflateException("The path is null, which is created from " + strM);
        }
        if (TypedArrayUtils.r(xmlPullParser, "controlX1")) {
            if (TypedArrayUtils.r(xmlPullParser, "controlY1")) {
                float fJ = TypedArrayUtils.j(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
                float fJ2 = TypedArrayUtils.j(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
                boolean zR = TypedArrayUtils.r(xmlPullParser, "controlX2");
                if (zR == TypedArrayUtils.r(xmlPullParser, "controlY2")) {
                    if (!zR) {
                        c(fJ, fJ2);
                        return;
                    } else {
                        a(fJ, fJ2, TypedArrayUtils.j(typedArray, xmlPullParser, "controlX2", 2, 0.0f), TypedArrayUtils.j(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
                        return;
                    }
                }
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            }
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        throw new InflateException("pathInterpolator requires the controlX1 attribute");
    }
}
