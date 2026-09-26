package androidx.preference;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Deprecated
public class ListPreferenceDialogFragment extends PreferenceDialogFragment {
    private static final String SAVE_STATE_ENTRIES = "ListPreferenceDialogFragment.entries";
    private static final String SAVE_STATE_ENTRY_VALUES = "ListPreferenceDialogFragment.entryValues";
    private static final String SAVE_STATE_INDEX = "ListPreferenceDialogFragment.index";
    int mClickedDialogEntryIndex;
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;

    @NonNull
    @Deprecated
    public static ListPreferenceDialogFragment i(String str) {
        ListPreferenceDialogFragment listPreferenceDialogFragment = new ListPreferenceDialogFragment();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        listPreferenceDialogFragment.setArguments(bundle);
        return listPreferenceDialogFragment;
    }

    @Deprecated
    public ListPreferenceDialogFragment() {
    }

    private ListPreference h() {
        return (ListPreference) a();
    }

    @Override // androidx.preference.PreferenceDialogFragment
    @Deprecated
    public void e(boolean z6) {
        int i10;
        ListPreference listPreferenceH = h();
        if (z6 && (i10 = this.mClickedDialogEntryIndex) >= 0) {
            String string = this.mEntryValues[i10].toString();
            if (listPreferenceH.b(string)) {
                listPreferenceH.K0(string);
            }
        }
    }

    @Override // androidx.preference.PreferenceDialogFragment
    protected void f(@NonNull AlertDialog.Builder builder) {
        super.f(builder);
        builder.setSingleChoiceItems(this.mEntries, this.mClickedDialogEntryIndex, new DialogInterface.OnClickListener() { // from class: androidx.preference.ListPreferenceDialogFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                ListPreferenceDialogFragment listPreferenceDialogFragment = ListPreferenceDialogFragment.this;
                listPreferenceDialogFragment.mClickedDialogEntryIndex = i10;
                listPreferenceDialogFragment.onClick(dialogInterface, -1);
                dialogInterface.dismiss();
            }
        });
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ListPreference listPreferenceH = h();
            if (listPreferenceH.F0() != null && listPreferenceH.H0() != null) {
                this.mClickedDialogEntryIndex = listPreferenceH.E0(listPreferenceH.I0());
                this.mEntries = listPreferenceH.F0();
                this.mEntryValues = listPreferenceH.H0();
                return;
            }
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.mClickedDialogEntryIndex = bundle.getInt(SAVE_STATE_INDEX, 0);
        this.mEntries = bundle.getCharSequenceArray(SAVE_STATE_ENTRIES);
        this.mEntryValues = bundle.getCharSequenceArray(SAVE_STATE_ENTRY_VALUES);
    }

    @Override // androidx.preference.PreferenceDialogFragment, android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(SAVE_STATE_INDEX, this.mClickedDialogEntryIndex);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRIES, this.mEntries);
        bundle.putCharSequenceArray(SAVE_STATE_ENTRY_VALUES, this.mEntryValues);
    }
}
