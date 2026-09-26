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
import com.narvii.amino.master.R;
import com.narvii.util.Callback;
import com.narvii.util.FontAwesomeDrawable;

/* JADX INFO: loaded from: classes8.dex */
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

    private void drawHint(Canvas canvas, float f, float f6) {
        if (f > 0.0f) {
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setShader(null);
            this.paint.setColor(Color.argb((int) (Color.alpha(COLOR_HINT_BG) * f), Color.red(COLOR_HINT_BG), Color.green(COLOR_HINT_BG), Color.blue(COLOR_HINT_BG)));
            canvas.drawOval(this.rectf, this.paint);
            if (f6 < 1.0f) {
                int iSave = canvas.save();
                canvas.saveLayerAlpha(this.rectf, (int) (f * 255.0f * (1.0f - f6)), 31);
                canvas.translate(this.textHint.getLeft(), this.textHint.getTop());
                this.textHint.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (f6 > 0.0f) {
                int width = getWidth();
                int height = getHeight();
                this.checkmark.setAlpha((int) (f * 255.0f * f6));
                this.checkmark.setBounds(width / 3, height / 3, (width * 2) / 3, (height * 2) / 3);
                this.checkmark.draw(canvas);
            }
            invalidate();
        }
    }

    public void fail() {
        this.state = 0;
        invalidate();
    }

    private void drawHalo(Canvas canvas, float f) {
        this.halo.setAlpha((int) (f * 255.0f * 1.0f));
        Drawable drawable = this.halo;
        Rect rect = this.padding;
        drawable.setBounds(-rect.left, -rect.top, getWidth() + this.padding.right, getHeight() + this.padding.bottom);
        this.halo.draw(canvas);
    }

    private void drawOval(Canvas canvas, int i10, float f) {
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setShader(null);
        this.paint.setColor(Color.argb((int) (f * 255.0f), Color.red(i10), Color.green(i10), Color.blue(i10)));
        canvas.drawPath(this.path, this.paint);
    }

    public void finish() {
        this.state = 20;
        this.time2 = AnimationUtils.currentAnimationTimeMillis();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i10 = this.state;
        if (i10 == 1 || i10 == 2) {
            float f = ((jCurrentAnimationTimeMillis - this.time) * 1.0f) / 1000.0f;
            if (this.pressProgress < 0.2f) {
                f *= 2.0f;
            }
            this.time = jCurrentAnimationTimeMillis;
            float fMax = Math.max(0.0f, Math.min(0.125f, f));
            float f6 = this.pressProgress;
            if (f6 > 0.5f) {
                fMax *= (1.25f - f6) * 1.3333334f;
            }
            float f7 = f6 + fMax;
            this.pressProgress = f7;
            drawSweep(canvas, f7, 0.0f);
            if (this.state == 2 && this.pressProgress >= 0.2f) {
                this.state = -2;
                invalidate();
                return;
            }
            if (this.pressProgress < 1.0f) {
                invalidate();
                return;
            }
            this.pressProgress = 0.0f;
            this.state = 10;
            this.time1 = jCurrentAnimationTimeMillis;
            invalidate();
            Callback<Boolean> callback = this.fireCallback;
            if (callback != null) {
                callback.call(Boolean.TRUE);
                return;
            }
            return;
        }
        if (i10 == -1 || i10 == -2) {
            float f10 = (jCurrentAnimationTimeMillis - this.time) * 1.0f;
            int i11 = i10 == -2 ? 1500 : 500;
            this.time = jCurrentAnimationTimeMillis;
            float fMax2 = this.pressProgress - Math.max(0.0f, Math.min(0.125f, f10 / i11));
            this.pressProgress = fMax2;
            drawSweep(canvas, fMax2, 0.0f);
            if (this.pressProgress > 0.0f) {
                invalidate();
                return;
            }
            this.pressProgress = 0.0f;
            this.state = 0;
            Callback<Boolean> callback2 = this.startCallback;
            if (callback2 != null) {
                callback2.call(Boolean.FALSE);
                return;
            }
            return;
        }
        if (i10 == 10) {
            long j6 = jCurrentAnimationTimeMillis - this.time1;
            drawHint(canvas, j6 > 500 ? 1.0f : (j6 * 1.0f) / 500.0f, 0.0f);
            float fPow = ((jCurrentAnimationTimeMillis - this.time) * 1.0f) / 600.0f;
            if (fPow < 1.0f) {
                fPow = (float) Math.pow(fPow, 1.6d);
            }
            drawSweep(canvas, 1.0f, fPow);
            if (j6 <= 250) {
                drawOval(canvas, -1, (j6 * 1.0f) / 250.0f);
            } else if (j6 < 500) {
                drawOval(canvas, -1, ((500 - j6) * 1.0f) / 250.0f);
            }
            invalidate();
            return;
        }
        if (i10 == 20) {
            long j10 = jCurrentAnimationTimeMillis - this.time2;
            if (j10 < 300) {
                drawHint(canvas, 1.0f, Math.min(1.0f, (j10 * 1.0f) / 300.0f));
            } else if (j10 < 800) {
                drawHint(canvas, Math.min(1.0f, ((800 - j10) * 1.0f) / 400.0f), 1.0f);
            }
            if (j10 < 400) {
                drawSweep(canvas, 1.0f, (((jCurrentAnimationTimeMillis - this.time) % 600) * 1.0f) / 600.0f);
                float f11 = (j10 * 1.0f) / 400.0f;
                drawHalo(canvas, Math.max(0.0f, (f11 * 2.0f) - 1.0f));
                drawOval(canvas, -1, f11);
                invalidate();
                return;
            }
            if (j10 >= 800) {
                this.state = 0;
                return;
            }
            float f12 = 1.0f - (((j10 - 400) * 1.0f) / 400.0f);
            drawHalo(canvas, Math.max(0.0f, (f12 * 2.0f) - 1.0f));
            drawOval(canvas, -1, f12);
            invalidate();
        }
    }

    public void press() {
        Callback<Boolean> callback;
        int i10 = this.state;
        if (i10 < 1) {
            boolean z6 = i10 == 0;
            this.state = 1;
            this.time = AnimationUtils.currentAnimationTimeMillis();
            this.pressProgress = 0.0f;
            invalidate();
            if (z6 && (callback = this.startCallback) != null) {
                callback.call(Boolean.TRUE);
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

    public CheckInCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.rectf = new RectF();
        this.padding = new Rect();
        this.path = new Path();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.checkin_circle_hint, (ViewGroup) null);
        this.textHint = viewInflate;
        viewInflate.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        Drawable drawable = getResources().getDrawable(R.drawable.checkin_circle_halo);
        this.halo = drawable;
        drawable.getPadding(this.padding);
        FontAwesomeDrawable fontAwesomeDrawable = new FontAwesomeDrawable(context, R.string.fa_check);
        this.checkmark = fontAwesomeDrawable;
        fontAwesomeDrawable.setColor(COLOR);
    }

    private void drawSweep(Canvas canvas, float f, float f6) {
        int width = getWidth();
        int height = getHeight();
        int i10 = width / 2;
        int i11 = height / 2;
        int paddingLeft = getPaddingLeft();
        int width2 = (getWidth() / 2) - paddingLeft;
        this.path.reset();
        if (f <= 0.0f) {
            return;
        }
        if (f < 1.0f) {
            this.path.setFillType(Path.FillType.EVEN_ODD);
            int i12 = width2 + i10;
            float f7 = i11;
            this.path.moveTo(i12, f7);
            this.path.lineTo(i12 + paddingLeft, f7);
            RectF rectF = this.rectf;
            rectF.left = 0.0f;
            rectF.top = 0.0f;
            rectF.right = width;
            rectF.bottom = height;
            float f10 = (-360.0f) * f;
            this.path.arcTo(rectF, 0.0f, f10, false);
            float f11 = paddingLeft;
            this.rectf.inset(f11, f11);
            this.path.arcTo(this.rectf, f10, f * 360.0f, false);
            this.path.close();
        } else {
            RectF rectF2 = this.rectf;
            rectF2.left = 0.0f;
            rectF2.top = 0.0f;
            rectF2.right = width;
            rectF2.bottom = height;
            this.path.addOval(rectF2, Path.Direction.CW);
            float f12 = paddingLeft;
            this.rectf.inset(f12, f12);
            this.path.addOval(this.rectf, Path.Direction.CCW);
        }
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setShader(this.gradient);
        this.paint.setColor(COLOR);
        canvas.save();
        canvas.rotate(((f + f6) * 360.0f) - 90.0f, i10, i11);
        canvas.drawPath(this.path, this.paint);
        canvas.restore();
    }

    private int mcolor(int i10, int i11, float f) {
        float f6 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i10) * f6) + (Color.alpha(i11) * f)), (int) ((Color.red(i10) * f6) + (Color.red(i11) * f)), (int) ((Color.green(i10) * f6) + (Color.green(i11) * f)), (int) ((Color.blue(i10) * f6) + (Color.blue(i11) * f)));
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        this.gradient = new SweepGradient(getWidth() / 2, getHeight() / 2, 16777215, COLOR);
        this.textHint.measure(View.MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.textHint.layout(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
    }
}
