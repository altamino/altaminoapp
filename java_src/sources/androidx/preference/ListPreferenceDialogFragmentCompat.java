package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;

/* JADX INFO: loaded from: classes6.dex */
public class ListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    private static final String SAVE_STATE_ENTRIES = "ListPreferenceDialogFragment.entries";
    private static final String SAVE_STATE_ENTRY_VALUES = "ListPreferenceDialogFragment.entryValues";
    private static final String SAVE_STATE_INDEX = "ListPreferenceDialogFragment.index";
    int mClickedDialogEntryIndex;
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;

    @NonNull
    public static ListPreferenceDialogFragmentCompat o(String str) {
        ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat = new ListPreferenceDialogFragmentCompat();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        listPreferenceDialogFragmentCompat.setArguments(bundle);
        return listPreferenceDialogFragmentCompat;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void j(boolean z6) {
        int i10;
        if (!z6 || (i10 = this.mClickedDialogEntryIndex) < 0) {
            return;
        }
        String string = this.mEntryValues[i10].toString();
        ListPreference listPreferenceN = n();
        if (listPreferenceN.b(string)) {
            listPreferenceN.K0(string);
        }
    }

    private ListPreference n() {
        return (ListPreference) f();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    protected void k(@NonNull AlertDialog.Builder builder) {
        super.k(builder);
        builder.j(this.mEntries, this.mClickedDialogEntryIndex, new DialogInterface.OnClickListener() { // from class: androidx.preference.ListPreferenceDialogFragmentCompat.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat = ListPreferenceDialogFragmentCompat.this;
                listPreferenceDialogFragmentCompat.mClickedDialogEntryIndex = i10;
                listPreferenceDialogFragmentCompat.onClick(dialogInterface, -1);
                dialogInterface.dismiss();
            }
        });
        builder.h(null, null);
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ListPreference listPreferenceN = n();
            if (listPreferenceN.F0() != null && listPreferenceN.H0() != null) {
                this.mClickedDialogEntryIndex = listPreferenceN.E0(listPreferenceN.I0());
                this.mEntries = listPreferenceN.F0();
                this.mEntryValues = listPreferenceN.H0();
                return;
            }
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.mClickedDialogEntryIndex = bundle.getInt(SAVE_STATE_INDEX, 0);
        this.mEntries = bundle.getCharSequenceArray(SAVE_STATE_ENTRIES);
        this.mEntryValues = bundle.getCharSequenceArray(SAVE_STATE_ENTRY_VALUES);
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(SAVE_STATE_INDEX, this.mClickedDialogEntryIndex);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRIES, this.mEntries);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRY_VALUES, this.mEntryValues);
    }
}
