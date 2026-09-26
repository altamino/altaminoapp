package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class AppCompatTextHelper {
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int TEXT_FONT_WEIGHT_UNSPECIFIED = -1;
    private boolean mAsyncFontPending;

    @NonNull
    private final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    private TintInfo mDrawableBottomTint;
    private TintInfo mDrawableEndTint;
    private TintInfo mDrawableLeftTint;
    private TintInfo mDrawableRightTint;
    private TintInfo mDrawableStartTint;
    private TintInfo mDrawableTint;
    private TintInfo mDrawableTopTint;
    private Typeface mFontTypeface;

    @NonNull
    private final TextView mView;
    private int mStyle = 0;
    private int mFontWeight = -1;

    private void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 != null || drawable6 != null) {
            Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
            TextView textView = this.mView;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative2 = this.mView.getCompoundDrawablesRelative();
        Drawable drawable7 = compoundDrawablesRelative2[0];
        if (drawable7 != null || compoundDrawablesRelative2[2] != null) {
            TextView textView2 = this.mView;
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            Drawable drawable8 = compoundDrawablesRelative2[2];
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
            return;
        }
        Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
        TextView textView3 = this.mView;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    private void z() {
        TintInfo tintInfo = this.mDrawableTint;
        this.mDrawableLeftTint = tintInfo;
        this.mDrawableTopTint = tintInfo;
        this.mDrawableRightTint = tintInfo;
        this.mDrawableBottomTint = tintInfo;
        this.mDrawableStartTint = tintInfo;
        this.mDrawableEndTint = tintInfo;
    }

    private void B(int i10, float f) {
        this.mAutoSizeTextHelper.u(i10, f);
    }

    private void C(Context context, TintTypedArray tintTypedArray) {
        String strO;
        this.mStyle = tintTypedArray.k(R.styleable.TextAppearance_android_textStyle, this.mStyle);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            int iK = tintTypedArray.k(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.mFontWeight = iK;
            if (iK != -1) {
                this.mStyle &= 2;
            }
        }
        int i11 = R.styleable.TextAppearance_android_fontFamily;
        if (!tintTypedArray.s(i11) && !tintTypedArray.s(R.styleable.TextAppearance_fontFamily)) {
            int i12 = R.styleable.TextAppearance_android_typeface;
            if (tintTypedArray.s(i12)) {
                this.mAsyncFontPending = false;
                int iK2 = tintTypedArray.k(i12, 1);
                if (iK2 == 1) {
                    this.mFontTypeface = Typeface.SANS_SERIF;
                    return;
                } else if (iK2 == 2) {
                    this.mFontTypeface = Typeface.SERIF;
                    return;
                } else {
                    if (iK2 != 3) {
                        return;
                    }
                    this.mFontTypeface = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.mFontTypeface = null;
        int i13 = R.styleable.TextAppearance_fontFamily;
        if (tintTypedArray.s(i13)) {
            i11 = i13;
        }
        final int i14 = this.mFontWeight;
        final int i15 = this.mStyle;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.mView);
            try {
                Typeface typefaceJ = tintTypedArray.j(i11, this.mStyle, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    /* JADX INFO: renamed from: h */
                    public void f(int i16) {
                    }

                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    /* JADX INFO: renamed from: i */
                    public void g(@NonNull Typeface typeface) {
                        int i16;
                        if (Build.VERSION.SDK_INT >= 28 && (i16 = i14) != -1) {
                            typeface = Typeface.create(typeface, i16, (i15 & 2) != 0);
                        }
                        AppCompatTextHelper.this.n(weakReference, typeface);
                    }
                });
                if (typefaceJ != null) {
                    if (i10 < 28 || this.mFontWeight == -1) {
                        this.mFontTypeface = typefaceJ;
                    } else {
                        this.mFontTypeface = Typeface.create(Typeface.create(typefaceJ, 0), this.mFontWeight, (this.mStyle & 2) != 0);
                    }
                }
                this.mAsyncFontPending = this.mFontTypeface == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.mFontTypeface != null || (strO = tintTypedArray.o(i11)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.mFontWeight == -1) {
            this.mFontTypeface = Typeface.create(strO, this.mStyle);
        } else {
            this.mFontTypeface = Typeface.create(Typeface.create(strO, 0), this.mFontWeight, (this.mStyle & 2) != 0);
        }
    }

    private void a(Drawable drawable, TintInfo tintInfo) {
        if (drawable == null || tintInfo == null) {
            return;
        }
        AppCompatDrawableManager.i(drawable, tintInfo, this.mView.getDrawableState());
    }

    @RestrictTo
    void A(int i10, float f) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE || l()) {
            return;
        }
        B(i10, f);
    }

    void b() {
        if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
            a(compoundDrawables[0], this.mDrawableLeftTint);
            a(compoundDrawables[1], this.mDrawableTopTint);
            a(compoundDrawables[2], this.mDrawableRightTint);
            a(compoundDrawables[3], this.mDrawableBottomTint);
        }
        if (this.mDrawableStartTint == null && this.mDrawableEndTint == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.mDrawableStartTint);
        a(compoundDrawablesRelative[2], this.mDrawableEndTint);
    }

    @RestrictTo
    void c() {
        this.mAutoSizeTextHelper.a();
    }

    int e() {
        return this.mAutoSizeTextHelper.g();
    }

    int f() {
        return this.mAutoSizeTextHelper.h();
    }

    int g() {
        return this.mAutoSizeTextHelper.i();
    }

    int[] h() {
        return this.mAutoSizeTextHelper.j();
    }

    int i() {
        return this.mAutoSizeTextHelper.k();
    }

    @Nullable
    ColorStateList j() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    @Nullable
    PorterDuff.Mode k() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    @RestrictTo
    boolean l() {
        return this.mAutoSizeTextHelper.o();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:44:0x0105  */
    @SuppressLint({"NewApi"})
    void m(@Nullable AttributeSet attributeSet, int i10) {
        boolean zA;
        boolean z6;
        String strO;
        String strO2;
        boolean z10;
        Context context = this.mView.getContext();
        AppCompatDrawableManager appCompatDrawableManagerB = AppCompatDrawableManager.b();
        int[] iArr = R.styleable.AppCompatTextHelper;
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, iArr, i10, 0);
        TextView textView = this.mView;
        ViewCompat.s0(textView, textView.getContext(), iArr, attributeSet, tintTypedArrayV.r(), i10, 0);
        int iN = tintTypedArrayV.n(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        int i11 = R.styleable.AppCompatTextHelper_android_drawableLeft;
        if (tintTypedArrayV.s(i11)) {
            this.mDrawableLeftTint = d(context, appCompatDrawableManagerB, tintTypedArrayV.n(i11, 0));
        }
        int i12 = R.styleable.AppCompatTextHelper_android_drawableTop;
        if (tintTypedArrayV.s(i12)) {
            this.mDrawableTopTint = d(context, appCompatDrawableManagerB, tintTypedArrayV.n(i12, 0));
        }
        int i13 = R.styleable.AppCompatTextHelper_android_drawableRight;
        if (tintTypedArrayV.s(i13)) {
            this.mDrawableRightTint = d(context, appCompatDrawableManagerB, tintTypedArrayV.n(i13, 0));
        }
        int i14 = R.styleable.AppCompatTextHelper_android_drawableBottom;
        if (tintTypedArrayV.s(i14)) {
            this.mDrawableBottomTint = d(context, appCompatDrawableManagerB, tintTypedArrayV.n(i14, 0));
        }
        int i15 = Build.VERSION.SDK_INT;
        int i16 = R.styleable.AppCompatTextHelper_android_drawableStart;
        if (tintTypedArrayV.s(i16)) {
            this.mDrawableStartTint = d(context, appCompatDrawableManagerB, tintTypedArrayV.n(i16, 0));
        }
        int i17 = R.styleable.AppCompatTextHelper_android_drawableEnd;
        if (tintTypedArrayV.s(i17)) {
            this.mDrawableEndTint = d(context, appCompatDrawableManagerB, tintTypedArrayV.n(i17, 0));
        }
        tintTypedArrayV.w();
        boolean z11 = this.mView.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (iN != -1) {
            TintTypedArray tintTypedArrayT = TintTypedArray.t(context, iN, R.styleable.TextAppearance);
            if (z11) {
                zA = false;
                z6 = false;
            } else {
                int i18 = R.styleable.TextAppearance_textAllCaps;
                if (tintTypedArrayT.s(i18)) {
                    zA = tintTypedArrayT.a(i18, false);
                    z6 = true;
                } else {
                    zA = false;
                    z6 = false;
                }
            }
            C(context, tintTypedArrayT);
            int i19 = R.styleable.TextAppearance_textLocale;
            strO2 = tintTypedArrayT.s(i19) ? tintTypedArrayT.o(i19) : null;
            if (i15 >= 26) {
                int i20 = R.styleable.TextAppearance_fontVariationSettings;
                if (tintTypedArrayT.s(i20)) {
                    strO = tintTypedArrayT.o(i20);
                } else {
                    strO = null;
                }
            } else {
                strO = null;
            }
            tintTypedArrayT.w();
        } else {
            zA = false;
            z6 = false;
            strO = null;
            strO2 = null;
        }
        TintTypedArray tintTypedArrayV2 = TintTypedArray.v(context, attributeSet, R.styleable.TextAppearance, i10, 0);
        if (z11) {
            z10 = z6;
        } else {
            int i21 = R.styleable.TextAppearance_textAllCaps;
            if (tintTypedArrayV2.s(i21)) {
                zA = tintTypedArrayV2.a(i21, false);
                z10 = true;
            } else {
                z10 = z6;
            }
        }
        int i22 = R.styleable.TextAppearance_textLocale;
        if (tintTypedArrayV2.s(i22)) {
            strO2 = tintTypedArrayV2.o(i22);
        }
        if (i15 >= 26) {
            int i23 = R.styleable.TextAppearance_fontVariationSettings;
            if (tintTypedArrayV2.s(i23)) {
                strO = tintTypedArrayV2.o(i23);
            }
        }
        if (i15 >= 28) {
            int i24 = R.styleable.TextAppearance_android_textSize;
            if (tintTypedArrayV2.s(i24) && tintTypedArrayV2.f(i24, -1) == 0) {
                this.mView.setTextSize(0, 0.0f);
            }
        }
        C(context, tintTypedArrayV2);
        tintTypedArrayV2.w();
        if (!z11 && z10) {
            s(zA);
        }
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            if (this.mFontWeight == -1) {
                this.mView.setTypeface(typeface, this.mStyle);
            } else {
                this.mView.setTypeface(typeface);
            }
        }
        if (strO != null) {
            this.mView.setFontVariationSettings(strO);
        }
        if (strO2 != null) {
            if (i15 >= 24) {
                this.mView.setTextLocales(LocaleList.forLanguageTags(strO2));
            } else {
                this.mView.setTextLocale(Locale.forLanguageTag(strO2.substring(0, strO2.indexOf(44))));
            }
        }
        this.mAutoSizeTextHelper.p(attributeSet, i10);
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE && this.mAutoSizeTextHelper.k() != 0) {
            int[] iArrJ = this.mAutoSizeTextHelper.j();
            if (iArrJ.length > 0) {
                if (this.mView.getAutoSizeStepGranularity() != -1.0f) {
                    this.mView.setAutoSizeTextTypeUniformWithConfiguration(this.mAutoSizeTextHelper.h(), this.mAutoSizeTextHelper.g(), this.mAutoSizeTextHelper.i(), 0);
                } else {
                    this.mView.setAutoSizeTextTypeUniformWithPresetSizes(iArrJ, 0);
                }
            }
        }
        TintTypedArray tintTypedArrayU = TintTypedArray.u(context, attributeSet, R.styleable.AppCompatTextView);
        int iN2 = tintTypedArrayU.n(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        Drawable drawableC = iN2 != -1 ? appCompatDrawableManagerB.c(context, iN2) : null;
        int iN3 = tintTypedArrayU.n(R.styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawableC2 = iN3 != -1 ? appCompatDrawableManagerB.c(context, iN3) : null;
        int iN4 = tintTypedArrayU.n(R.styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawableC3 = iN4 != -1 ? appCompatDrawableManagerB.c(context, iN4) : null;
        int iN5 = tintTypedArrayU.n(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawableC4 = iN5 != -1 ? appCompatDrawableManagerB.c(context, iN5) : null;
        int iN6 = tintTypedArrayU.n(R.styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawableC5 = iN6 != -1 ? appCompatDrawableManagerB.c(context, iN6) : null;
        int iN7 = tintTypedArrayU.n(R.styleable.AppCompatTextView_drawableEndCompat, -1);
        y(drawableC, drawableC2, drawableC3, drawableC4, drawableC5, iN7 != -1 ? appCompatDrawableManagerB.c(context, iN7) : null);
        int i25 = R.styleable.AppCompatTextView_drawableTint;
        if (tintTypedArrayU.s(i25)) {
            TextViewCompat.j(this.mView, tintTypedArrayU.c(i25));
        }
        int i26 = R.styleable.AppCompatTextView_drawableTintMode;
        if (tintTypedArrayU.s(i26)) {
            TextViewCompat.k(this.mView, DrawableUtils.e(tintTypedArrayU.k(i26, -1), null));
        }
        int iF = tintTypedArrayU.f(R.styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
        int iF2 = tintTypedArrayU.f(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int iF3 = tintTypedArrayU.f(R.styleable.AppCompatTextView_lineHeight, -1);
        tintTypedArrayU.w();
        if (iF != -1) {
            TextViewCompat.m(this.mView, iF);
        }
        if (iF2 != -1) {
            TextViewCompat.n(this.mView, iF2);
        }
        if (iF3 != -1) {
            TextViewCompat.o(this.mView, iF3);
        }
    }

    void n(WeakReference<TextView> weakReference, final Typeface typeface) {
        if (this.mAsyncFontPending) {
            this.mFontTypeface = typeface;
            final TextView textView = weakReference.get();
            if (textView != null) {
                if (!ViewCompat.W(textView)) {
                    textView.setTypeface(typeface, this.mStyle);
                } else {
                    final int i10 = this.mStyle;
                    textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                        @Override // java.lang.Runnable
                        public void run() {
                            textView.setTypeface(typeface, i10);
                        }
                    });
                }
            }
        }
    }

    @RestrictTo
    void o(boolean z6, int i10, int i11, int i12, int i13) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            return;
        }
        c();
    }

    void q(Context context, int i10) {
        String strO;
        TintTypedArray tintTypedArrayT = TintTypedArray.t(context, i10, R.styleable.TextAppearance);
        int i11 = R.styleable.TextAppearance_textAllCaps;
        if (tintTypedArrayT.s(i11)) {
            s(tintTypedArrayT.a(i11, false));
        }
        int i12 = Build.VERSION.SDK_INT;
        int i13 = R.styleable.TextAppearance_android_textSize;
        if (tintTypedArrayT.s(i13) && tintTypedArrayT.f(i13, -1) == 0) {
            this.mView.setTextSize(0, 0.0f);
        }
        C(context, tintTypedArrayT);
        if (i12 >= 26) {
            int i14 = R.styleable.TextAppearance_fontVariationSettings;
            if (tintTypedArrayT.s(i14) && (strO = tintTypedArrayT.o(i14)) != null) {
                this.mView.setFontVariationSettings(strO);
            }
        }
        tintTypedArrayT.w();
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            this.mView.setTypeface(typeface, this.mStyle);
        }
    }

    void r(@NonNull TextView textView, @Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        EditorInfoCompat.f(editorInfo, textView.getText());
    }

    void s(boolean z6) {
        this.mView.setAllCaps(z6);
    }

    void t(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.q(i10, i11, i12, i13);
    }

    void u(@NonNull int[] iArr, int i10) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.r(iArr, i10);
    }

    void v(int i10) {
        this.mAutoSizeTextHelper.s(i10);
    }

    void w(@Nullable ColorStateList colorStateList) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = colorStateList != null;
        z();
    }

    void x(@Nullable PorterDuff.Mode mode) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = mode != null;
        z();
    }

    AppCompatTextHelper(@NonNull TextView textView) {
        this.mView = textView;
        this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(textView);
    }

    private static TintInfo d(Context context, AppCompatDrawableManager appCompatDrawableManager, int i10) {
        ColorStateList colorStateListF = appCompatDrawableManager.f(context, i10);
        if (colorStateListF != null) {
            TintInfo tintInfo = new TintInfo();
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = colorStateListF;
            return tintInfo;
        }
        return null;
    }

    void p() {
        b();
    }
}
