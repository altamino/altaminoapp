package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes8.dex */
class a extends com.google.android.material.textfield.f {
    private static final int ANIMATION_FADE_DURATION = 100;
    private static final int ANIMATION_SCALE_DURATION = 150;
    private static final float ANIMATION_SCALE_FROM_VALUE = 0.8f;
    private final TextWatcher clearTextEndIconTextWatcher;
    private final TextInputLayout.f clearTextOnEditTextAttachedListener;
    private final TextInputLayout.g endIconChangedListener;
    private AnimatorSet iconInAnim;
    private ValueAnimator iconOutAnim;
    private final View.OnFocusChangeListener onFocusChangeListener;

    /* JADX INFO: renamed from: com.google.android.material.textfield.a$a, reason: collision with other inner class name */
    class C0210a implements TextWatcher {
        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        C0210a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            if (a.this.textInputLayout.getSuffixText() != null) {
                return;
            }
            a aVar = a.this;
            aVar.i(aVar.m());
        }
    }

    class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z6) {
            a aVar = a.this;
            aVar.i(aVar.m());
        }
    }

    class c implements TextInputLayout.f {
        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(a.this.m());
            editText.setOnFocusChangeListener(a.this.onFocusChangeListener);
            a aVar = a.this;
            aVar.endIconView.setOnFocusChangeListener(aVar.onFocusChangeListener);
            editText.removeTextChangedListener(a.this.clearTextEndIconTextWatcher);
            editText.addTextChangedListener(a.this.clearTextEndIconTextWatcher);
        }
    }

    class d implements TextInputLayout.g {

        /* JADX INFO: renamed from: com.google.android.material.textfield.a$d$a, reason: collision with other inner class name */
        class RunnableC0211a implements Runnable {
            final /* synthetic */ EditText val$editText;

            RunnableC0211a(EditText editText) {
                this.val$editText = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$editText.removeTextChangedListener(a.this.clearTextEndIconTextWatcher);
                a.this.i(true);
            }
        }

        d() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(@NonNull TextInputLayout textInputLayout, int i10) {
            EditText editText = textInputLayout.getEditText();
            if (editText != null && i10 == 2) {
                editText.post(new RunnableC0211a(editText));
                if (editText.getOnFocusChangeListener() == a.this.onFocusChangeListener) {
                    editText.setOnFocusChangeListener(null);
                }
                if (a.this.endIconView.getOnFocusChangeListener() == a.this.onFocusChangeListener) {
                    a.this.endIconView.setOnFocusChangeListener(null);
                }
            }
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Editable text = a.this.textInputLayout.getEditText().getText();
            if (text != null) {
                text.clear();
            }
            a.this.textInputLayout.U();
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.textInputLayout.setEndIconVisible(true);
        }
    }

    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.textInputLayout.setEndIconVisible(false);
        }
    }

    class h implements ValueAnimator.AnimatorUpdateListener {
        h() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            a.this.endIconView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    class i implements ValueAnimator.AnimatorUpdateListener {
        i() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            a.this.endIconView.setScaleX(fFloatValue);
            a.this.endIconView.setScaleY(fFloatValue);
        }
    }

    private ValueAnimator k() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(e3.a.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.addUpdateListener(new i());
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(boolean z6) {
        boolean z10 = this.textInputLayout.K() == z6;
        if (z6 && !this.iconInAnim.isRunning()) {
            this.iconOutAnim.cancel();
            this.iconInAnim.start();
            if (z10) {
                this.iconInAnim.end();
                return;
            }
            return;
        }
        if (z6) {
            return;
        }
        this.iconInAnim.cancel();
        this.iconOutAnim.start();
        if (z10) {
            this.iconOutAnim.end();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m() {
        EditText editText = this.textInputLayout.getEditText();
        return editText != null && (editText.hasFocus() || this.endIconView.hasFocus()) && editText.getText().length() > 0;
    }

    @Override // com.google.android.material.textfield.f
    void a() {
        TextInputLayout textInputLayout = this.textInputLayout;
        int i10 = this.customEndIcon;
        if (i10 == 0) {
            i10 = d3.e.mtrl_ic_cancel;
        }
        textInputLayout.setEndIconDrawable(i10);
        TextInputLayout textInputLayout2 = this.textInputLayout;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(d3.j.clear_text_end_icon_content_description));
        this.textInputLayout.setEndIconCheckable(false);
        this.textInputLayout.setEndIconOnClickListener(new e());
        this.textInputLayout.g(this.clearTextOnEditTextAttachedListener);
        this.textInputLayout.h(this.endIconChangedListener);
        l();
    }

    @Override // com.google.android.material.textfield.f
    void c(boolean z6) {
        if (this.textInputLayout.getSuffixText() == null) {
            return;
        }
        i(z6);
    }

    a(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        super(textInputLayout, i10);
        this.clearTextEndIconTextWatcher = new C0210a();
        this.onFocusChangeListener = new b();
        this.clearTextOnEditTextAttachedListener = new c();
        this.endIconChangedListener = new d();
    }

    private ValueAnimator j(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(e3.a.LINEAR_INTERPOLATOR);
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.addUpdateListener(new h());
        return valueAnimatorOfFloat;
    }

    private void l() {
        ValueAnimator valueAnimatorK = k();
        ValueAnimator valueAnimatorJ = j(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.iconInAnim = animatorSet;
        animatorSet.playTogether(valueAnimatorK, valueAnimatorJ);
        this.iconInAnim.addListener(new f());
        ValueAnimator valueAnimatorJ2 = j(1.0f, 0.0f);
        this.iconOutAnim = valueAnimatorJ2;
        valueAnimatorJ2.addListener(new g());
    }
}
