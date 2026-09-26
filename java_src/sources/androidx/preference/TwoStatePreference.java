package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
public abstract class TwoStatePreference extends Preference {
    protected boolean mChecked;
    private boolean mCheckedSet;
    private boolean mDisableDependentsState;
    private CharSequence mSummaryOff;
    private CharSequence mSummaryOn;

    public TwoStatePreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    public void A0(boolean z6) {
        this.mDisableDependentsState = z6;
    }

    @Override // androidx.preference.Preference
    @Nullable
    protected Object R(@NonNull TypedArray typedArray, int i10) {
        return Boolean.valueOf(typedArray.getBoolean(i10, false));
    }

    public boolean y0() {
        return this.mChecked;
    }

    static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.preference.TwoStatePreference.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        boolean mChecked;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mChecked = parcel.readInt() == 1;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mChecked ? 1 : 0);
        }
    }

    public TwoStatePreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public void B0(@Nullable CharSequence charSequence) {
        this.mSummaryOff = charSequence;
        if (y0()) {
            return;
        }
        J();
    }

    public void C0(@Nullable CharSequence charSequence) {
        this.mSummaryOn = charSequence;
        if (y0()) {
            J();
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    /* JADX WARN: Code duplicated, block: B:20:0x003a  */
    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    @RestrictTo
    protected void D0(View view) {
        boolean z6;
        int i10;
        CharSequence charSequenceZ;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (!this.mChecked || TextUtils.isEmpty(this.mSummaryOn)) {
                if (this.mChecked || TextUtils.isEmpty(this.mSummaryOff)) {
                    z6 = true;
                } else {
                    textView.setText(this.mSummaryOff);
                }
                if (z6) {
                    charSequenceZ = z();
                    if (!TextUtils.isEmpty(charSequenceZ)) {
                        textView.setText(charSequenceZ);
                        z6 = false;
                    }
                }
                i10 = z6 ? 8 : 0;
                if (i10 != textView.getVisibility()) {
                    textView.setVisibility(i10);
                }
            }
            textView.setText(this.mSummaryOn);
            z6 = false;
            if (z6) {
                charSequenceZ = z();
                if (!TextUtils.isEmpty(charSequenceZ)) {
                    textView.setText(charSequenceZ);
                    z6 = false;
                }
            }
            if (z6) {
            }
            if (i10 != textView.getVisibility()) {
                textView.setVisibility(i10);
            }
        }
    }

    @Override // androidx.preference.Preference
    protected void V(@Nullable Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.V(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.V(savedState.getSuperState());
        z0(savedState.mChecked);
    }

    @Override // androidx.preference.Preference
    public boolean s0() {
        if (!this.mDisableDependentsState ? this.mChecked : !this.mChecked) {
            if (!super.s0()) {
                return false;
            }
        }
        return true;
    }

    public void z0(boolean z6) {
        boolean z10 = this.mChecked != z6;
        if (z10 || !this.mCheckedSet) {
            this.mChecked = z6;
            this.mCheckedSet = true;
            Z(z6);
            if (z10) {
                K(s0());
                J();
            }
        }
    }

    public TwoStatePreference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected void E0(@NonNull PreferenceViewHolder preferenceViewHolder) {
        D0(preferenceViewHolder.a(android.R.id.summary));
    }

    @Override // androidx.preference.Preference
    protected void O() {
        super.O();
        boolean z6 = !y0();
        if (b(Boolean.valueOf(z6))) {
            z0(z6);
        }
    }

    @Override // androidx.preference.Preference
    @Nullable
    protected Parcelable W() {
        Parcelable parcelableW = super.W();
        if (G()) {
            return parcelableW;
        }
        SavedState savedState = new SavedState(parcelableW);
        savedState.mChecked = y0();
        return savedState;
    }

    public TwoStatePreference(@NonNull Context context) {
        this(context, null);
    }
}
