package com.narvii.headlines;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;

/* loaded from: classes2.dex */
public class RefreshDrawable extends Drawable implements Animatable {
    private static final int DEFAULT_DURATION = 500;
    private ValueAnimator animator;
    private int bgDrawableId;
    private Shader bgShader;
    private Rect bounds = new Rect();
    private Context context;
    private float curProgress;
    private int duration;
    private Bitmap indicatorBitmap;
    private int indicatorDrawableId;
    private Shader indicatorShader;
    private Paint paint;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    public RefreshDrawable(Context context, int i, int i2, int i3) {
        this.context = context;
        this.bgDrawableId = i;
        this.indicatorDrawableId = i2;
        this.duration = i3;
        if (i3 == 0) {
            this.duration = 500;
        }
        init();
    }

    private void init() {
        this.paint = new Paint();
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setFlags(1);
        if (this.bgDrawableId != 0) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(this.context.getResources(), this.bgDrawableId);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.bgShader = new BitmapShader(bitmapDecodeResource, tileMode, tileMode);
        }
        if (this.indicatorDrawableId != 0) {
            this.indicatorBitmap = BitmapFactory.decodeResource(this.context.getResources(), this.indicatorDrawableId);
            Bitmap bitmap = this.indicatorBitmap;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            this.indicatorShader = new BitmapShader(bitmap, tileMode2, tileMode2);
        }
        setupAnimator();
    }

    private void setupAnimator() {
        this.animator = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator.setRepeatCount(-1);
        this.animator.setDuration(this.duration);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.headlines.RefreshDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RefreshDrawable.this.curProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RefreshDrawable.this.invalidateSelf();
            }
        });
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.animator.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.animator.cancel();
        this.curProgress = 0.0f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.animator.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.bgShader != null) {
            canvas.save();
            this.paint.setShader(this.bgShader);
            canvas.drawRect(getBounds(), this.paint);
            canvas.restore();
        }
        if (this.indicatorShader != null) {
            canvas.save();
            this.paint.setShader(this.indicatorShader);
            int width = this.indicatorBitmap.getWidth();
            int height = this.indicatorBitmap.getHeight();
            canvas.translate(getBounds().centerX() - (width / 2), getBounds().centerY() - (height / 2));
            canvas.rotate(this.curProgress * 360.0f, getBounds().exactCenterX(), getBounds().exactCenterY());
            canvas.drawRect(getBounds(), this.paint);
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public void setBackProgress(float f, float f2) {
        if (this.animator.isRunning()) {
            this.animator.cancel();
        }
        this.animator = ValueAnimator.ofFloat(f, f2);
        this.curProgress = f;
        this.animator.setRepeatCount(0);
        this.animator.setDuration(this.duration);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.headlines.RefreshDrawable.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RefreshDrawable.this.curProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RefreshDrawable.this.invalidateSelf();
            }
        });
        start();
    }
}
