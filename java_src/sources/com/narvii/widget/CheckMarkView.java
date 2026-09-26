package com.narvii.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
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

    private void init(AttributeSet attributeSet) {
        Point[] pointArr = new Point[3];
        this.marKPoints = pointArr;
        pointArr[0] = new Point();
        this.marKPoints[1] = new Point();
        this.marKPoints[2] = new Point();
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setColor(DEFAULT_COLOR);
        this.centerPoint = new Point();
        this.markPath = new Path();
        this.duration = 200;
    }

    public CheckMarkView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void drawCheckMark(Canvas canvas) {
        if (this.isChecked) {
            this.markPath.reset();
            float f = this.drawedDistance;
            float f6 = this.leftDistance;
            if (f < f6) {
                float f7 = this.allDistance * this.runedPercent;
                this.drawedDistance = f7;
                Point[] pointArr = this.marKPoints;
                Point point = pointArr[0];
                int i10 = point.x;
                Point point2 = pointArr[1];
                float f10 = i10 + (((point2.x - i10) * f7) / f6);
                int i11 = point.y;
                float f11 = i11 + (((point2.y - i11) * f7) / f6);
                this.markPath.moveTo(i10, i11);
                this.markPath.lineTo(f10, f11);
                canvas.drawPath(this.markPath, this.paint);
                this.isRunningAnimation = true;
                float f12 = this.drawedDistance;
                float f13 = this.leftDistance;
                if (f12 > f13) {
                    this.drawedDistance = f13;
                    return;
                }
                return;
            }
            Path path = this.markPath;
            Point point3 = this.marKPoints[0];
            path.moveTo(point3.x, point3.y);
            Path path2 = this.markPath;
            Point point4 = this.marKPoints[1];
            path2.lineTo(point4.x, point4.y);
            canvas.drawPath(this.markPath, this.paint);
            float f14 = this.drawedDistance;
            float f15 = this.leftDistance;
            float f16 = this.rightDistance;
            if (f14 >= f15 + f16) {
                this.markPath.reset();
                Path path3 = this.markPath;
                Point point5 = this.marKPoints[1];
                path3.moveTo(point5.x, point5.y);
                Path path4 = this.markPath;
                Point point6 = this.marKPoints[2];
                path4.lineTo(point6.x, point6.y);
                canvas.drawPath(this.markPath, this.paint);
                this.isRunningAnimation = false;
                return;
            }
            Point[] pointArr2 = this.marKPoints;
            Point point7 = pointArr2[1];
            int i12 = point7.x;
            Point point8 = pointArr2[2];
            float f17 = i12 + (((point8.x - i12) * (f14 - f15)) / f16);
            int i13 = point7.y;
            float f18 = i13 - (((i13 - point8.y) * (f14 - f15)) / f16);
            this.markPath.reset();
            Path path5 = this.markPath;
            Point point9 = this.marKPoints[1];
            path5.moveTo(point9.x, point9.y);
            this.markPath.lineTo(f17, f18);
            canvas.drawPath(this.markPath, this.paint);
            this.drawedDistance = this.allDistance * this.runedPercent;
            this.isRunningAnimation = true;
        }
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

    public void setColor(int i10) {
        this.paint.setColor(i10);
    }

    public void showChecked(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        if (this.isRunningAnimation) {
            return;
        }
        this.isChecked = true;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.duration);
        this.animator.setInterpolator(new LinearInterpolator());
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.CheckMarkView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CheckMarkView.this.runedPercent = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ViewCompat.k0(CheckMarkView.this);
            }
        });
        if (animatorUpdateListener != null) {
            this.animator.addUpdateListener(animatorUpdateListener);
        }
        this.animator.start();
    }

    public CheckMarkView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init(attributeSet);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawCheckMark(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        this.width = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.height = measuredHeight;
        Point point = this.centerPoint;
        point.x = this.width / 2;
        point.y = measuredHeight / 2;
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
        float fSqrt = (float) Math.sqrt(dPow2 + Math.pow(pointArr4[2].y - pointArr4[1].y, 2.0d));
        this.rightDistance = fSqrt;
        this.allDistance = this.leftDistance + fSqrt;
        this.paint.setStrokeWidth(this.width * RATIO_HEIGHT_WIDTH * 0.25f);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }
}
