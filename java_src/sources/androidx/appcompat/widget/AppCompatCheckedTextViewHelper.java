package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.CheckedTextViewCompat;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
class AppCompatCheckedTextViewHelper {
    private ColorStateList mCheckMarkTintList = null;
    private PorterDuff.Mode mCheckMarkTintMode = null;
    private boolean mHasCheckMarkTint = false;
    private boolean mHasCheckMarkTintMode = false;
    private boolean mSkipNextApply;

    @NonNull
    private final CheckedTextView mView;

    ColorStateList b() {
        return this.mCheckMarkTintList;
    }

    PorterDuff.Mode c() {
        return this.mCheckMarkTintMode;
    }

    void a() {
        Drawable drawableA = CheckedTextViewCompat.a(this.mView);
        if (drawableA != null) {
            if (this.mHasCheckMarkTint || this.mHasCheckMarkTintMode) {
                Drawable drawableMutate = DrawableCompat.r(drawableA).mutate();
                if (this.mHasCheckMarkTint) {
                    DrawableCompat.o(drawableMutate, this.mCheckMarkTintList);
                }
                if (this.mHasCheckMarkTintMode) {
                    DrawableCompat.p(drawableMutate, this.mCheckMarkTintMode);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.mView.getDrawableState());
                }
                this.mView.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    void d(@Nullable AttributeSet attributeSet, int i10) {
        int i11;
        int iN;
        int iN2;
        Context context = this.mView.getContext();
        int[] iArr = R.styleable.CheckedTextView;
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, iArr, i10, 0);
        CheckedTextView checkedTextView = this.mView;
        ViewCompat.s0(checkedTextView, checkedTextView.getContext(), iArr, attributeSet, tintTypedArrayV.r(), i10, 0);
        try {
            int i12 = R.styleable.CheckedTextView_checkMarkCompat;
            if (!tintTypedArrayV.s(i12) || (iN2 = tintTypedArrayV.n(i12, 0)) == 0) {
                i11 = R.styleable.CheckedTextView_android_checkMark;
                if (tintTypedArrayV.s(i11) && (iN = tintTypedArrayV.n(i11, 0)) != 0) {
                    CheckedTextView checkedTextView2 = this.mView;
                    checkedTextView2.setCheckMarkDrawable(AppCompatResources.b(checkedTextView2.getContext(), iN));
                }
            } else {
                try {
                    CheckedTextView checkedTextView3 = this.mView;
                    checkedTextView3.setCheckMarkDrawable(AppCompatResources.b(checkedTextView3.getContext(), iN2));
                } catch (Resources.NotFoundException unused) {
                    i11 = R.styleable.CheckedTextView_android_checkMark;
                    if (tintTypedArrayV.s(i11)) {
                        CheckedTextView checkedTextView4 = this.mView;
                        checkedTextView4.setCheckMarkDrawable(AppCompatResources.b(checkedTextView4.getContext(), iN));
                    }
                }
            }
            int i13 = R.styleable.CheckedTextView_checkMarkTint;
            if (tintTypedArrayV.s(i13)) {
                CheckedTextViewCompat.b(this.mView, tintTypedArrayV.c(i13));
            }
            int i14 = R.styleable.CheckedTextView_checkMarkTintMode;
            if (tintTypedArrayV.s(i14)) {
                CheckedTextViewCompat.c(this.mView, DrawableUtils.e(tintTypedArrayV.k(i14, -1), null));
            }
        } finally {
            tintTypedArrayV.w();
        }
    }

    void e() {
        if (this.mSkipNextApply) {
            this.mSkipNextApply = false;
        } else {
            this.mSkipNextApply = true;
            a();
        }
    }

    void f(ColorStateList colorStateList) {
        this.mCheckMarkTintList = colorStateList;
        this.mHasCheckMarkTint = true;
        a();
    }

    void g(@Nullable PorterDuff.Mode mode) {
        this.mCheckMarkTintMode = mode;
        this.mHasCheckMarkTintMode = true;
        a();
    }

    AppCompatCheckedTextViewHelper(@NonNull CheckedTextView checkedTextView) {
        this.mView = checkedTextView;
    }
}
