package androidx.preference;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
@Deprecated
public class MultiSelectListPreferenceDialogFragment extends PreferenceDialogFragment {
    private static final String SAVE_STATE_CHANGED = "MultiSelectListPreferenceDialogFragment.changed";
    private static final String SAVE_STATE_ENTRIES = "MultiSelectListPreferenceDialogFragment.entries";
    private static final String SAVE_STATE_ENTRY_VALUES = "MultiSelectListPreferenceDialogFragment.entryValues";
    private static final String SAVE_STATE_VALUES = "MultiSelectListPreferenceDialogFragment.values";
    CharSequence[] mEntries;
    CharSequence[] mEntryValues;
    Set<String> mNewValues = new HashSet();
    boolean mPreferenceChanged;

    @NonNull
    @Deprecated
    public static MultiSelectListPreferenceDialogFragment i(String str) {
        MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment = new MultiSelectListPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        multiSelectListPreferenceDialogFragment.setArguments(bundle);
        return multiSelectListPreferenceDialogFragment;
    }

    @Deprecated
    public MultiSelectListPreferenceDialogFragment() {
    }

    private MultiSelectListPreference h() {
        return (MultiSelectListPreference) a();
    }

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public void e(boolean z6) {
        MultiSelectListPreference multiSelectListPreferenceH = h();
        if (z6 && this.mPreferenceChanged) {
            Set<String> set = this.mNewValues;
            if (multiSelectListPreferenceH.b(set)) {
                multiSelectListPreferenceH.H0(set);
            }
        }
        this.mPreferenceChanged = false;
    }

    @Override // androidx.preference.PreferenceDialogFragment
    protected void f(@NonNull AlertDialog.Builder builder) {
        super.f(builder);
        int length = this.mEntryValues.length;
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            zArr[i10] = this.mNewValues.contains(this.mEntryValues[i10].toString());
        }
        builder.setMultiChoiceItems(this.mEntries, zArr, new DialogInterface.OnMultiChoiceClickListener() { // from class: androidx.preference.MultiSelectListPreferenceDialogFragment.1
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public void onClick(DialogInterface dialogInterface, int i11, boolean z6) {
                if (z6) {
                    MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment = MultiSelectListPreferenceDialogFragment.this;
                    multiSelectListPreferenceDialogFragment.mPreferenceChanged = multiSelectListPreferenceDialogFragment.mNewValues.add(multiSelectListPreferenceDialogFragment.mEntryValues[i11].toString()) | multiSelectListPreferenceDialogFragment.mPreferenceChanged;
                } else {
                    MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment2 = MultiSelectListPreferenceDialogFragment.this;
                    multiSelectListPreferenceDialogFragment2.mPreferenceChanged = multiSelectListPreferenceDialogFragment2.mNewValues.remove(multiSelectListPreferenceDialogFragment2.mEntryValues[i11].toString()) | multiSelectListPreferenceDialogFragment2.mPreferenceChanged;
                }
            }
        });
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            MultiSelectListPreference multiSelectListPreferenceH = h();
            if (multiSelectListPreferenceH.E0() != null && multiSelectListPreferenceH.F0() != null) {
                this.mNewValues.clear();
                this.mNewValues.addAll(multiSelectListPreferenceH.G0());
                this.mPreferenceChanged = false;
                this.mEntries = multiSelectListPreferenceH.E0();
                this.mEntryValues = multiSelectListPreferenceH.F0();
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

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList(SAVE_STATE_VALUES, new ArrayList<>(this.mNewValues));
        bundle.putBoolean(SAVE_STATE_CHANGED, this.mPreferenceChanged);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRIES, this.mEntries);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRY_VALUES, this.mEntryValues);
    }
}
