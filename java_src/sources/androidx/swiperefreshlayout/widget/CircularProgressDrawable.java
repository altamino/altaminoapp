package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public class CircularProgressDrawable extends Drawable implements Animatable {
    private static final int ANIMATION_DURATION = 1332;
    private static final int ARROW_HEIGHT = 5;
    private static final int ARROW_HEIGHT_LARGE = 6;
    private static final int ARROW_WIDTH = 10;
    private static final int ARROW_WIDTH_LARGE = 12;
    private static final float CENTER_RADIUS = 7.5f;
    private static final float CENTER_RADIUS_LARGE = 11.0f;
    private static final float COLOR_CHANGE_OFFSET = 0.75f;
    public static final int DEFAULT = 1;
    private static final float GROUP_FULL_ROTATION = 216.0f;
    public static final int LARGE = 0;
    private static final float MAX_PROGRESS_ARC = 0.8f;
    private static final float MIN_PROGRESS_ARC = 0.01f;
    private static final float RING_ROTATION = 0.20999998f;
    private static final float SHRINK_OFFSET = 0.5f;
    private static final float STROKE_WIDTH = 2.5f;
    private static final float STROKE_WIDTH_LARGE = 3.0f;
    private Animator mAnimator;
    boolean mFinishing;
    private Resources mResources;
    private final Ring mRing;
    private float mRotation;
    float mRotationCount;
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final Interpolator MATERIAL_INTERPOLATOR = new FastOutSlowInInterpolator();
    private static final int[] COLORS = {ViewCompat.MEASURED_STATE_MASK};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ProgressDrawableSize {
    }

    private static class Ring {
        int mAlpha;
        Path mArrow;
        int mArrowHeight;
        final Paint mArrowPaint;
        float mArrowScale;
        int mArrowWidth;
        final Paint mCirclePaint;
        int mColorIndex;
        int[] mColors;
        int mCurrentColor;
        float mEndTrim;
        final Paint mPaint;
        float mRingCenterRadius;
        float mRotation;
        boolean mShowArrow;
        float mStartTrim;
        float mStartingEndTrim;
        float mStartingRotation;
        float mStartingStartTrim;
        float mStrokeWidth;
        final RectF mTempBounds = new RectF();

        void A() {
            this.mStartingStartTrim = this.mStartTrim;
            this.mStartingEndTrim = this.mEndTrim;
            this.mStartingRotation = this.mRotation;
        }

        int c() {
            return this.mAlpha;
        }

        float d() {
            return this.mEndTrim;
        }

        float g() {
            return this.mStartTrim;
        }

        float i() {
            return this.mStartingEndTrim;
        }

        float j() {
            return this.mStartingRotation;
        }

        float k() {
            return this.mStartingStartTrim;
        }

        void m() {
            this.mStartingStartTrim = 0.0f;
            this.mStartingEndTrim = 0.0f;
            this.mStartingRotation = 0.0f;
            y(0.0f);
            v(0.0f);
            w(0.0f);
        }

        void n(int i10) {
            this.mAlpha = i10;
        }

        void o(float f, float f6) {
            this.mArrowWidth = (int) f;
            this.mArrowHeight = (int) f6;
        }

        void p(float f) {
            if (f != this.mArrowScale) {
                this.mArrowScale = f;
            }
        }

        void q(float f) {
            this.mRingCenterRadius = f;
        }

        void r(int i10) {
            this.mCurrentColor = i10;
        }

        void v(float f) {
            this.mEndTrim = f;
        }

        void w(float f) {
            this.mRotation = f;
        }

        void x(boolean z6) {
            if (this.mShowArrow != z6) {
                this.mShowArrow = z6;
            }
        }

        void y(float f) {
            this.mStartTrim = f;
        }

        void a(Canvas canvas, Rect rect) {
            RectF rectF = this.mTempBounds;
            float f = this.mRingCenterRadius;
            float fMin = (this.mStrokeWidth / 2.0f) + f;
            if (f <= 0.0f) {
                fMin = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.mArrowWidth * this.mArrowScale) / 2.0f, this.mStrokeWidth / 2.0f);
            }
            rectF.set(rect.centerX() - fMin, rect.centerY() - fMin, rect.centerX() + fMin, rect.centerY() + fMin);
            float f6 = this.mStartTrim;
            float f7 = this.mRotation;
            float f10 = (f6 + f7) * 360.0f;
            float f11 = ((this.mEndTrim + f7) * 360.0f) - f10;
            this.mPaint.setColor(this.mCurrentColor);
            this.mPaint.setAlpha(this.mAlpha);
            float f12 = this.mStrokeWidth / 2.0f;
            rectF.inset(f12, f12);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.mCirclePaint);
            float f13 = -f12;
            rectF.inset(f13, f13);
            canvas.drawArc(rectF, f10, f11, false, this.mPaint);
            b(canvas, f10, f11, rectF);
        }

        void b(Canvas canvas, float f, float f6, RectF rectF) {
            if (this.mShowArrow) {
                Path path = this.mArrow;
                if (path == null) {
                    Path path2 = new Path();
                    this.mArrow = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float fMin = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f7 = (this.mArrowWidth * this.mArrowScale) / 2.0f;
                this.mArrow.moveTo(0.0f, 0.0f);
                this.mArrow.lineTo(this.mArrowWidth * this.mArrowScale, 0.0f);
                Path path3 = this.mArrow;
                float f10 = this.mArrowWidth;
                float f11 = this.mArrowScale;
                path3.lineTo((f10 * f11) / 2.0f, this.mArrowHeight * f11);
                this.mArrow.offset((fMin + rectF.centerX()) - f7, rectF.centerY() + (this.mStrokeWidth / 2.0f));
                this.mArrow.close();
                this.mArrowPaint.setColor(this.mCurrentColor);
                this.mArrowPaint.setAlpha(this.mAlpha);
                canvas.save();
                canvas.rotate(f + f6, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.mArrow, this.mArrowPaint);
                canvas.restore();
            }
        }

        int e() {
            return this.mColors[f()];
        }

        int f() {
            return (this.mColorIndex + 1) % this.mColors.length;
        }

        int h() {
            return this.mColors[this.mColorIndex];
        }

        void s(ColorFilter colorFilter) {
            this.mPaint.setColorFilter(colorFilter);
        }

        void t(int i10) {
            this.mColorIndex = i10;
            this.mCurrentColor = this.mColors[i10];
        }

        void u(@NonNull int[] iArr) {
            this.mColors = iArr;
            t(0);
        }

        void z(float f) {
            this.mStrokeWidth = f;
            this.mPaint.setStrokeWidth(f);
        }

        Ring() {
            Paint paint = new Paint();
            this.mPaint = paint;
            Paint paint2 = new Paint();
            this.mArrowPaint = paint2;
            Paint paint3 = new Paint();
            this.mCirclePaint = paint3;
            this.mStartTrim = 0.0f;
            this.mEndTrim = 0.0f;
            this.mRotation = 0.0f;
            this.mStrokeWidth = 5.0f;
            this.mArrowScale = 1.0f;
            this.mAlpha = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        void l() {
            t(f());
        }
    }

    private int c(float f, int i10, int i11) {
        int i12 = (i10 >> 24) & 255;
        int i13 = (i10 >> 16) & 255;
        int i14 = (i10 >> 8) & 255;
        int i15 = i10 & 255;
        return ((i12 + ((int) ((((i11 >> 24) & 255) - i12) * f))) << 24) | ((i13 + ((int) ((((i11 >> 16) & 255) - i13) * f))) << 16) | ((i14 + ((int) ((((i11 >> 8) & 255) - i14) * f))) << 8) | (i15 + ((int) (f * ((i11 & 255) - i15))));
    }

    private void h(float f) {
        this.mRotation = f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    private void i(float f, float f6, float f7, float f10) {
        Ring ring = this.mRing;
        float f11 = this.mResources.getDisplayMetrics().density;
        ring.z(f6 * f11);
        ring.q(f * f11);
        ring.t(0);
        ring.o(f7 * f11, f10 * f11);
    }

    private void m() {
        final Ring ring = this.mRing;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressDrawable.this.n(fFloatValue, ring);
                CircularProgressDrawable.this.b(fFloatValue, ring, false);
                CircularProgressDrawable.this.invalidateSelf();
            }
        });
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(LINEAR_INTERPOLATOR);
        valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.swiperefreshlayout.widget.CircularProgressDrawable.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                CircularProgressDrawable.this.b(1.0f, ring, true);
                ring.A();
                ring.l();
                CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
                if (!circularProgressDrawable.mFinishing) {
                    circularProgressDrawable.mRotationCount += 1.0f;
                    return;
                }
                circularProgressDrawable.mFinishing = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                ring.x(false);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                CircularProgressDrawable.this.mRotationCount = 0.0f;
            }
        });
        this.mAnimator = valueAnimatorOfFloat;
    }

    void b(float f, Ring ring, boolean z6) {
        float interpolation;
        float interpolation2;
        if (this.mFinishing) {
            a(f, ring);
            return;
        }
        if (f != 1.0f || z6) {
            float fJ = ring.j();
            if (f < 0.5f) {
                interpolation = ring.k();
                interpolation2 = (MATERIAL_INTERPOLATOR.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float fK = ring.k() + 0.79f;
                interpolation = fK - (((1.0f - MATERIAL_INTERPOLATOR.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                interpolation2 = fK;
            }
            float f6 = fJ + (RING_ROTATION * f);
            float f7 = (f + this.mRotationCount) * GROUP_FULL_ROTATION;
            ring.y(interpolation);
            ring.v(interpolation2);
            ring.w(f6);
            h(f7);
        }
    }

    public void d(boolean z6) {
        this.mRing.x(z6);
        invalidateSelf();
    }

    public void e(float f) {
        this.mRing.p(f);
        invalidateSelf();
    }

    public void f(@NonNull int... iArr) {
        this.mRing.u(iArr);
        this.mRing.t(0);
        invalidateSelf();
    }

    public void g(float f) {
        this.mRing.w(f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mRing.c();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mAnimator.isRunning();
    }

    public void j(float f, float f6) {
        this.mRing.y(f);
        this.mRing.v(f6);
        invalidateSelf();
    }

    public void k(float f) {
        this.mRing.z(f);
        invalidateSelf();
    }

    public void l(int i10) {
        if (i10 == 0) {
            i(CENTER_RADIUS_LARGE, 3.0f, 12.0f, 6.0f);
        } else {
            i(CENTER_RADIUS, STROKE_WIDTH, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    void n(float f, Ring ring) {
        if (f > 0.75f) {
            ring.r(c((f - 0.75f) / 0.25f, ring.h(), ring.e()));
        } else {
            ring.r(ring.h());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.mRing.n(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mRing.s(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.mAnimator.cancel();
        this.mRing.A();
        if (this.mRing.d() != this.mRing.g()) {
            this.mFinishing = true;
            this.mAnimator.setDuration(666L);
            this.mAnimator.start();
        } else {
            this.mRing.t(0);
            this.mRing.m();
            this.mAnimator.setDuration(1332L);
            this.mAnimator.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mAnimator.cancel();
        h(0.0f);
        this.mRing.x(false);
        this.mRing.t(0);
        this.mRing.m();
        invalidateSelf();
    }

    public CircularProgressDrawable(@NonNull Context context) {
        this.mResources = ((Context) Preconditions.i(context)).getResources();
        Ring ring = new Ring();
        this.mRing = ring;
        ring.u(COLORS);
        k(STROKE_WIDTH);
        m();
    }

    private void a(float f, Ring ring) {
        n(f, ring);
        float fFloor = (float) (Math.floor(ring.j() / 0.8f) + 1.0d);
        ring.y(ring.k() + (((ring.i() - 0.01f) - ring.k()) * f));
        ring.v(ring.i());
        ring.w(ring.j() + ((fFloor - ring.j()) * f));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.mRotation, bounds.exactCenterX(), bounds.exactCenterY());
        this.mRing.a(canvas, bounds);
        canvas.restore();
    }
}
