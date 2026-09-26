package com.narvii.util.dialog;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.TextView;

/* JADX INFO: loaded from: classes5.dex */
public class EditTextDialog extends AlertDialog {
    /* JADX INFO: Access modifiers changed from: private */
    public void updateRightButton(TextView textView) {
        if (textView != null) {
            if (TextUtils.isEmpty(getTrimEditText())) {
                disableView(textView);
            } else {
                enableView(textView);
            }
        }
    }

    void disableView(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setAlpha(0.4f);
        textView.setClickable(false);
    }

    void enableView(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setAlpha(1.0f);
        textView.setClickable(true);
    }

    public EditTextDialog(Context context) {
        super(context);
        setEditText();
    }

    public void disallowEditTextEmpty(final TextView textView) {
        getEditTextView().addTextChangedListener(new TextWatcher() { // from class: com.narvii.util.dialog.EditTextDialog.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                EditTextDialog.this.updateRightButton(textView);
            }
        });
        updateRightButton(textView);
    }
}
