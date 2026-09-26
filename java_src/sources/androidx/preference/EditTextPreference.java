package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;

/* JADX INFO: loaded from: classes5.dex */
public class EditTextPreference extends DialogPreference {

    @Nullable
    private OnBindEditTextListener mOnBindEditTextListener;
    private String mText;

    public interface OnBindEditTextListener {
        void a(@NonNull EditText editText);
    }

    public static final class SimpleSummaryProvider implements Preference.SummaryProvider<EditTextPreference> {
        private static SimpleSummaryProvider sSimpleSummaryProvider;

        @NonNull
        public static SimpleSummaryProvider b() {
            if (sSimpleSummaryProvider == null) {
                sSimpleSummaryProvider = new SimpleSummaryProvider();
            }
            return sSimpleSummaryProvider;
        }

        private SimpleSummaryProvider() {
        }

        @Override // androidx.preference.Preference.SummaryProvider
        @Nullable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public CharSequence a(@NonNull EditTextPreference editTextPreference) {
            if (TextUtils.isEmpty(editTextPreference.F0())) {
                return editTextPreference.i().getString(R.string.not_set);
            }
            return editTextPreference.F0();
        }
    }

    public EditTextPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EditTextPreference, i10, i11);
        int i12 = R.styleable.EditTextPreference_useSimpleSummaryProvider;
        if (TypedArrayUtils.b(typedArrayObtainStyledAttributes, i12, i12, false)) {
            p0(SimpleSummaryProvider.b());
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Nullable
    OnBindEditTextListener E0() {
        return this.mOnBindEditTextListener;
    }

    @Nullable
    public String F0() {
        return this.mText;
    }

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.preference.EditTextPreference.SavedState.1
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
        String mText;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mText = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.mText);
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
        G0(savedState.mText);
    }

    @Override // androidx.preference.Preference
    public boolean s0() {
        return TextUtils.isEmpty(this.mText) || super.s0();
    }

    public void G0(@Nullable String str) {
        boolean zS0 = s0();
        this.mText = str;
        b0(str);
        boolean zS1 = s0();
        if (zS1 != zS0) {
            K(zS1);
        }
        J();
    }

    @Override // androidx.preference.Preference
    protected Object R(@NonNull TypedArray typedArray, int i10) {
        return typedArray.getString(i10);
    }

    @Override // androidx.preference.Preference
    @Nullable
    protected Parcelable W() {
        Parcelable parcelableW = super.W();
        if (G()) {
            return parcelableW;
        }
        SavedState savedState = new SavedState(parcelableW);
        savedState.mText = F0();
        return savedState;
    }

    public EditTextPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public EditTextPreference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.a(context, R.attr.editTextPreferenceStyle, android.R.attr.editTextPreferenceStyle));
    }

    public EditTextPreference(@NonNull Context context) {
        this(context, null);
    }
}
