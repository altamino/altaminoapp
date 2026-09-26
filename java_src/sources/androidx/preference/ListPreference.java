package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;

/* JADX INFO: loaded from: classes.dex */
public class ListPreference extends DialogPreference {
    private static final String TAG = "ListPreference";
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;
    private String mSummary;
    private String mValue;
    private boolean mValueSet;

    public static final class SimpleSummaryProvider implements Preference.SummaryProvider<ListPreference> {
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
        public CharSequence a(@NonNull ListPreference listPreference) {
            if (TextUtils.isEmpty(listPreference.G0())) {
                return listPreference.i().getString(R.string.not_set);
            }
            return listPreference.G0();
        }
    }

    public ListPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPreference, i10, i11);
        this.mEntries = TypedArrayUtils.q(typedArrayObtainStyledAttributes, R.styleable.ListPreference_entries, R.styleable.ListPreference_android_entries);
        this.mEntryValues = TypedArrayUtils.q(typedArrayObtainStyledAttributes, R.styleable.ListPreference_entryValues, R.styleable.ListPreference_android_entryValues);
        int i12 = R.styleable.ListPreference_useSimpleSummaryProvider;
        if (TypedArrayUtils.b(typedArrayObtainStyledAttributes, i12, i12, false)) {
            p0(SimpleSummaryProvider.b());
        }
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i10, i11);
        this.mSummary = TypedArrayUtils.o(typedArrayObtainStyledAttributes2, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
        typedArrayObtainStyledAttributes2.recycle();
    }

    public CharSequence[] F0() {
        return this.mEntries;
    }

    public CharSequence[] H0() {
        return this.mEntryValues;
    }

    public String I0() {
        return this.mValue;
    }

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.preference.ListPreference.SavedState.1
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
        String mValue;

        SavedState(Parcel parcel) {
            super(parcel);
            this.mValue = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.mValue);
        }
    }

    private int J0() {
        return E0(this.mValue);
    }

    public int E0(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.mEntryValues) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (TextUtils.equals(this.mEntryValues[length].toString(), str)) {
                return length;
            }
        }
        return -1;
    }

    public void K0(String str) {
        boolean z6 = !TextUtils.equals(this.mValue, str);
        if (z6 || !this.mValueSet) {
            this.mValue = str;
            this.mValueSet = true;
            b0(str);
            if (z6) {
                J();
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
        K0(savedState.mValue);
    }

    @Nullable
    public CharSequence G0() {
        CharSequence[] charSequenceArr;
        int iJ0 = J0();
        if (iJ0 >= 0 && (charSequenceArr = this.mEntries) != null) {
            return charSequenceArr[iJ0];
        }
        return null;
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
        savedState.mValue = I0();
        return savedState;
    }

    @Override // androidx.preference.Preference
    @Nullable
    public CharSequence z() {
        if (A() != null) {
            return A().a(this);
        }
        CharSequence charSequenceG0 = G0();
        CharSequence charSequenceZ = super.z();
        String str = this.mSummary;
        if (str == null) {
            return charSequenceZ;
        }
        Object[] objArr = new Object[1];
        if (charSequenceG0 == null) {
            charSequenceG0 = "";
        }
        objArr[0] = charSequenceG0;
        String str2 = String.format(str, objArr);
        if (TextUtils.equals(str2, charSequenceZ)) {
            return charSequenceZ;
        }
        Log.w(TAG, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return str2;
    }

    public ListPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public ListPreference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.a(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }

    public ListPreference(@NonNull Context context) {
        this(context, null);
    }
}
