package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class DropDownPreference extends ListPreference {
    private final ArrayAdapter mAdapter;
    private final Context mContext;
    private final AdapterView.OnItemSelectedListener mItemSelectedListener;
    private Spinner mSpinner;

    public DropDownPreference(@NonNull Context context) {
        this(context, null);
    }

    public DropDownPreference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dropdownPreferenceStyle);
    }

    private void N0() {
        this.mAdapter.clear();
        if (F0() != null) {
            for (CharSequence charSequence : F0()) {
                this.mAdapter.add(charSequence.toString());
            }
        }
    }

    @NonNull
    protected ArrayAdapter L0() {
        return new ArrayAdapter(this.mContext, android.R.layout.simple_spinner_dropdown_item);
    }

    @Override // androidx.preference.Preference
    public void N(@NonNull PreferenceViewHolder preferenceViewHolder) {
        Spinner spinner = (Spinner) preferenceViewHolder.itemView.findViewById(R.id.spinner);
        this.mSpinner = spinner;
        spinner.setAdapter((SpinnerAdapter) this.mAdapter);
        this.mSpinner.setOnItemSelectedListener(this.mItemSelectedListener);
        this.mSpinner.setSelection(M0(I0()));
        super.N(preferenceViewHolder);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    protected void O() {
        this.mSpinner.performClick();
    }

    public DropDownPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    private int M0(String str) {
        CharSequence[] charSequenceArrH0 = H0();
        if (str != null && charSequenceArrH0 != null) {
            for (int length = charSequenceArrH0.length - 1; length >= 0; length--) {
                if (TextUtils.equals(charSequenceArrH0[length].toString(), str)) {
                    return length;
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // androidx.preference.Preference
    protected void J() {
        super.J();
        ArrayAdapter arrayAdapter = this.mAdapter;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    public DropDownPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: androidx.preference.DropDownPreference.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i12, long j6) {
                if (i12 >= 0) {
                    String string = DropDownPreference.this.H0()[i12].toString();
                    if (string.equals(DropDownPreference.this.I0()) || !DropDownPreference.this.b(string)) {
                        return;
                    }
                    DropDownPreference.this.K0(string);
                }
            }
        };
        this.mContext = context;
        this.mAdapter = L0();
        N0();
    }
}
