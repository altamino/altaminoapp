package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes8.dex */
public class PatternPathMotion extends PathMotion {
    private Path mOriginalPatternPath;
    private final Path mPatternPath;
    private final Matrix mTempMatrix;

    public PatternPathMotion() {
        Path path = new Path();
        this.mPatternPath = path;
        this.mTempMatrix = new Matrix();
        path.lineTo(1.0f, 0.0f);
        this.mOriginalPatternPath = path;
    }

    private static float b(float f, float f6) {
        return (float) Math.sqrt((f * f) + (f6 * f6));
    }

    @Override // androidx.transition.PathMotion
    @NonNull
    public Path a(float f, float f6, float f7, float f10) {
        float f11 = f7 - f;
        float f12 = f10 - f6;
        float fB = b(f11, f12);
        double dAtan2 = Math.atan2(f12, f11);
        this.mTempMatrix.setScale(fB, fB);
        this.mTempMatrix.postRotate((float) Math.toDegrees(dAtan2));
        this.mTempMatrix.postTranslate(f, f6);
        Path path = new Path();
        this.mPatternPath.transform(this.mTempMatrix, path);
        return path;
    }

    public void c(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        pathMeasure.getPosTan(pathMeasure.getLength(), fArr, null);
        float f = fArr[0];
        float f6 = fArr[1];
        pathMeasure.getPosTan(0.0f, fArr, null);
        float f7 = fArr[0];
        float f10 = fArr[1];
        if (f7 == f && f10 == f6) {
            throw new IllegalArgumentException("pattern must not end at the starting point");
        }
        this.mTempMatrix.setTranslate(-f7, -f10);
        float f11 = f - f7;
        float f12 = f6 - f10;
        float fB = 1.0f / b(f11, f12);
        this.mTempMatrix.postScale(fB, fB);
        this.mTempMatrix.postRotate((float) Math.toDegrees(-Math.atan2(f12, f11)));
        path.transform(this.mTempMatrix, this.mPatternPath);
        this.mOriginalPatternPath = path;
    }

    @SuppressLint({"RestrictedApi"})
    public PatternPathMotion(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        this.mPatternPath = new Path();
        this.mTempMatrix = new Matrix();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.PATTERN_PATH_MOTION);
        try {
            String strM = TypedArrayUtils.m(typedArrayObtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (strM != null) {
                c(PathParser.e(strM));
                typedArrayObtainStyledAttributes.recycle();
                return;
            }
            throw new RuntimeException("pathData must be supplied for patternPathMotion");
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public PatternPathMotion(Path path) {
        this.mPatternPath = new Path();
        this.mTempMatrix = new Matrix();
        c(path);
    }
}
