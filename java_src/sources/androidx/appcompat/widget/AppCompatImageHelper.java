package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ImageViewCompat;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public class AppCompatImageHelper {
    private TintInfo mImageTint;
    private TintInfo mInternalImageTint;
    private int mLevel = 0;
    private TintInfo mTmpInfo;

    @NonNull
    private final ImageView mView;

    private boolean l() {
        return this.mInternalImageTint != null;
    }

    private boolean a(@NonNull Drawable drawable) {
        if (this.mTmpInfo == null) {
            this.mTmpInfo = new TintInfo();
        }
        TintInfo tintInfo = this.mTmpInfo;
        tintInfo.a();
        ColorStateList colorStateListA = ImageViewCompat.a(this.mView);
        if (colorStateListA != null) {
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = colorStateListA;
        }
        PorterDuff.Mode modeB = ImageViewCompat.b(this.mView);
        if (modeB != null) {
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = modeB;
        }
        if (!tintInfo.mHasTintList && !tintInfo.mHasTintMode) {
            return false;
        }
        AppCompatDrawableManager.i(drawable, tintInfo, this.mView.getDrawableState());
        return true;
    }

    void b() {
        if (this.mView.getDrawable() != null) {
            this.mView.getDrawable().setLevel(this.mLevel);
        }
    }

    void c() {
        Drawable drawable = this.mView.getDrawable();
        if (drawable != null) {
            DrawableUtils.b(drawable);
        }
        if (drawable != null) {
            if (l() && a(drawable)) {
                return;
            }
            TintInfo tintInfo = this.mImageTint;
            if (tintInfo != null) {
                AppCompatDrawableManager.i(drawable, tintInfo, this.mView.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.mInternalImageTint;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.i(drawable, tintInfo2, this.mView.getDrawableState());
            }
        }
    }

    ColorStateList d() {
        TintInfo tintInfo = this.mImageTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    PorterDuff.Mode e() {
        TintInfo tintInfo = this.mImageTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    boolean f() {
        return !(this.mView.getBackground() instanceof RippleDrawable);
    }

    public void g(AttributeSet attributeSet, int i10) {
        int iN;
        Context context = this.mView.getContext();
        int[] iArr = R.styleable.AppCompatImageView;
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, iArr, i10, 0);
        ImageView imageView = this.mView;
        ViewCompat.s0(imageView, imageView.getContext(), iArr, attributeSet, tintTypedArrayV.r(), i10, 0);
        try {
            Drawable drawable = this.mView.getDrawable();
            if (drawable == null && (iN = tintTypedArrayV.n(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = AppCompatResources.b(this.mView.getContext(), iN)) != null) {
                this.mView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.b(drawable);
            }
            int i11 = R.styleable.AppCompatImageView_tint;
            if (tintTypedArrayV.s(i11)) {
                ImageViewCompat.c(this.mView, tintTypedArrayV.c(i11));
            }
            int i12 = R.styleable.AppCompatImageView_tintMode;
            if (tintTypedArrayV.s(i12)) {
                ImageViewCompat.d(this.mView, DrawableUtils.e(tintTypedArrayV.k(i12, -1), null));
            }
        } finally {
            tintTypedArrayV.w();
        }
    }

    public void i(int i10) {
        if (i10 != 0) {
            Drawable drawableB = AppCompatResources.b(this.mView.getContext(), i10);
            if (drawableB != null) {
                DrawableUtils.b(drawableB);
            }
            this.mView.setImageDrawable(drawableB);
        } else {
            this.mView.setImageDrawable(null);
        }
        c();
    }

    void j(ColorStateList colorStateList) {
        if (this.mImageTint == null) {
            this.mImageTint = new TintInfo();
        }
        TintInfo tintInfo = this.mImageTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        c();
    }

    void k(PorterDuff.Mode mode) {
        if (this.mImageTint == null) {
            this.mImageTint = new TintInfo();
        }
        TintInfo tintInfo = this.mImageTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        c();
    }

    public AppCompatImageHelper(@NonNull ImageView imageView) {
        this.mView = imageView;
    }

    void h(@NonNull Drawable drawable) {
        this.mLevel = drawable.getLevel();
    }
}
