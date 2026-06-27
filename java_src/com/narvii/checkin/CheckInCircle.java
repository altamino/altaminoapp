package com.narvii.checkin;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import com.narvii.amino.mastes.R;
import com.narvii.util.Callback;
import com.narvii.util.FontAwesomeDrawable;

/* loaded from: classes2.dex */
public class CheckInCircle extends View {
    private static final int COLOR = -14352896;
    private static final int COLOR0 = 16777215;
    private static final int COLOR_HALO1 = -1;
    private static final int COLOR_HALO2 = -1;
    private static final int COLOR_HINT_BG = -1610612736;
    private FontAwesomeDrawable checkmark;
    public Callback<Boolean> fireCallback;
    private SweepGradient gradient;
    private Drawable halo;
    private Rect padding;
    private Paint paint;
    private Path path;
    private float pressProgress;
    private RectF rectf;
    public Callback<Boolean> startCallback;
    private int state;
    private View textHint;
    private long time;
    private long time1;
    private long time2;

    public CheckInCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.rectf = new RectF();
        this.padding = new Rect();
        this.path = new Path();
        this.textHint = LayoutInflater.from(context).inflate(R.layout.checkin_circle_hint, (ViewGroup) null);
        this.textHint.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.halo = getResources().getDrawable(R.drawable.checkin_circle_halo);
        this.halo.getPadding(this.padding);
        this.checkmark = new FontAwesomeDrawable(context, R.string.fa_check);
        this.checkmark.setColor(COLOR);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.gradient = new SweepGradient(getWidth() / 2, getHeight() / 2, 16777215, COLOR);
        this.textHint.measure(View.MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.textHint.layout(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
    }

    public void press() {
        Callback<Boolean> callback;
        int i = this.state;
        if (i < 1) {
            boolean z = i == 0;
            this.state = 1;
            this.time = AnimationUtils.currentAnimationTimeMillis();
            this.pressProgress = 0.0f;
            invalidate();
            if (z && (callback = this.startCallback) != null) {
                callback.call(true);
            }
        }
        if (this.state == 2) {
            this.state = 1;
            this.time = AnimationUtils.currentAnimationTimeMillis();
            invalidate();
        }
    }

    public boolean unpress() {
        if (this.state != 1) {
            return false;
        }
        if (this.pressProgress < 0.2f) {
            this.state = 2;
        } else {
            this.state = -1;
        }
        this.time = AnimationUtils.currentAnimationTimeMillis();
        this.time2 = 0L;
        invalidate();
        return true;
    }

    public void finish() {
        this.state = 20;
        this.time2 = AnimationUtils.currentAnimationTimeMillis();
        invalidate();
    }

    public void fail() {
        this.state = 0;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i = this.state;
        if (i == 1 || i == 2) {
            float f = ((jCurrentAnimationTimeMillis - this.time) * 1.0f) / 1000.0f;
            if (this.pressProgress < 0.2f) {
                f *= 2.0f;
            }
            this.time = jCurrentAnimationTimeMillis;
            float fMax = Math.max(0.0f, Math.min(0.125f, f));
            float f2 = this.pressProgress;
            if (f2 > 0.5f) {
                fMax *= (1.25f - f2) * 1.3333334f;
            }
            this.pressProgress += fMax;
            drawSweep(canvas, this.pressProgress, 0.0f);
            if (this.state == 2 && this.pressProgress >= 0.2f) {
                this.state = -2;
                invalidate();
                return;
            }
            if (this.pressProgress >= 1.0f) {
                this.pressProgress = 0.0f;
                this.state = 10;
                this.time1 = jCurrentAnimationTimeMillis;
                invalidate();
                Callback<Boolean> callback = this.fireCallback;
                if (callback != null) {
                    callback.call(true);
                    return;
                }
                return;
            }
            invalidate();
            return;
        }
        if (i == -1 || i == -2) {
            float f3 = (jCurrentAnimationTimeMillis - this.time) * 1.0f;
            int i2 = this.state == -2 ? 1500 : 500;
            this.time = jCurrentAnimationTimeMillis;
            this.pressProgress -= Math.max(0.0f, Math.min(0.125f, f3 / i2));
            drawSweep(canvas, this.pressProgress, 0.0f);
            if (this.pressProgress <= 0.0f) {
                this.pressProgress = 0.0f;
                this.state = 0;
                Callback<Boolean> callback2 = this.startCallback;
                if (callback2 != null) {
                    callback2.call(false);
                    return;
                }
                return;
            }
            invalidate();
            return;
        }
        if (i == 10) {
            long j = jCurrentAnimationTimeMillis - this.time1;
            drawHint(canvas, j > 500 ? 1.0f : (j * 1.0f) / 500.0f, 0.0f);
            float fPow = ((jCurrentAnimationTimeMillis - this.time) * 1.0f) / 600.0f;
            if (fPow < 1.0f) {
                fPow = (float) Math.pow(fPow, 1.6d);
            }
            drawSweep(canvas, 1.0f, fPow);
            if (j <= 250) {
                drawOval(canvas, -1, (j * 1.0f) / 250.0f);
            } else if (j < 500) {
                drawOval(canvas, -1, ((500 - j) * 1.0f) / 250.0f);
            }
            invalidate();
            return;
        }
        if (i == 20) {
            long j2 = jCurrentAnimationTimeMillis - this.time2;
            if (j2 < 300) {
                drawHint(canvas, 1.0f, Math.min(1.0f, (j2 * 1.0f) / 300.0f));
            } else if (j2 < 800) {
                drawHint(canvas, Math.min(1.0f, ((800 - j2) * 1.0f) / 400.0f), 1.0f);
            }
            if (j2 < 400) {
                drawSweep(canvas, 1.0f, (((jCurrentAnimationTimeMillis - this.time) % 600) * 1.0f) / 600.0f);
                float f4 = (j2 * 1.0f) / 400.0f;
                drawHalo(canvas, Math.max(0.0f, (2.0f * f4) - 1.0f));
                drawOval(canvas, -1, f4);
                invalidate();
                return;
            }
            if (j2 < 800) {
                float f5 = 1.0f - (((j2 - 400) * 1.0f) / 400.0f);
                drawHalo(canvas, Math.max(0.0f, (2.0f * f5) - 1.0f));
                drawOval(canvas, -1, f5);
                invalidate();
                return;
            }
            this.state = 0;
        }
    }

    private int mcolor(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    private void drawSweep(Canvas canvas, float f, float f2) {
        int width = getWidth();
        int height = getHeight();
        int i = width / 2;
        int i2 = height / 2;
        int paddingLeft = getPaddingLeft();
        int width2 = (getWidth() / 2) - paddingLeft;
        this.path.reset();
        if (f <= 0.0f) {
            return;
        }
        if (f < 1.0f) {
            this.path.setFillType(Path.FillType.EVEN_ODD);
            float f3 = i2;
            this.path.moveTo(width2 + i, f3);
            this.path.lineTo(r5 + paddingLeft, f3);
            RectF rectF = this.rectf;
            rectF.left = 0.0f;
            rectF.top = 0.0f;
            rectF.right = width;
            rectF.bottom = height;
            float f4 = (-360.0f) * f;
            this.path.arcTo(rectF, 0.0f, f4, false);
            float f5 = paddingLeft;
            this.rectf.inset(f5, f5);
            this.path.arcTo(this.rectf, f4, f * 360.0f, false);
            this.path.close();
        } else {
            RectF rectF2 = this.rectf;
            rectF2.left = 0.0f;
            rectF2.top = 0.0f;
            rectF2.right = width;
            rectF2.bottom = height;
            this.path.addOval(rectF2, Path.Direction.CW);
            float f6 = paddingLeft;
            this.rectf.inset(f6, f6);
            this.path.addOval(this.rectf, Path.Direction.CCW);
        }
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setShader(this.gradient);
        this.paint.setColor(COLOR);
        canvas.save();
        canvas.rotate(((f + f2) * 360.0f) - 90.0f, i, i2);
        canvas.drawPath(this.path, this.paint);
        canvas.restore();
    }

    private void drawOval(Canvas canvas, int i, float f) {
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setShader(null);
        this.paint.setColor(Color.argb((int) (f * 255.0f), Color.red(i), Color.green(i), Color.blue(i)));
        canvas.drawPath(this.path, this.paint);
    }

    private void drawHint(Canvas canvas, float f, float f2) {
        if (f > 0.0f) {
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setShader(null);
            this.paint.setColor(Color.argb((int) (Color.alpha(COLOR_HINT_BG) * f), Color.red(COLOR_HINT_BG), Color.green(COLOR_HINT_BG), Color.blue(COLOR_HINT_BG)));
            canvas.drawOval(this.rectf, this.paint);
            if (f2 < 1.0f) {
                int iSave = canvas.save();
                canvas.saveLayerAlpha(this.rectf, (int) (f * 255.0f * (1.0f - f2)), 31);
                canvas.translate(this.textHint.getLeft(), this.textHint.getTop());
                this.textHint.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (f2 > 0.0f) {
                int width = getWidth();
                int height = getHeight();
                this.checkmark.setAlpha((int) (f * 255.0f * f2));
                this.checkmark.setBounds(width / 3, height / 3, (width * 2) / 3, (height * 2) / 3);
                this.checkmark.draw(canvas);
            }
            invalidate();
        }
    }

    private void drawHalo(Canvas canvas, float f) {
        this.halo.setAlpha((int) (f * 255.0f * 1.0f));
        Drawable drawable = this.halo;
        Rect rect = this.padding;
        drawable.setBounds(-rect.left, -rect.top, getWidth() + this.padding.right, getHeight() + this.padding.bottom);
        this.halo.draw(canvas);
    }
}
