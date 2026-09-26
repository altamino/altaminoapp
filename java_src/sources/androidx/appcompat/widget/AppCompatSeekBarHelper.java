package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes4.dex */
class AppCompatSeekBarHelper extends AppCompatProgressBarHelper {
    private boolean mHasTickMarkTint;
    private boolean mHasTickMarkTintMode;
    private Drawable mTickMark;
    private ColorStateList mTickMarkTintList;
    private PorterDuff.Mode mTickMarkTintMode;
    private final SeekBar mView;

    private void f() {
        Drawable drawable = this.mTickMark;
        if (drawable != null) {
            if (this.mHasTickMarkTint || this.mHasTickMarkTintMode) {
                Drawable drawableR = DrawableCompat.r(drawable.mutate());
                this.mTickMark = drawableR;
                if (this.mHasTickMarkTint) {
                    DrawableCompat.o(drawableR, this.mTickMarkTintList);
                }
                if (this.mHasTickMarkTintMode) {
                    DrawableCompat.p(this.mTickMark, this.mTickMarkTintMode);
                }
                if (this.mTickMark.isStateful()) {
                    this.mTickMark.setState(this.mView.getDrawableState());
                }
            }
        }
    }

    void g(Canvas canvas) {
        if (this.mTickMark != null) {
            int max = this.mView.getMax();
            if (max > 1) {
                int intrinsicWidth = this.mTickMark.getIntrinsicWidth();
                int intrinsicHeight = this.mTickMark.getIntrinsicHeight();
                int i10 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i11 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.mTickMark.setBounds(-i10, -i11, i10, i11);
                float width = ((this.mView.getWidth() - this.mView.getPaddingLeft()) - this.mView.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.mView.getPaddingLeft(), this.mView.getHeight() / 2);
                for (int i12 = 0; i12 <= max; i12++) {
                    this.mTickMark.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    void h() {
        Drawable drawable = this.mTickMark;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.mView.getDrawableState())) {
            this.mView.invalidateDrawable(drawable);
        }
    }

    void i() {
        Drawable drawable = this.mTickMark;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void j(@Nullable Drawable drawable) {
        Drawable drawable2 = this.mTickMark;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.mTickMark = drawable;
        if (drawable != null) {
            drawable.setCallback(this.mView);
            DrawableCompat.m(drawable, ViewCompat.D(this.mView));
            if (drawable.isStateful()) {
                drawable.setState(this.mView.getDrawableState());
            }
            f();
        }
        this.mView.invalidate();
    }

    AppCompatSeekBarHelper(SeekBar seekBar) {
        super(seekBar);
        this.mTickMarkTintList = null;
        this.mTickMarkTintMode = null;
        this.mHasTickMarkTint = false;
        this.mHasTickMarkTintMode = false;
        this.mView = seekBar;
    }

    @Override // androidx.appcompat.widget.AppCompatProgressBarHelper
    void c(AttributeSet attributeSet, int i10) {
        super.c(attributeSet, i10);
        Context context = this.mView.getContext();
        int[] iArr = R.styleable.AppCompatSeekBar;
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, iArr, i10, 0);
        SeekBar seekBar = this.mView;
        ViewCompat.s0(seekBar, seekBar.getContext(), iArr, attributeSet, tintTypedArrayV.r(), i10, 0);
        Drawable drawableH = tintTypedArrayV.h(R.styleable.AppCompatSeekBar_android_thumb);
        if (drawableH != null) {
            this.mView.setThumb(drawableH);
        }
        j(tintTypedArrayV.g(R.styleable.AppCompatSeekBar_tickMark));
        int i11 = R.styleable.AppCompatSeekBar_tickMarkTintMode;
        if (tintTypedArrayV.s(i11)) {
            this.mTickMarkTintMode = DrawableUtils.e(tintTypedArrayV.k(i11, -1), this.mTickMarkTintMode);
            this.mHasTickMarkTintMode = true;
        }
        int i12 = R.styleable.AppCompatSeekBar_tickMarkTint;
        if (tintTypedArrayV.s(i12)) {
            this.mTickMarkTintList = tintTypedArrayV.c(i12);
            this.mHasTickMarkTint = true;
        }
        tintTypedArrayV.w();
        f();
    }
}
