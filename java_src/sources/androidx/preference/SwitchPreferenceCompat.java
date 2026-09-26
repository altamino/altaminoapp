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
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.res.TypedArrayUtils;

/* JADX INFO: loaded from: classes4.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {
    private final Listener mListener;
    private CharSequence mSwitchOff;
    private CharSequence mSwitchOn;

    private class Listener implements CompoundButton.OnCheckedChangeListener {
        Listener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
            if (SwitchPreferenceCompat.this.b(Boolean.valueOf(z6))) {
                SwitchPreferenceCompat.this.z0(z6);
            } else {
                compoundButton.setChecked(!z6);
            }
        }
    }

    public SwitchPreferenceCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mListener = new Listener();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchPreferenceCompat, i10, i11);
        C0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.SwitchPreferenceCompat_summaryOn, R.styleable.SwitchPreferenceCompat_android_summaryOn));
        B0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.SwitchPreferenceCompat_summaryOff, R.styleable.SwitchPreferenceCompat_android_summaryOff));
        G0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.SwitchPreferenceCompat_switchTextOn, R.styleable.SwitchPreferenceCompat_android_switchTextOn));
        F0(TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.SwitchPreferenceCompat_switchTextOff, R.styleable.SwitchPreferenceCompat_android_switchTextOff));
        A0(TypedArrayUtils.b(typedArrayObtainStyledAttributes, R.styleable.SwitchPreferenceCompat_disableDependentsState, R.styleable.SwitchPreferenceCompat_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void H0(View view) {
        boolean z6 = view instanceof SwitchCompat;
        if (z6) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z6) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.mSwitchOn);
            switchCompat.setTextOff(this.mSwitchOff);
            switchCompat.setOnCheckedChangeListener(this.mListener);
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
        H0(view.findViewById(R.id.switchWidget));
        D0(view.findViewById(android.R.id.summary));
    }

    @Override // androidx.preference.Preference
    public void N(@NonNull PreferenceViewHolder preferenceViewHolder) {
        super.N(preferenceViewHolder);
        H0(preferenceViewHolder.a(R.id.switchWidget));
        E0(preferenceViewHolder);
    }

    @Override // androidx.preference.Preference
    @RestrictTo
    protected void Y(@NonNull View view) {
        super.Y(view);
        I0(view);
    }

    public SwitchPreferenceCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SwitchPreferenceCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchPreferenceCompatStyle);
    }

    public SwitchPreferenceCompat(@NonNull Context context) {
        this(context, null);
    }
}
