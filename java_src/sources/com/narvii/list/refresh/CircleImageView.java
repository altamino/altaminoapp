package com.narvii.list.refresh;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
class CircleImageView extends ImageView {
    private static final int FILL_SHADOW_COLOR = 1023410176;
    private static final int KEY_SHADOW_COLOR = 503316480;
    private static final int SHADOW_ELEVATION = 4;
    private static final float SHADOW_RADIUS = 3.5f;
    private static final float X_OFFSET = 0.0f;
    private static final float Y_OFFSET = 1.75f;
    private Animation.AnimationListener mListener;
    private int mShadowRadius;

    private class OvalShadow extends OvalShape {
        private int mCircleDiameter;
        private RadialGradient mRadialGradient;
        private Paint mShadowPaint = new Paint();

        public OvalShadow(int i10, int i11) {
            CircleImageView.this.mShadowRadius = i10;
            this.mCircleDiameter = i11;
            int i12 = this.mCircleDiameter;
            RadialGradient radialGradient = new RadialGradient(i12 / 2, i12 / 2, CircleImageView.this.mShadowRadius, new int[]{CircleImageView.FILL_SHADOW_COLOR, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.mRadialGradient = radialGradient;
            this.mShadowPaint.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            float width = CircleImageView.this.getWidth() / 2;
            float height = CircleImageView.this.getHeight() / 2;
            canvas.drawCircle(width, height, (this.mCircleDiameter / 2) + CircleImageView.this.mShadowRadius, this.mShadowPaint);
            canvas.drawCircle(width, height, this.mCircleDiameter / 2, paint);
        }
    }

    private boolean elevationSupported() {
        return true;
    }

    public void setAnimationListener(Animation.AnimationListener animationListener) {
        this.mListener = animationListener;
    }

    public CircleImageView(Context context, int i10, float f) {
        ShapeDrawable shapeDrawable;
        super(context);
        float f6 = getContext().getResources().getDisplayMetrics().density;
        int i11 = (int) (f * f6 * 2.0f);
        int i12 = (int) (Y_OFFSET * f6);
        int i13 = (int) (0.0f * f6);
        this.mShadowRadius = (int) (SHADOW_RADIUS * f6);
        if (elevationSupported()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.C0(this, f6 * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new OvalShadow(this.mShadowRadius, i11));
            ViewCompat.I0(this, 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.mShadowRadius, i13, i12, KEY_SHADOW_COLOR);
            int i14 = this.mShadowRadius;
            setPadding(i14, i14, i14, i14);
        }
        shapeDrawable.getPaint().setColor(i10);
        setBackgroundDrawable(shapeDrawable);
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.mListener;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.mListener;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!elevationSupported()) {
            setMeasuredDimension(getMeasuredWidth() + (this.mShadowRadius * 2), getMeasuredHeight() + (this.mShadowRadius * 2));
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i10);
        }
    }

    public void setBackgroundColorRes(int i10) {
        setBackgroundColor(getContext().getResources().getColor(i10));
    }
}
