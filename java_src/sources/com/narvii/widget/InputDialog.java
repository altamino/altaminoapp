package com.narvii.widget;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.dialog.AlertDialog;

/* JADX INFO: loaded from: classes2.dex */
public class InputDialog extends AlertDialog {
    public EditText edit;
    public EditText edit2;
    public int editLimit;
    public TextView error;
    TextWatcher textWatcher;

    protected boolean allowEditEmpty() {
        return false;
    }

    protected int layoutId() {
        return R.layout.dialog_input_url;
    }

    protected void enableActionButton(View view, boolean z6) {
        if (view == null) {
            return;
        }
        view.setEnabled(z6);
    }

    public String getText() {
        EditText editText = this.edit;
        return editText == null ? "" : editText.getText().toString();
    }

    public String getText2() {
        EditText editText = this.edit2;
        return editText == null ? "" : editText.getText().toString();
    }

    protected void updateActionButtonStatus() {
        View childAt = this.buttons.getChildAt(2);
        if (childAt == null || this.edit == null || this.edit2 == null) {
            return;
        }
        enableActionButton(childAt, (allowEditEmpty() || !TextUtils.isEmpty(this.edit.getEditableText().toString().trim())) && (this.edit2.getVisibility() == 8 || !TextUtils.isEmpty(this.edit2.getEditableText().toString().trim())));
    }

    public InputDialog(Context context) {
        super(context);
        this.editLimit = -1;
        this.textWatcher = new TextWatcher() { // from class: com.narvii.widget.InputDialog.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                InputDialog.this.updateActionButtonStatus();
                if (InputDialog.this.editLimit != -1) {
                    int length = editable.toString().length();
                    InputDialog inputDialog = InputDialog.this;
                    if (length <= inputDialog.editLimit) {
                        inputDialog.error.setVisibility(8);
                        return;
                    }
                    inputDialog.edit.setText(editable.toString().substring(0, InputDialog.this.editLimit));
                    EditText editText = InputDialog.this.edit;
                    editText.setSelection(editText.getText().length());
                    InputDialog.this.error.setVisibility(0);
                    InputDialog inputDialog2 = InputDialog.this;
                    inputDialog2.error.setText(inputDialog2.getContext().getString(R.string.max_chars, Integer.valueOf(InputDialog.this.editLimit)));
                }
            }
        };
        setContentView(layoutId());
        this.edit = (EditText) findViewById(R.id.edit);
        this.edit2 = (EditText) findViewById(R.id.edit_2);
        this.error = (TextView) findViewById(R.id.error);
        EditText editText = this.edit;
        if (editText != null) {
            editText.addTextChangedListener(this.textWatcher);
        }
        EditText editText2 = this.edit2;
        if (editText2 != null) {
            editText2.addTextChangedListener(this.textWatcher);
        }
        updateActionButtonStatus();
    }

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(CharSequence charSequence, int i10, View.OnClickListener onClickListener) {
        View viewAddButton = super.addButton(charSequence, i10, onClickListener);
        updateActionButtonStatus();
        return viewAddButton;
    }
}
