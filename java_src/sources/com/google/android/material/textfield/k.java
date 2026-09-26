package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.internal.r;

/* JADX INFO: loaded from: classes8.dex */
class k extends f {
    private final TextInputLayout.f onEditTextAttachedListener;
    private final TextInputLayout.g onEndIconChangedListener;
    private final TextWatcher textWatcher;

    class a extends r {
        a() {
        }

        @Override // com.google.android.material.internal.r, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            k kVar = k.this;
            kVar.endIconView.setChecked(!kVar.g());
        }
    }

    class b implements TextInputLayout.f {
        b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            k kVar = k.this;
            kVar.endIconView.setChecked(!kVar.g());
            editText.removeTextChangedListener(k.this.textWatcher);
            editText.addTextChangedListener(k.this.textWatcher);
        }
    }

    class c implements TextInputLayout.g {

        class a implements Runnable {
            final /* synthetic */ EditText val$editText;

            a(EditText editText) {
                this.val$editText = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.val$editText.removeTextChangedListener(k.this.textWatcher);
            }
        }

        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(@NonNull TextInputLayout textInputLayout, int i10) {
            EditText editText = textInputLayout.getEditText();
            if (editText != null && i10 == 1) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                editText.post(new a(editText));
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText = k.this.textInputLayout.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (k.this.g()) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            k.this.textInputLayout.U();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        EditText editText = this.textInputLayout.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean h(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    @Override // com.google.android.material.textfield.f
    void a() {
        TextInputLayout textInputLayout = this.textInputLayout;
        int i10 = this.customEndIcon;
        if (i10 == 0) {
            i10 = d3.e.design_password_eye;
        }
        textInputLayout.setEndIconDrawable(i10);
        TextInputLayout textInputLayout2 = this.textInputLayout;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(d3.j.password_toggle_content_description));
        this.textInputLayout.setEndIconVisible(true);
        this.textInputLayout.setEndIconCheckable(true);
        this.textInputLayout.setEndIconOnClickListener(new d());
        this.textInputLayout.g(this.onEditTextAttachedListener);
        this.textInputLayout.h(this.onEndIconChangedListener);
        EditText editText = this.textInputLayout.getEditText();
        if (h(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    k(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        super(textInputLayout, i10);
        this.textWatcher = new a();
        this.onEditTextAttachedListener = new b();
        this.onEndIconChangedListener = new c();
    }
}
