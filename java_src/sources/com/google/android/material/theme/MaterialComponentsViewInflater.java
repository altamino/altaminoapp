package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatViewInflater;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.i;
import com.google.android.material.textview.MaterialTextView;
import g3.a;

/* JADX INFO: loaded from: classes3.dex */
public class MaterialComponentsViewInflater extends AppCompatViewInflater {
    @Override // androidx.appcompat.app.AppCompatViewInflater
    @NonNull
    protected AppCompatAutoCompleteTextView c(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return new i(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    @NonNull
    protected AppCompatButton d(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    @NonNull
    protected AppCompatCheckBox e(Context context, AttributeSet attributeSet) {
        return new a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    @NonNull
    protected AppCompatRadioButton k(Context context, AttributeSet attributeSet) {
        return new p3.a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    @NonNull
    protected AppCompatTextView o(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }
}
