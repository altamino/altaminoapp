package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;

/* JADX INFO: loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    private final Listener mListener;

    private class Listener implements CompoundButton.OnCheckedChangeListener {
        Listener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
            if (CheckBoxPreference.this.b(Boolean.valueOf(z6))) {
                CheckBoxPreference.this.z0(z6);
            } else {
                compoundButton.setChecked(!z6);
            }
        }
    }

    public CheckBoxPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public CheckBoxPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new Listener();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CheckBoxPreference, i10, i11);
        C0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.CheckBoxPreference_summaryOn, R.styleable.CheckBoxPreference_android_summaryOn));
        B0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.CheckBoxPreference_summaryOff, R.styleable.CheckBoxPreference_android_summaryOff));
        A0(TypedArrayUtils.b(typedArrayObtainStyledAttributes, R.styleable.CheckBoxPreference_disableDependentsState, R.styleable.CheckBoxPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void F0(View view) {
        boolean z6 = view instanceof CompoundButton;
        if (z6) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z6) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.mListener);
        }
    }

    private void G0(@NonNull View view) {
        if (!((AccessibilityManager) i().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        F0(view.findViewById(android.R.id.checkbox));
        D0(view.findViewById(android.R.id.summary));
    }

    @Override // androidx.preference.Preference
    public void N(@NonNull PreferenceViewHolder preferenceViewHolder) {
        super.N(preferenceViewHolder);
        F0(preferenceViewHolder.a(android.R.id.checkbox));
        E0(preferenceViewHolder);
    }

    @Override // androidx.preference.Preference
    @RestrictTo
    protected void Y(@NonNull View view) {
        super.Y(view);
        G0(view);
    }

    public CheckBoxPreference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.a(context, R.attr.checkBoxPreferenceStyle, android.R.attr.checkBoxPreferenceStyle));
    }

    public CheckBoxPreference(@NonNull Context context) {
        this(context, null);
    }
}
