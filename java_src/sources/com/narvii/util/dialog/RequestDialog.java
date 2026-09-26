package com.narvii.util.dialog;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes5.dex */
public class RequestDialog extends AlertDialog {
    private static final int DEFAULT_MAX_COUNT = 100;
    public EditText editText;
    public int maxCount;
    public ProgressBar progressBar;
    public TextView tvCountHint;

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(int i10, int i11, View.OnClickListener onClickListener) {
        return addButton(i10, i11, onClickListener);
    }

    public EditText getRequestEdit() {
        return this.editText;
    }

    public void setEdtHint(String str) {
        this.editText.setHint(str);
    }

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(CharSequence charSequence, int i10, View.OnClickListener onClickListener) {
        int i11;
        if (i10 == 2) {
            i11 = R.layout.dialog_alert_button_blue;
        } else if (i10 != 4) {
            i11 = i10 != 8 ? R.layout.dialog_alert_button_gray : R.layout.dialog_alert_button_red;
        } else {
            i11 = R.layout.dialog_alert_button_green;
        }
        TextView textView = (TextView) this.inflater.inflate(i11, this.buttons, false);
        textView.setText(charSequence);
        if (this.buttons.getChildCount() > 0) {
            this.inflater.inflate(R.layout.dialog_alert_button_divider, this.buttons);
        }
        this.buttons.addView(textView);
        textView.setOnClickListener(onClickListener);
        this.buttons.setVisibility(0);
        return textView;
    }

    public String getRequestText() {
        return this.editText.getText().toString();
    }

    public void setCountShow() {
        TextView textView = this.tvCountHint;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    public void setEdtHint(CharSequence charSequence) {
        this.editText.setHint(charSequence);
    }

    public void setMaxCount(int i10) {
        this.maxCount = i10;
        TextView textView = this.tvCountHint;
        if (textView != null) {
            textView.setText("" + i10);
        }
    }

    public void setRequestProgressVisible(boolean z6) {
        this.progressBar.setVisibility(z6 ? 0 : 8);
        this.editText.setVisibility(z6 ? 8 : 0);
    }

    public RequestDialog(Context context) {
        super(context);
        this.maxCount = 100;
        setContentView(R.layout.community_request_dialog);
        this.progressBar = (ProgressBar) findViewById(R.id.request_progress);
        this.editText = (EditText) findViewById(R.id.request_edit);
        TextView textView = (TextView) findViewById(R.id.request_text_count_left);
        this.tvCountHint = textView;
        if (textView != null) {
            textView.setText("" + this.maxCount);
            this.editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.util.dialog.RequestDialog.1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    RequestDialog requestDialog = RequestDialog.this;
                    requestDialog.tvCountHint.setText(String.valueOf(requestDialog.maxCount - editable.length()));
                    if (RequestDialog.this.maxCount - editable.length() < 0) {
                        RequestDialog.this.tvCountHint.setTextColor(SupportMenu.CATEGORY_MASK);
                    } else {
                        RequestDialog.this.tvCountHint.setTextColor(-3355444);
                    }
                }
            });
        }
    }
}
