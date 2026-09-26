package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class h {
    private static final int CAPTION_OPACITY_FADE_ANIMATION_DURATION = 167;
    private static final int CAPTION_STATE_ERROR = 1;
    private static final int CAPTION_STATE_HELPER_TEXT = 2;
    private static final int CAPTION_STATE_NONE = 0;
    private static final int CAPTION_TRANSLATE_Y_ANIMATION_DURATION = 217;
    static final int COUNTER_INDEX = 2;
    static final int ERROR_INDEX = 0;
    static final int HELPER_INDEX = 1;

    @Nullable
    private Animator captionAnimator;
    private FrameLayout captionArea;
    private int captionDisplayed;
    private int captionToShow;
    private final float captionTranslationYPx;
    private final Context context;
    private boolean errorEnabled;

    @Nullable
    private CharSequence errorText;
    private int errorTextAppearance;

    @Nullable
    private TextView errorView;

    @Nullable
    private CharSequence errorViewContentDescription;

    @Nullable
    private ColorStateList errorViewTextColor;
    private CharSequence helperText;
    private boolean helperTextEnabled;
    private int helperTextTextAppearance;

    @Nullable
    private TextView helperTextView;

    @Nullable
    private ColorStateList helperTextViewTextColor;
    private LinearLayout indicatorArea;
    private int indicatorsAdded;

    @NonNull
    private final TextInputLayout textInputView;
    private Typeface typeface;

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ int val$captionToHide;
        final /* synthetic */ int val$captionToShow;
        final /* synthetic */ TextView val$captionViewToHide;
        final /* synthetic */ TextView val$captionViewToShow;

        a(int i10, TextView textView, int i11, TextView textView2) {
            this.val$captionToShow = i10;
            this.val$captionViewToHide = textView;
            this.val$captionToHide = i11;
            this.val$captionViewToShow = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            h.this.captionDisplayed = this.val$captionToShow;
            h.this.captionAnimator = null;
            TextView textView = this.val$captionViewToHide;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.val$captionToHide == 1 && h.this.errorView != null) {
                    h.this.errorView.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.val$captionViewToShow;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.val$captionViewToShow.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.val$captionViewToShow;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    class b extends View.AccessibilityDelegate {
        b() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            EditText editText = h.this.textInputView.getEditText();
            if (editText != null) {
                accessibilityNodeInfo.setLabeledBy(editText);
            }
        }
    }

    private void Q(int i10, int i11, boolean z6) {
        if (i10 == i11) {
            return;
        }
        if (z6) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.captionAnimator = animatorSet;
            ArrayList arrayList = new ArrayList();
            i(arrayList, this.helperTextEnabled, this.helperTextView, 2, i10, i11);
            i(arrayList, this.errorEnabled, this.errorView, 1, i10, i11);
            e3.b.a(animatorSet, arrayList);
            animatorSet.addListener(new a(i11, m(i10), i10, m(i11)));
            animatorSet.start();
        } else {
            C(i10, i11);
        }
        this.textInputView.r0();
        this.textInputView.w0(z6);
        this.textInputView.E0();
    }

    @Nullable
    private TextView m(int i10) {
        if (i10 == 1) {
            return this.errorView;
        }
        if (i10 != 2) {
            return null;
        }
        return this.helperTextView;
    }

    private boolean x(int i10) {
        return (i10 != 1 || this.errorView == null || TextUtils.isEmpty(this.errorText)) ? false : true;
    }

    boolean A() {
        return this.helperTextEnabled;
    }

    @Nullable
    CharSequence n() {
        return this.errorViewContentDescription;
    }

    @Nullable
    CharSequence o() {
        return this.errorText;
    }

    CharSequence r() {
        return this.helperText;
    }

    @Nullable
    View s() {
        return this.helperTextView;
    }

    void v() {
        this.errorText = null;
        h();
        if (this.captionDisplayed == 1) {
            if (!this.helperTextEnabled || TextUtils.isEmpty(this.helperText)) {
                this.captionToShow = 0;
            } else {
                this.captionToShow = 2;
            }
        }
        Q(this.captionDisplayed, this.captionToShow, N(this.errorView, ""));
    }

    boolean y(int i10) {
        return i10 == 0 || i10 == 1;
    }

    boolean z() {
        return this.errorEnabled;
    }

    private void C(int i10, int i11) {
        TextView textViewM;
        TextView textViewM2;
        if (i10 == i11) {
            return;
        }
        if (i11 != 0 && (textViewM2 = m(i11)) != null) {
            textViewM2.setVisibility(0);
            textViewM2.setAlpha(1.0f);
        }
        if (i10 != 0 && (textViewM = m(i10)) != null) {
            textViewM.setVisibility(4);
            if (i10 == 1) {
                textViewM.setText((CharSequence) null);
            }
        }
        this.captionDisplayed = i11;
    }

    private void K(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void M(@NonNull ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean N(@Nullable TextView textView, @NonNull CharSequence charSequence) {
        return ViewCompat.X(this.textInputView) && this.textInputView.isEnabled() && !(this.captionToShow == this.captionDisplayed && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private boolean g() {
        return (this.indicatorArea == null || this.textInputView.getEditText() == null) ? false : true;
    }

    private void i(@NonNull List<Animator> list, boolean z6, @Nullable TextView textView, int i10, int i11, int i12) {
        if (textView == null || !z6) {
            return;
        }
        if (i10 == i12 || i10 == i11) {
            list.add(j(textView, i12 == i10));
            if (i12 == i10) {
                list.add(k(textView));
            }
        }
    }

    private ObjectAnimator j(TextView textView, boolean z6) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z6 ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(167L);
        objectAnimatorOfFloat.setInterpolator(e3.a.LINEAR_INTERPOLATOR);
        return objectAnimatorOfFloat;
    }

    private ObjectAnimator k(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.captionTranslationYPx, 0.0f);
        objectAnimatorOfFloat.setDuration(217L);
        objectAnimatorOfFloat.setInterpolator(e3.a.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        return objectAnimatorOfFloat;
    }

    private int u(boolean z6, @DimenRes int i10, int i11) {
        return z6 ? this.context.getResources().getDimensionPixelSize(i10) : i11;
    }

    void B(TextView textView, int i10) {
        FrameLayout frameLayout;
        if (this.indicatorArea == null) {
            return;
        }
        if (!y(i10) || (frameLayout = this.captionArea) == null) {
            this.indicatorArea.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i11 = this.indicatorsAdded - 1;
        this.indicatorsAdded = i11;
        M(this.indicatorArea, i11);
    }

    void D(@Nullable CharSequence charSequence) {
        this.errorViewContentDescription = charSequence;
        TextView textView = this.errorView;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    void E(boolean z6) {
        if (this.errorEnabled == z6) {
            return;
        }
        h();
        if (z6) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.context);
            this.errorView = appCompatTextView;
            appCompatTextView.setId(d3.f.textinput_error);
            this.errorView.setTextAlignment(5);
            Typeface typeface = this.typeface;
            if (typeface != null) {
                this.errorView.setTypeface(typeface);
            }
            F(this.errorTextAppearance);
            G(this.errorViewTextColor);
            D(this.errorViewContentDescription);
            this.errorView.setVisibility(4);
            ViewCompat.w0(this.errorView, 1);
            e(this.errorView, 0);
        } else {
            v();
            B(this.errorView, 0);
            this.errorView = null;
            this.textInputView.r0();
            this.textInputView.E0();
        }
        this.errorEnabled = z6;
    }

    void F(@StyleRes int i10) {
        this.errorTextAppearance = i10;
        TextView textView = this.errorView;
        if (textView != null) {
            this.textInputView.d0(textView, i10);
        }
    }

    void G(@Nullable ColorStateList colorStateList) {
        this.errorViewTextColor = colorStateList;
        TextView textView = this.errorView;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void H(@StyleRes int i10) {
        this.helperTextTextAppearance = i10;
        TextView textView = this.helperTextView;
        if (textView != null) {
            TextViewCompat.q(textView, i10);
        }
    }

    void I(boolean z6) {
        if (this.helperTextEnabled == z6) {
            return;
        }
        h();
        if (z6) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.context);
            this.helperTextView = appCompatTextView;
            appCompatTextView.setId(d3.f.textinput_helper_text);
            this.helperTextView.setTextAlignment(5);
            Typeface typeface = this.typeface;
            if (typeface != null) {
                this.helperTextView.setTypeface(typeface);
            }
            this.helperTextView.setVisibility(4);
            ViewCompat.w0(this.helperTextView, 1);
            H(this.helperTextTextAppearance);
            J(this.helperTextViewTextColor);
            e(this.helperTextView, 1);
            this.helperTextView.setAccessibilityDelegate(new b());
        } else {
            w();
            B(this.helperTextView, 1);
            this.helperTextView = null;
            this.textInputView.r0();
            this.textInputView.E0();
        }
        this.helperTextEnabled = z6;
    }

    void J(@Nullable ColorStateList colorStateList) {
        this.helperTextViewTextColor = colorStateList;
        TextView textView = this.helperTextView;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void L(Typeface typeface) {
        if (typeface != this.typeface) {
            this.typeface = typeface;
            K(this.errorView, typeface);
            K(this.helperTextView, typeface);
        }
    }

    void e(TextView textView, int i10) {
        if (this.indicatorArea == null && this.captionArea == null) {
            LinearLayout linearLayout = new LinearLayout(this.context);
            this.indicatorArea = linearLayout;
            linearLayout.setOrientation(0);
            this.textInputView.addView(this.indicatorArea, -1, -2);
            this.captionArea = new FrameLayout(this.context);
            this.indicatorArea.addView(this.captionArea, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.textInputView.getEditText() != null) {
                f();
            }
        }
        if (y(i10)) {
            this.captionArea.setVisibility(0);
            this.captionArea.addView(textView);
        } else {
            this.indicatorArea.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.indicatorArea.setVisibility(0);
        this.indicatorsAdded++;
    }

    void h() {
        Animator animator = this.captionAnimator;
        if (animator != null) {
            animator.cancel();
        }
    }

    boolean l() {
        return x(this.captionToShow);
    }

    @ColorInt
    int p() {
        TextView textView = this.errorView;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    ColorStateList q() {
        TextView textView = this.errorView;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    @ColorInt
    int t() {
        TextView textView = this.helperTextView;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    public h(@NonNull TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.context = context;
        this.textInputView = textInputLayout;
        this.captionTranslationYPx = context.getResources().getDimensionPixelSize(d3.d.design_textinput_caption_translate_y);
    }

    void O(CharSequence charSequence) {
        h();
        this.errorText = charSequence;
        this.errorView.setText(charSequence);
        int i10 = this.captionDisplayed;
        if (i10 != 1) {
            this.captionToShow = 1;
        }
        Q(i10, this.captionToShow, N(this.errorView, charSequence));
    }

    void P(CharSequence charSequence) {
        h();
        this.helperText = charSequence;
        this.helperTextView.setText(charSequence);
        int i10 = this.captionDisplayed;
        if (i10 != 2) {
            this.captionToShow = 2;
        }
        Q(i10, this.captionToShow, N(this.helperTextView, charSequence));
    }

    void f() {
        if (g()) {
            EditText editText = this.textInputView.getEditText();
            boolean zI = com.google.android.material.resources.c.i(this.context);
            LinearLayout linearLayout = this.indicatorArea;
            int i10 = d3.d.material_helper_text_font_1_3_padding_horizontal;
            ViewCompat.M0(linearLayout, u(zI, i10, ViewCompat.I(editText)), u(zI, d3.d.material_helper_text_font_1_3_padding_top, this.context.getResources().getDimensionPixelSize(d3.d.material_helper_text_default_padding_top)), u(zI, i10, ViewCompat.H(editText)), 0);
        }
    }

    void w() {
        h();
        int i10 = this.captionDisplayed;
        if (i10 == 2) {
            this.captionToShow = 0;
        }
        Q(i10, this.captionToShow, N(this.helperTextView, ""));
    }
}
