package androidx.preference;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes10.dex */
public class EditTextPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    private static final String SAVE_STATE_TEXT = "EditTextPreferenceDialogFragment.text";
    private static final int SHOW_REQUEST_TIMEOUT = 1000;
    private EditText mEditText;
    private CharSequence mText;
    private final Runnable mShowSoftInputRunnable = new Runnable() { // from class: androidx.preference.EditTextPreferenceDialogFragmentCompat.1
        @Override // java.lang.Runnable
        public void run() {
            EditTextPreferenceDialogFragmentCompat.this.q();
        }
    };
    private long mShowRequestTime = -1;

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    @RestrictTo
    protected boolean g() {
        return true;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    @RestrictTo
    protected void m() {
        r(true);
        q();
    }

    private boolean o() {
        long j6 = this.mShowRequestTime;
        return j6 != -1 && j6 + 1000 > SystemClock.currentThreadTimeMillis();
    }

    @NonNull
    public static EditTextPreferenceDialogFragmentCompat p(String str) {
        EditTextPreferenceDialogFragmentCompat editTextPreferenceDialogFragmentCompat = new EditTextPreferenceDialogFragmentCompat();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        editTextPreferenceDialogFragmentCompat.setArguments(bundle);
        return editTextPreferenceDialogFragmentCompat;
    }

    private void r(boolean z6) {
        this.mShowRequestTime = z6 ? SystemClock.currentThreadTimeMillis() : -1L;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public void j(boolean z6) {
        if (z6) {
            String string = this.mEditText.getText().toString();
            EditTextPreference editTextPreferenceN = n();
            if (editTextPreferenceN.b(string)) {
                editTextPreferenceN.G0(string);
            }
        }
    }

    private EditTextPreference n() {
        return (EditTextPreference) f();
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    protected void h(@NonNull View view) {
        super.h(view);
        EditText editText = (EditText) view.findViewById(android.R.id.edit);
        this.mEditText = editText;
        if (editText != null) {
            editText.requestFocus();
            this.mEditText.setText(this.mText);
            EditText editText2 = this.mEditText;
            editText2.setSelection(editText2.getText().length());
            if (n().E0() != null) {
                n().E0().a(this.mEditText);
                return;
            }
            return;
        }
        throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.mText = n().F0();
        } else {
            this.mText = bundle.getCharSequence(SAVE_STATE_TEXT);
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence(SAVE_STATE_TEXT, this.mText);
    }

    @RestrictTo
    void q() {
        if (o()) {
            EditText editText = this.mEditText;
            if (editText != null && editText.isFocused()) {
                if (((InputMethodManager) this.mEditText.getContext().getSystemService("input_method")).showSoftInput(this.mEditText, 0)) {
                    r(false);
                    return;
                } else {
                    this.mEditText.removeCallbacks(this.mShowSoftInputRunnable);
                    this.mEditText.postDelayed(this.mShowSoftInputRunnable, 50L);
                    return;
                }
            }
            r(false);
        }
    }
}
