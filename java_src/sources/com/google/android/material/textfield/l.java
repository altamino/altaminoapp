package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.u;

/* JADX INFO: loaded from: classes11.dex */
@SuppressLint({"ViewConstructor"})
class l extends LinearLayout {
    private boolean hintExpanded;

    @Nullable
    private CharSequence prefixText;
    private final TextView prefixTextView;
    private View.OnLongClickListener startIconOnLongClickListener;
    private ColorStateList startIconTintList;
    private PorterDuff.Mode startIconTintMode;
    private final CheckableImageButton startIconView;
    private final TextInputLayout textInputLayout;

    @Nullable
    CharSequence a() {
        return this.prefixText;
    }

    @NonNull
    TextView c() {
        return this.prefixTextView;
    }

    private void f(TintTypedArray tintTypedArray) {
        this.prefixTextView.setVisibility(8);
        this.prefixTextView.setId(d3.f.textinput_prefix_text);
        this.prefixTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.w0(this.prefixTextView, 1);
        l(tintTypedArray.n(d3.l.TextInputLayout_prefixTextAppearance, 0));
        int i10 = d3.l.TextInputLayout_prefixTextColor;
        if (tintTypedArray.s(i10)) {
            m(tintTypedArray.c(i10));
        }
        k(tintTypedArray.p(d3.l.TextInputLayout_prefixText));
    }

    private void x() {
        int i10 = (this.prefixText == null || this.hintExpanded) ? 8 : 0;
        setVisibility((this.startIconView.getVisibility() == 0 || i10 == 0) ? 0 : 8);
        this.prefixTextView.setVisibility(i10);
        this.textInputLayout.q0();
    }

    @Nullable
    ColorStateList b() {
        return this.prefixTextView.getTextColors();
    }

    @Nullable
    CharSequence d() {
        return this.startIconView.getContentDescription();
    }

    @Nullable
    Drawable e() {
        return this.startIconView.getDrawable();
    }

    boolean h() {
        return this.startIconView.getVisibility() == 0;
    }

    void i(boolean z6) {
        this.hintExpanded = z6;
        x();
    }

    void j() {
        g.c(this.textInputLayout, this.startIconView, this.startIconTintList);
    }

    void l(@StyleRes int i10) {
        TextViewCompat.q(this.prefixTextView, i10);
    }

    void m(@NonNull ColorStateList colorStateList) {
        this.prefixTextView.setTextColor(colorStateList);
    }

    void n(boolean z6) {
        this.startIconView.setCheckable(z6);
    }

    void p(@Nullable Drawable drawable) {
        this.startIconView.setImageDrawable(drawable);
        if (drawable != null) {
            g.a(this.textInputLayout, this.startIconView, this.startIconTintList, this.startIconTintMode);
            u(true);
            j();
        } else {
            u(false);
            q(null);
            r(null);
            o(null);
        }
    }

    void q(@Nullable View.OnClickListener onClickListener) {
        g.e(this.startIconView, onClickListener, this.startIconOnLongClickListener);
    }

    void r(@Nullable View.OnLongClickListener onLongClickListener) {
        this.startIconOnLongClickListener = onLongClickListener;
        g.f(this.startIconView, onLongClickListener);
    }

    void s(@Nullable ColorStateList colorStateList) {
        if (this.startIconTintList != colorStateList) {
            this.startIconTintList = colorStateList;
            g.a(this.textInputLayout, this.startIconView, colorStateList, this.startIconTintMode);
        }
    }

    void t(@Nullable PorterDuff.Mode mode) {
        if (this.startIconTintMode != mode) {
            this.startIconTintMode = mode;
            g.a(this.textInputLayout, this.startIconView, this.startIconTintList, mode);
        }
    }

    void v(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.prefixTextView.getVisibility() != 0) {
            accessibilityNodeInfoCompat.N0(this.startIconView);
        } else {
            accessibilityNodeInfoCompat.s0(this.prefixTextView);
            accessibilityNodeInfoCompat.N0(this.prefixTextView);
        }
    }

    void w() {
        EditText editText = this.textInputLayout.editText;
        if (editText == null) {
            return;
        }
        ViewCompat.M0(this.prefixTextView, h() ? 0 : ViewCompat.I(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(d3.d.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    l(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.textInputLayout = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(d3.h.design_text_input_start_icon, (ViewGroup) this, false);
        this.startIconView = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.prefixTextView = appCompatTextView;
        g(tintTypedArray);
        f(tintTypedArray);
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    private void g(TintTypedArray tintTypedArray) {
        if (com.google.android.material.resources.c.i(getContext())) {
            MarginLayoutParamsCompat.c((ViewGroup.MarginLayoutParams) this.startIconView.getLayoutParams(), 0);
        }
        q(null);
        r(null);
        int i10 = d3.l.TextInputLayout_startIconTint;
        if (tintTypedArray.s(i10)) {
            this.startIconTintList = com.google.android.material.resources.c.b(getContext(), tintTypedArray, i10);
        }
        int i11 = d3.l.TextInputLayout_startIconTintMode;
        if (tintTypedArray.s(i11)) {
            this.startIconTintMode = u.h(tintTypedArray.k(i11, -1), null);
        }
        int i12 = d3.l.TextInputLayout_startIconDrawable;
        if (tintTypedArray.s(i12)) {
            p(tintTypedArray.g(i12));
            int i13 = d3.l.TextInputLayout_startIconContentDescription;
            if (tintTypedArray.s(i13)) {
                o(tintTypedArray.p(i13));
            }
            n(tintTypedArray.a(d3.l.TextInputLayout_startIconCheckable, true));
        }
    }

    void k(@Nullable CharSequence charSequence) {
        CharSequence charSequence2;
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        this.prefixText = charSequence2;
        this.prefixTextView.setText(charSequence);
        x();
    }

    void o(@Nullable CharSequence charSequence) {
        if (d() != charSequence) {
            this.startIconView.setContentDescription(charSequence);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        w();
    }

    void u(boolean z6) {
        int i10;
        if (h() != z6) {
            CheckableImageButton checkableImageButton = this.startIconView;
            if (z6) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            checkableImageButton.setVisibility(i10);
            w();
            x();
        }
    }
}
