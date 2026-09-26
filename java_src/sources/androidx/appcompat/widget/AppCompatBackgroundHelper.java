package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes9.dex */
class AppCompatBackgroundHelper {
    private TintInfo mBackgroundTint;
    private TintInfo mInternalBackgroundTint;
    private TintInfo mTmpInfo;

    @NonNull
    private final View mView;
    private int mBackgroundResId = -1;
    private final AppCompatDrawableManager mDrawableManager = AppCompatDrawableManager.b();

    private boolean k() {
        return this.mInternalBackgroundTint != null;
    }

    void f(Drawable drawable) {
        this.mBackgroundResId = -1;
        h(null);
        b();
    }

    private boolean a(@NonNull Drawable drawable) {
        if (this.mTmpInfo == null) {
            this.mTmpInfo = new TintInfo();
        }
        TintInfo tintInfo = this.mTmpInfo;
        tintInfo.a();
        ColorStateList colorStateListU = ViewCompat.u(this.mView);
        if (colorStateListU != null) {
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = colorStateListU;
        }
        PorterDuff.Mode modeV = ViewCompat.v(this.mView);
        if (modeV != null) {
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = modeV;
        }
        if (!tintInfo.mHasTintList && !tintInfo.mHasTintMode) {
            return false;
        }
        AppCompatDrawableManager.i(drawable, tintInfo, this.mView.getDrawableState());
        return true;
    }

    void b() {
        Drawable background = this.mView.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            TintInfo tintInfo = this.mBackgroundTint;
            if (tintInfo != null) {
                AppCompatDrawableManager.i(background, tintInfo, this.mView.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.mInternalBackgroundTint;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.i(background, tintInfo2, this.mView.getDrawableState());
            }
        }
    }

    ColorStateList c() {
        TintInfo tintInfo = this.mBackgroundTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    PorterDuff.Mode d() {
        TintInfo tintInfo = this.mBackgroundTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    void e(@Nullable AttributeSet attributeSet, int i10) {
        Context context = this.mView.getContext();
        int[] iArr = R.styleable.ViewBackgroundHelper;
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, iArr, i10, 0);
        View view = this.mView;
        ViewCompat.s0(view, view.getContext(), iArr, attributeSet, tintTypedArrayV.r(), i10, 0);
        try {
            int i11 = R.styleable.ViewBackgroundHelper_android_background;
            if (tintTypedArrayV.s(i11)) {
                this.mBackgroundResId = tintTypedArrayV.n(i11, -1);
                ColorStateList colorStateListF = this.mDrawableManager.f(this.mView.getContext(), this.mBackgroundResId);
                if (colorStateListF != null) {
                    h(colorStateListF);
                }
            }
            int i12 = R.styleable.ViewBackgroundHelper_backgroundTint;
            if (tintTypedArrayV.s(i12)) {
                ViewCompat.z0(this.mView, tintTypedArrayV.c(i12));
            }
            int i13 = R.styleable.ViewBackgroundHelper_backgroundTintMode;
            if (tintTypedArrayV.s(i13)) {
                ViewCompat.A0(this.mView, DrawableUtils.e(tintTypedArrayV.k(i13, -1), null));
            }
        } finally {
            tintTypedArrayV.w();
        }
    }

    void g(int i10) {
        this.mBackgroundResId = i10;
        AppCompatDrawableManager appCompatDrawableManager = this.mDrawableManager;
        h(appCompatDrawableManager != null ? appCompatDrawableManager.f(this.mView.getContext(), i10) : null);
        b();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.mInternalBackgroundTint == null) {
                this.mInternalBackgroundTint = new TintInfo();
            }
            TintInfo tintInfo = this.mInternalBackgroundTint;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
        } else {
            this.mInternalBackgroundTint = null;
        }
        b();
    }

    void i(ColorStateList colorStateList) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new TintInfo();
        }
        TintInfo tintInfo = this.mBackgroundTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        b();
    }

    void j(PorterDuff.Mode mode) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new TintInfo();
        }
        TintInfo tintInfo = this.mBackgroundTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        b();
    }

    AppCompatBackgroundHelper(@NonNull View view) {
        this.mView = view;
    }
}
