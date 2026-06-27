package com.narvii.util.dialog;

import android.content.Context;
import android.support.v4.internal.view.SupportMenu;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class RequestDialog extends AlertDialog {
    private static final int DEFAULT_MAX_COUNT = 100;
    public EditText editText;
    public int maxCount;
    public ProgressBar progressBar;
    public TextView tvCountHint;

    public RequestDialog(Context context) {
        super(context);
        this.maxCount = 100;
        setContentView(R.layout.community_request_dialog);
        this.progressBar = (ProgressBar) findViewById(R.id.request_progress);
        this.editText = (EditText) findViewById(R.id.request_edit);
        this.tvCountHint = (TextView) findViewById(R.id.request_text_count_left);
        TextView textView = this.tvCountHint;
        if (textView != null) {
            textView.setText("" + this.maxCount);
            this.editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.util.dialog.RequestDialog.1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
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

    public void setEdtHint(String str) {
        this.editText.setHint(str);
    }

    public void setEdtHint(CharSequence charSequence) {
        this.editText.setHint(charSequence);
    }

    public EditText getRequestEdit() {
        return this.editText;
    }

    public void setRequestProgressVisible(boolean z) {
        this.progressBar.setVisibility(z ? 0 : 8);
        this.editText.setVisibility(z ? 8 : 0);
    }

    public String getRequestText() {
        return this.editText.getText().toString();
    }

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(int i, int i2, View.OnClickListener onClickListener) {
        return addButton(i, i2, onClickListener);
    }

    public void setMaxCount(int i) {
        this.maxCount = i;
        TextView textView = this.tvCountHint;
        if (textView != null) {
            textView.setText("" + i);
        }
    }

    public void setCountShow() {
        TextView textView = this.tvCountHint;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    @Override // com.narvii.util.dialog.AlertDialog
    public View addButton(CharSequence charSequence, int i, View.OnClickListener onClickListener) {
        int i2;
        if (i == 2) {
            i2 = R.layout.dialog_alert_button_blue;
        } else if (i == 4) {
            i2 = R.layout.dialog_alert_button_green;
        } else if (i == 8) {
            i2 = R.layout.dialog_alert_button_red;
        } else {
            i2 = R.layout.dialog_alert_button_gray;
        }
        TextView textView = (TextView) this.inflater.inflate(i2, this.buttons, false);
        textView.setText(charSequence);
        if (this.buttons.getChildCount() > 0) {
            this.inflater.inflate(R.layout.dialog_alert_button_divider, this.buttons);
        }
        this.buttons.addView(textView);
        textView.setOnClickListener(onClickListener);
        this.buttons.setVisibility(0);
        return textView;
    }
}
