package com.google.android.material.textfield;

import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
class b extends f {
    @Override // com.google.android.material.textfield.f
    void a() {
        this.textInputLayout.setEndIconDrawable(this.customEndIcon);
        this.textInputLayout.setEndIconOnClickListener(null);
        this.textInputLayout.setEndIconOnLongClickListener(null);
    }

    b(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        super(textInputLayout, i10);
    }
}
