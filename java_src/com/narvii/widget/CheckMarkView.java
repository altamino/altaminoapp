package com.narvii.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;

/* loaded from: classes3.dex */
public class CheckMarkView extends View {
    private static final int DEFAULT_COLOR = -16660372;
    private static final int DEFAULT_DURATION = 200;
    private static final float RATIO_HEIGHT_WIDTH = 0.8333333f;
    private float allDistance;
    ValueAnimator animator;
    private Point centerPoint;
    private int checkColor;
    private float drawedDistance;
    private int duration;
    private int height;
    private boolean isChecked;
    private boolean isRunningAnimation;
    private float leftDistance;
    private Point[] marKPoints;
    private Path markPath;
    private Paint paint;
    private float rightDistance;
    private float runedPercent;
    private int width;

    public CheckMarkView(Context context) {
        this(context, null);
    }

    public CheckMarkView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CheckMarkView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        this.marKPoints = new Point[3];
        this.marKPoints[0] = new Point();
        this.marKPoints[1] = new Point();
        this.marKPoints[2] = new Point();
        this.paint = new Paint(1);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setColor(DEFAULT_COLOR);
        this.centerPoint = new Point();
        this.markPath = new Path();
        this.duration = 200;
    }

    public void setColor(int i) {
        this.paint.setColor(i);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.width = getMeasuredWidth();
        this.height = getMeasuredHeight();
        Point point = this.centerPoint;
        point.x = this.width / 2;
        point.y = this.height / 2;
        this.marKPoints[0].x = Math.round(getMeasuredWidth() * 0.1f);
        this.marKPoints[0].y = Math.round(getMeasuredHeight() * 0.586f);
        this.marKPoints[1].x = Math.round(getMeasuredWidth() * 0.333f);
        this.marKPoints[1].y = Math.round(getMeasuredHeight() * 0.9f);
        this.marKPoints[2].x = Math.round(getMeasuredWidth() * 0.9f);
        this.marKPoints[2].y = Math.round(getMeasuredHeight() * 0.276f);
        Point[] pointArr = this.marKPoints;
        double dPow = Math.pow(pointArr[1].x - pointArr[0].x, 2.0d);
        Point[] pointArr2 = this.marKPoints;
        this.leftDistance = (float) Math.sqrt(dPow + Math.pow(pointArr2[1].y - pointArr2[0].y, 2.0d));
        Point[] pointArr3 = this.marKPoints;
        double dPow2 = Math.pow(pointArr3[2].x - pointArr3[1].x, 2.0d);
        Point[] pointArr4 = this.marKPoints;
        this.rightDistance = (float) Math.sqrt(dPow2 + Math.pow(pointArr4[2].y - pointArr4[1].y, 2.0d));
        this.allDistance = this.leftDistance + this.rightDistance;
        this.paint.setStrokeWidth(this.width * RATIO_HEIGHT_WIDTH * 0.25f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawCheckMark(canvas);
    }

    private void drawCheckMark(Canvas canvas) {
        if (this.isChecked) {
            this.markPath.reset();
            float f = this.drawedDistance;
            float f2 = this.leftDistance;
            if (f < f2) {
                this.drawedDistance = this.allDistance * this.runedPercent;
                Point[] pointArr = this.marKPoints;
                float f3 = pointArr[0].x;
                float f4 = pointArr[1].x - pointArr[0].x;
                float f5 = this.drawedDistance;
                this.markPath.moveTo(pointArr[0].x, pointArr[0].y);
                this.markPath.lineTo(f3 + ((f4 * f5) / f2), pointArr[0].y + (((pointArr[1].y - pointArr[0].y) * f5) / f2));
                canvas.drawPath(this.markPath, this.paint);
                this.isRunningAnimation = true;
                float f6 = this.drawedDistance;
                float f7 = this.leftDistance;
                if (f6 > f7) {
                    this.drawedDistance = f7;
                    return;
                }
                return;
            }
            Path path = this.markPath;
            Point[] pointArr2 = this.marKPoints;
            path.moveTo(pointArr2[0].x, pointArr2[0].y);
            Path path2 = this.markPath;
            Point[] pointArr3 = this.marKPoints;
            path2.lineTo(pointArr3[1].x, pointArr3[1].y);
            canvas.drawPath(this.markPath, this.paint);
            float f8 = this.drawedDistance;
            float f9 = this.leftDistance;
            float f10 = this.rightDistance;
            if (f8 < f9 + f10) {
                Point[] pointArr4 = this.marKPoints;
                float f11 = pointArr4[1].x + (((pointArr4[2].x - pointArr4[1].x) * (f8 - f9)) / f10);
                float f12 = pointArr4[1].y - (((pointArr4[1].y - pointArr4[2].y) * (f8 - f9)) / f10);
                this.markPath.reset();
                Path path3 = this.markPath;
                Point[] pointArr5 = this.marKPoints;
                path3.moveTo(pointArr5[1].x, pointArr5[1].y);
                this.markPath.lineTo(f11, f12);
                canvas.drawPath(this.markPath, this.paint);
                this.drawedDistance = this.allDistance * this.runedPercent;
                this.isRunningAnimation = true;
                return;
            }
            this.markPath.reset();
            Path path4 = this.markPath;
            Point[] pointArr6 = this.marKPoints;
            path4.moveTo(pointArr6[1].x, pointArr6[1].y);
            Path path5 = this.markPath;
            Point[] pointArr7 = this.marKPoints;
            path5.lineTo(pointArr7[2].x, pointArr7[2].y);
            canvas.drawPath(this.markPath, this.paint);
            this.isRunningAnimation = false;
        }
    }

    public void showChecked(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        if (this.isRunningAnimation) {
            return;
        }
        this.isChecked = true;
        this.animator = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator.setDuration(this.duration);
        this.animator.setInterpolator(new LinearInterpolator());
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.CheckMarkView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CheckMarkView.this.runedPercent = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ViewCompat.postInvalidateOnAnimation(CheckMarkView.this);
            }
        });
        if (animatorUpdateListener != null) {
            this.animator.addUpdateListener(animatorUpdateListener);
        }
        this.animator.start();
    }

    public void reset(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.animator.cancel();
        }
        this.isRunningAnimation = false;
        this.drawedDistance = 0.0f;
        this.runedPercent = 0.0f;
        showChecked(animatorUpdateListener);
    }

    public void cancelAnimation() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.animator.cancel();
        }
        this.isRunningAnimation = false;
        this.drawedDistance = 0.0f;
        this.runedPercent = 0.0f;
    }
}
