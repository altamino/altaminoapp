package com.google.android.material.textfield;

import android.content.Context;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: loaded from: classes11.dex */
abstract class f {
    Context context;

    @DrawableRes
    final int customEndIcon;
    CheckableImageButton endIconView;
    TextInputLayout textInputLayout;

    abstract void a();

    boolean b(int i10) {
        return true;
    }

    void c(boolean z6) {
    }

    boolean d() {
        return false;
    }

    f(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        this.textInputLayout = textInputLayout;
        this.context = textInputLayout.getContext();
        this.endIconView = textInputLayout.getEndIconView();
        this.customEndIcon = i10;
    }
}
