package com.narvii.master;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.narvii.amino.mastes.R;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.Random;

/* loaded from: classes3.dex */
public class SplashView extends ViewGroup {
    Callback<Boolean> callback;
    int cornerRadius0;
    View frame;
    NVImageView imageView;
    Interpolator inter1;
    Interpolator inter2;
    final Runnable iv;
    Rect orig;
    Random rnd;
    long startMs;
    final Rect target;

    private int mv(int i, int i2, float f) {
        return i + ((int) ((i2 - i) * f));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public SplashView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.target = new Rect();
        this.iv = new Runnable() { // from class: com.narvii.master.SplashView.1
            @Override // java.lang.Runnable
            public void run() {
                SplashView.this.requestLayout();
            }
        };
        this.inter1 = new DecelerateInterpolator(1.5f);
        this.inter2 = new LinearInterpolator();
        this.rnd = new Random(System.currentTimeMillis());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.frame = findViewById(R.id.frame);
        this.imageView = (NVImageView) findViewById(R.id.image);
        if (this.frame == null) {
            this.frame = this.imageView;
        }
        this.cornerRadius0 = this.imageView.cornerRadius;
    }

    public void splash(Rect rect, Drawable drawable, Callback<Boolean> callback) {
        this.orig = rect;
        this.imageView.setImageDrawable(drawable);
        this.startMs = AnimationUtils.currentAnimationTimeMillis();
        this.callback = callback;
        requestLayout();
    }

    public void cancel() {
        this.orig = null;
        Callback<Boolean> callback = this.callback;
        if (callback != null) {
            callback.call(false);
        }
        this.callback = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.target.left = getPaddingLeft();
        this.target.right = getWidth() - getPaddingRight();
        this.target.top = getPaddingTop();
        this.target.bottom = getHeight() - getPaddingBottom();
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() - this.startMs;
        if (jCurrentAnimationTimeMillis < 450) {
            float interpolation = this.inter1.getInterpolation(Math.max(0.0f, (jCurrentAnimationTimeMillis * 1.0f) / 450.0f));
            int iWidth = (int) ((this.target.width() * 0.0f) / 2.0f);
            int iHeight = (int) ((this.target.height() * 0.0f) / 2.0f);
            this.frame.layout(mv(this.orig.left, this.target.left - iWidth, interpolation), mv(this.orig.top, this.target.top - iHeight, interpolation), mv(this.orig.right, this.target.right + iWidth, interpolation), mv(this.orig.bottom, this.target.bottom + iHeight, interpolation));
            this.imageView.cornerRadius = (int) (this.cornerRadius0 * (1 - jCurrentAnimationTimeMillis));
            Utils.post(this.iv);
        } else if (jCurrentAnimationTimeMillis < 1600) {
            float interpolation2 = this.inter2.getInterpolation(Math.max(0.0f, ((jCurrentAnimationTimeMillis - 450) * 1.0f) / 488.0f));
            float fWidth = this.target.width();
            int i5 = (int) ((fWidth * 0.0f) / 2.0f);
            float fHeight = this.target.height();
            int i6 = (int) ((0.0f * fHeight) / 2.0f);
            int i7 = (int) ((fWidth * 0.00999999f) / 2.0f);
            int i8 = (int) ((fHeight * 0.00999999f) / 2.0f);
            int i9 = this.target.left;
            int iMv = mv(i9 - i5, i9 - i7, interpolation2);
            int i10 = this.target.right;
            int iMv2 = mv(i5 + i10, i10 + i7, interpolation2);
            int i11 = this.target.top;
            int iMv3 = mv(i11 - i6, i11 - i8, interpolation2);
            int i12 = this.target.bottom;
            this.frame.layout(iMv, iMv3, iMv2, mv(i6 + i12, i12 + i8, interpolation2));
            this.imageView.cornerRadius = 0;
            Utils.post(this.iv);
        }
        if (jCurrentAnimationTimeMillis >= 938) {
            Callback<Boolean> callback = this.callback;
            if (callback != null) {
                callback.call(true);
            }
            this.callback = null;
        }
    }
}
