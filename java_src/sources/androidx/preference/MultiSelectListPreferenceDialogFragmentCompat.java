package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class MultiSelectListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    private static final String SAVE_STATE_CHANGED = "MultiSelectListPreferenceDialogFragmentCompat.changed";
    private static final String SAVE_STATE_ENTRIES = "MultiSelectListPreferenceDialogFragmentCompat.entries";
    private static final String SAVE_STATE_ENTRY_VALUES = "MultiSelectListPreferenceDialogFragmentCompat.entryValues";
    private static final String SAVE_STATE_VALUES = "MultiSelectListPreferenceDialogFragmentCompat.values";
    CharSequence[] mEntries;
    CharSequence[] mEntryValues;
    Set<String> mNewValues = new HashSet();
    boolean mPreferenceChanged;

    @NonNull
    public static MultiSelectListPreferenceDialogFragmentCompat o(String str) {
        MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat = new MultiSelectListPreferenceDialogFragmentCompat();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle);
        return multiSelectListPreferenceDialogFragmentCompat;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void j(boolean z6) {
        if (z6 && this.mPreferenceChanged) {
            MultiSelectListPreference multiSelectListPreferenceN = n();
            if (multiSelectListPreferenceN.b(this.mNewValues)) {
                multiSelectListPreferenceN.H0(this.mNewValues);
            }
        }
        this.mPreferenceChanged = false;
    }

    private MultiSelectListPreference n() {
        return (MultiSelectListPreference) f();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    protected void k(@NonNull AlertDialog.Builder builder) {
        super.k(builder);
        int length = this.mEntryValues.length;
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            zArr[i10] = this.mNewValues.contains(this.mEntryValues[i10].toString());
        }
        builder.e(this.mEntries, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: androidx.preference.MultiSelectListPreferenceDialogFragmentCompat.1
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public void onClick(DialogInterface dialogInterface, int i11, boolean z6) {
                if (z6) {
                    MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat = MultiSelectListPreferenceDialogFragmentCompat.this;
                    multiSelectListPreferenceDialogFragmentCompat.mPreferenceChanged = multiSelectListPreferenceDialogFragmentCompat.mNewValues.add(multiSelectListPreferenceDialogFragmentCompat.mEntryValues[i11].toString()) | multiSelectListPreferenceDialogFragmentCompat.mPreferenceChanged;
                } else {
                    MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat2 = MultiSelectListPreferenceDialogFragmentCompat.this;
                    multiSelectListPreferenceDialogFragmentCompat2.mPreferenceChanged = multiSelectListPreferenceDialogFragmentCompat2.mNewValues.remove(multiSelectListPreferenceDialogFragmentCompat2.mEntryValues[i11].toString()) | multiSelectListPreferenceDialogFragmentCompat2.mPreferenceChanged;
                }
            }
        });
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            MultiSelectListPreference multiSelectListPreferenceN = n();
            if (multiSelectListPreferenceN.E0() != null && multiSelectListPreferenceN.F0() != null) {
                this.mNewValues.clear();
                this.mNewValues.addAll(multiSelectListPreferenceN.G0());
                this.mPreferenceChanged = false;
                this.mEntries = multiSelectListPreferenceN.E0();
                this.mEntryValues = multiSelectListPreferenceN.F0();
                return;
            }
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        this.mNewValues.clear();
        this.mNewValues.addAll(bundle.getStringArrayList(SAVE_STATE_VALUES));
        this.mPreferenceChanged = bundle.getBoolean(SAVE_STATE_CHANGED, false);
        this.mEntries = bundle.getCharSequenceArray(SAVE_STATE_ENTRIES);
        this.mEntryValues = bundle.getCharSequenceArray(SAVE_STATE_ENTRY_VALUES);
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList(SAVE_STATE_VALUES, new ArrayList<>(this.mNewValues));
        bundle.putBoolean(SAVE_STATE_CHANGED, this.mPreferenceChanged);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRIES, this.mEntries);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRY_VALUES, this.mEntryValues);
    }
}
