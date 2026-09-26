package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.graphics.drawable.DrawableCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes9.dex */
public class DrawerArrowDrawable extends Drawable {
    public static final int ARROW_DIRECTION_END = 3;
    public static final int ARROW_DIRECTION_LEFT = 0;
    public static final int ARROW_DIRECTION_RIGHT = 1;
    public static final int ARROW_DIRECTION_START = 2;
    private static final float ARROW_HEAD_ANGLE = (float) Math.toRadians(45.0d);
    private float mArrowHeadLength;
    private float mArrowShaftLength;
    private float mBarGap;
    private float mBarLength;
    private int mDirection;
    private float mMaxCutForBarSize;
    private final Paint mPaint;
    private final Path mPath;
    private float mProgress;
    private final int mSize;
    private boolean mSpin;
    private boolean mVerticalMirror;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ArrowDirection {
    }

    private static float b(float f, float f6, float f7) {
        return f + ((f6 - f) * f7);
    }

    @FloatRange
    public float a() {
        return this.mProgress;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mSize;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mSize;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void c(float f) {
        if (this.mPaint.getStrokeWidth() != f) {
            this.mPaint.setStrokeWidth(f);
            this.mMaxCutForBarSize = (float) (((double) (f / 2.0f)) * Math.cos(ARROW_HEAD_ANGLE));
            invalidateSelf();
        }
    }

    public void d(@ColorInt int i10) {
        if (i10 != this.mPaint.getColor()) {
            this.mPaint.setColor(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i10 = this.mDirection;
        boolean z6 = false;
        if (i10 != 0 && (i10 == 1 || (i10 == 3 ? DrawableCompat.f(this) == 0 : DrawableCompat.f(this) == 1))) {
            z6 = true;
        }
        float f = this.mArrowHeadLength;
        float fB = b(this.mBarLength, (float) Math.sqrt(f * f * 2.0f), this.mProgress);
        float fB2 = b(this.mBarLength, this.mArrowShaftLength, this.mProgress);
        float fRound = Math.round(b(0.0f, this.mMaxCutForBarSize, this.mProgress));
        float fB3 = b(0.0f, ARROW_HEAD_ANGLE, this.mProgress);
        float fB4 = b(z6 ? 0.0f : -180.0f, z6 ? 180.0f : 0.0f, this.mProgress);
        double d = fB;
        double d2 = fB3;
        boolean z10 = z6;
        float fRound2 = Math.round(Math.cos(d2) * d);
        float fRound3 = Math.round(d * Math.sin(d2));
        this.mPath.rewind();
        float fB5 = b(this.mBarGap + this.mPaint.getStrokeWidth(), -this.mMaxCutForBarSize, this.mProgress);
        float f6 = (-fB2) / 2.0f;
        this.mPath.moveTo(f6 + fRound, 0.0f);
        this.mPath.rLineTo(fB2 - (fRound * 2.0f), 0.0f);
        this.mPath.moveTo(f6, fB5);
        this.mPath.rLineTo(fRound2, fRound3);
        this.mPath.moveTo(f6, -fB5);
        this.mPath.rLineTo(fRound2, -fRound3);
        this.mPath.close();
        canvas.save();
        float strokeWidth = this.mPaint.getStrokeWidth();
        float fHeight = bounds.height() - (3.0f * strokeWidth);
        float f7 = this.mBarGap;
        canvas.translate(bounds.centerX(), ((((int) (fHeight - (2.0f * f7))) / 4) * 2) + (strokeWidth * 1.5f) + f7);
        if (this.mSpin) {
            canvas.rotate(fB4 * (this.mVerticalMirror ^ z10 ? -1 : 1));
        } else if (z10) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.mPath, this.mPaint);
        canvas.restore();
    }

    public void e(float f) {
        if (f != this.mBarGap) {
            this.mBarGap = f;
            invalidateSelf();
        }
    }

    public void f(boolean z6) {
        if (this.mSpin != z6) {
            this.mSpin = z6;
            invalidateSelf();
        }
    }

    public void g(boolean z6) {
        if (this.mVerticalMirror != z6) {
            this.mVerticalMirror = z6;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (i10 != this.mPaint.getAlpha()) {
            this.mPaint.setAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setProgress(@FloatRange float f) {
        if (this.mProgress != f) {
            this.mProgress = f;
            invalidateSelf();
        }
    }

    public DrawerArrowDrawable(Context context) {
        Paint paint = new Paint();
        this.mPaint = paint;
        this.mPath = new Path();
        this.mVerticalMirror = false;
        this.mDirection = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R.styleable.DrawerArrowToggle, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        d(typedArrayObtainStyledAttributes.getColor(R.styleable.DrawerArrowToggle_color, 0));
        c(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_thickness, 0.0f));
        f(typedArrayObtainStyledAttributes.getBoolean(R.styleable.DrawerArrowToggle_spinBars, true));
        e(Math.round(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_gapBetweenBars, 0.0f)));
        this.mSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.mBarLength = Math.round(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_barLength, 0.0f));
        this.mArrowHeadLength = Math.round(typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowHeadLength, 0.0f));
        this.mArrowShaftLength = typedArrayObtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowShaftLength, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }
}
