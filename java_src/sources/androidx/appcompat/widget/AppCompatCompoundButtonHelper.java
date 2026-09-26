package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.CompoundButtonCompat;

/* JADX INFO: loaded from: classes9.dex */
class AppCompatCompoundButtonHelper {
    private ColorStateList mButtonTintList = null;
    private PorterDuff.Mode mButtonTintMode = null;
    private boolean mHasButtonTint = false;
    private boolean mHasButtonTintMode = false;
    private boolean mSkipNextApply;

    @NonNull
    private final CompoundButton mView;

    int b(int i10) {
        return i10;
    }

    ColorStateList c() {
        return this.mButtonTintList;
    }

    PorterDuff.Mode d() {
        return this.mButtonTintMode;
    }

    void a() {
        Drawable drawableA = CompoundButtonCompat.a(this.mView);
        if (drawableA != null) {
            if (this.mHasButtonTint || this.mHasButtonTintMode) {
                Drawable drawableMutate = DrawableCompat.r(drawableA).mutate();
                if (this.mHasButtonTint) {
                    DrawableCompat.o(drawableMutate, this.mButtonTintList);
                }
                if (this.mHasButtonTintMode) {
                    DrawableCompat.p(drawableMutate, this.mButtonTintMode);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.mView.getDrawableState());
                }
                this.mView.setButtonDrawable(drawableMutate);
            }
        }
    }

    void e(@Nullable AttributeSet attributeSet, int i10) {
        int i11;
        int iN;
        int iN2;
        Context context = this.mView.getContext();
        int[] iArr = R.styleable.CompoundButton;
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, iArr, i10, 0);
        CompoundButton compoundButton = this.mView;
        ViewCompat.s0(compoundButton, compoundButton.getContext(), iArr, attributeSet, tintTypedArrayV.r(), i10, 0);
        try {
            int i12 = R.styleable.CompoundButton_buttonCompat;
            if (!tintTypedArrayV.s(i12) || (iN2 = tintTypedArrayV.n(i12, 0)) == 0) {
                i11 = R.styleable.CompoundButton_android_button;
                if (tintTypedArrayV.s(i11) && (iN = tintTypedArrayV.n(i11, 0)) != 0) {
                    CompoundButton compoundButton2 = this.mView;
                    compoundButton2.setButtonDrawable(AppCompatResources.b(compoundButton2.getContext(), iN));
                }
            } else {
                try {
                    CompoundButton compoundButton3 = this.mView;
                    compoundButton3.setButtonDrawable(AppCompatResources.b(compoundButton3.getContext(), iN2));
                } catch (Resources.NotFoundException unused) {
                    i11 = R.styleable.CompoundButton_android_button;
                    if (tintTypedArrayV.s(i11)) {
                        CompoundButton compoundButton4 = this.mView;
                        compoundButton4.setButtonDrawable(AppCompatResources.b(compoundButton4.getContext(), iN));
                    }
                }
            }
            int i13 = R.styleable.CompoundButton_buttonTint;
            if (tintTypedArrayV.s(i13)) {
                CompoundButtonCompat.c(this.mView, tintTypedArrayV.c(i13));
            }
            int i14 = R.styleable.CompoundButton_buttonTintMode;
            if (tintTypedArrayV.s(i14)) {
                CompoundButtonCompat.d(this.mView, DrawableUtils.e(tintTypedArrayV.k(i14, -1), null));
            }
        } finally {
            tintTypedArrayV.w();
        }
    }

    void f() {
        if (this.mSkipNextApply) {
            this.mSkipNextApply = false;
        } else {
            this.mSkipNextApply = true;
            a();
        }
    }

    void g(ColorStateList colorStateList) {
        this.mButtonTintList = colorStateList;
        this.mHasButtonTint = true;
        a();
    }

    void h(@Nullable PorterDuff.Mode mode) {
        this.mButtonTintMode = mode;
        this.mHasButtonTintMode = true;
        a();
    }

    AppCompatCompoundButtonHelper(@NonNull CompoundButton compoundButton) {
        this.mView = compoundButton;
    }
}
