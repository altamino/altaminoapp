package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.Switch;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;

/* JADX INFO: loaded from: classes4.dex */
public class SwitchPreference extends TwoStatePreference {
    private final Listener mListener;
    private CharSequence mSwitchOff;
    private CharSequence mSwitchOn;

    private class Listener implements CompoundButton.OnCheckedChangeListener {
        Listener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
            if (SwitchPreference.this.b(Boolean.valueOf(z6))) {
                SwitchPreference.this.z0(z6);
            } else {
                compoundButton.setChecked(!z6);
            }
        }
    }

    public SwitchPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new Listener();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchPreference, i10, i11);
        C0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.SwitchPreference_summaryOn, R.styleable.SwitchPreference_android_summaryOn));
        B0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.SwitchPreference_summaryOff, R.styleable.SwitchPreference_android_summaryOff));
        G0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.SwitchPreference_switchTextOn, R.styleable.SwitchPreference_android_switchTextOn));
        F0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.SwitchPreference_switchTextOff, R.styleable.SwitchPreference_android_switchTextOff));
        A0(TypedArrayUtils.b(typedArrayObtainStyledAttributes, R.styleable.SwitchPreference_disableDependentsState, R.styleable.SwitchPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void H0(View view) {
        boolean z6 = view instanceof Switch;
        if (z6) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z6) {
            Switch r5 = (Switch) view;
            r5.setTextOn(this.mSwitchOn);
            r5.setTextOff(this.mSwitchOff);
            r5.setOnCheckedChangeListener(this.mListener);
        }
    }

    public void F0(@Nullable CharSequence charSequence) {
        this.mSwitchOff = charSequence;
        J();
    }

    public void G0(@Nullable CharSequence charSequence) {
        this.mSwitchOn = charSequence;
        J();
    }

    private void I0(View view) {
        if (!((AccessibilityManager) i().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        H0(view.findViewById(android.R.id.switch_widget));
        D0(view.findViewById(android.R.id.summary));
    }

    @Override // androidx.preference.Preference
    public void N(@NonNull PreferenceViewHolder preferenceViewHolder) {
        super.N(preferenceViewHolder);
        H0(preferenceViewHolder.a(android.R.id.switch_widget));
        E0(preferenceViewHolder);
    }

    @Override // androidx.preference.Preference
    @RestrictTo
    protected void Y(@NonNull View view) {
        super.Y(view);
        I0(view);
    }

    public SwitchPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SwitchPreference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.a(context, R.attr.switchPreferenceStyle, android.R.attr.switchPreferenceStyle));
    }

    public SwitchPreference(@NonNull Context context) {
        this(context, null);
    }
}
