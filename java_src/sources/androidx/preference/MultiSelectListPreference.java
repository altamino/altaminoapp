package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class MultiSelectListPreference extends DialogPreference {
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;
    private Set<String> mValues;

    public MultiSelectListPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mValues = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MultiSelectListPreference, i10, i11);
        this.mEntries = TypedArrayUtils.q(typedArrayObtainStyledAttributes, R.styleable.MultiSelectListPreference_entries, R.styleable.MultiSelectListPreference_android_entries);
        this.mEntryValues = TypedArrayUtils.q(typedArrayObtainStyledAttributes, R.styleable.MultiSelectListPreference_entryValues, R.styleable.MultiSelectListPreference_android_entryValues);
        typedArrayObtainStyledAttributes.recycle();
    }

    public CharSequence[] E0() {
        return this.mEntries;
    }

    public CharSequence[] F0() {
        return this.mEntryValues;
    }

    public Set<String> G0() {
        return this.mValues;
    }

    private static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.preference.MultiSelectListPreference.SavedState.1
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
        Set<String> mValues;

        SavedState(Parcel parcel) {
            super(parcel);
            int i10 = parcel.readInt();
            this.mValues = new HashSet();
            String[] strArr = new String[i10];
            parcel.readStringArray(strArr);
            Collections.addAll(this.mValues, strArr);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mValues.size());
            Set<String> set = this.mValues;
            parcel.writeStringArray((String[]) set.toArray(new String[set.size()]));
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void H0(Set<String> set) {
        this.mValues.clear();
        this.mValues.addAll(set);
        c0(set);
        J();
    }

    @Override // androidx.preference.Preference
    protected void V(@Nullable Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.V(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.V(savedState.getSuperState());
        H0(savedState.mValues);
    }

    @Override // androidx.preference.Preference
    @Nullable
    protected Object R(@NonNull TypedArray typedArray, int i10) {
        CharSequence[] textArray = typedArray.getTextArray(i10);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    @Nullable
    protected Parcelable W() {
        Parcelable parcelableW = super.W();
        if (G()) {
            return parcelableW;
        }
        SavedState savedState = new SavedState(parcelableW);
        savedState.mValues = G0();
        return savedState;
    }

    public MultiSelectListPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public MultiSelectListPreference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.a(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }

    public MultiSelectListPreference(@NonNull Context context) {
        this(context, null);
    }
}
