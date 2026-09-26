package com.narvii.util.dialog;

import android.content.Context;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes8.dex */
public class AlertDialog extends NVDialog {
    public static final int STYLE_BLUE = 2;
    public static final int STYLE_EDIT_MULTI_LINE = 256;
    public static final int STYLE_GREEN = 4;
    public static final int STYLE_GREEN_INSIDE = 1024;
    public static final int STYLE_GREY = 32;
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_PURPLE = 512;
    public static final int STYLE_RED = 8;
    public static final int STYLE_RED_CORNER = 16;
    public static final int STYLE_TRANSPARENT = 64;
    protected ViewGroup buttons;
    ViewGroup content;
    protected LayoutInflater inflater;
    String pageName;
    TextView title;
    protected boolean vertical;

    private class ClickListener implements View.OnClickListener {
        View.OnClickListener l;

        public ClickListener(View.OnClickListener onClickListener) {
            this.l = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            View.OnClickListener onClickListener = this.l;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            AlertDialog.this.dismiss();
        }
    }

    public AlertDialog(Context context) {
        super(context, R.style.CustomDialog);
        initViews(context);
    }

    public View addButton(int i10, int i11, View.OnClickListener onClickListener) {
        return addButton(getContext().getText(i10), i11, onClickListener);
    }

    protected int baseLayoutId() {
        return R.layout.dialog_alert_layout;
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return this.pageName;
    }

    @Override // android.app.Dialog
    public void setContentView(int i10) {
        clearView();
        this.inflater.inflate(i10, this.content);
    }

    public void setMessage(int i10) {
        setMessage(getContext().getText(i10));
    }

    public void setVerticalButtons() {
        this.vertical = true;
        ((LinearLayout) this.buttons).setOrientation(1);
        this.buttons.getLayoutParams().height = -2;
    }

    private void clearView() {
        this.content.removeAllViews();
    }

    public View addButton(CharSequence charSequence, int i10, View.OnClickListener onClickListener) {
        int i11;
        if (i10 == 2) {
            i11 = R.layout.dialog_alert_button_blue;
        } else if (i10 == 4) {
            i11 = R.layout.dialog_alert_button_green;
        } else if (i10 == 8) {
            i11 = R.layout.dialog_alert_button_red;
        } else if (i10 == 16) {
            i11 = R.layout.dialog_alert_button_red_corner;
        } else if (i10 == 32) {
            i11 = R.layout.dialog_alert_button_grey;
        } else if (i10 == 64) {
            i11 = R.layout.dialog_alert_button_transparent;
        } else if (i10 != 512) {
            i11 = i10 != 1024 ? R.layout.dialog_alert_button_gray : R.layout.dialog_alert_button_green_inside;
        } else {
            i11 = R.layout.dialog_alert_button_purple;
        }
        TextView textView = (TextView) this.inflater.inflate(i11, this.buttons, false);
        textView.setText(charSequence);
        if (this.vertical) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.weight = 0.0f;
        }
        if (this.buttons.getChildCount() > 0) {
            this.inflater.inflate(R.layout.dialog_alert_button_divider, this.buttons);
        }
        this.buttons.addView(textView);
        textView.setOnClickListener(new ClickListener(onClickListener));
        this.buttons.setVisibility(0);
        return textView;
    }

    public void clearButtons() {
        this.buttons.removeAllViews();
        this.buttons.setVisibility(8);
    }

    public String getEditText() {
        TextView textView = (TextView) findViewById(R.id.alert_dialog_edit);
        if (textView != null) {
            return textView.getText().toString();
        }
        return null;
    }

    public EditText getEditTextView() {
        View viewFindViewById = findViewById(R.id.alert_dialog_edit);
        if (viewFindViewById instanceof EditText) {
            return (EditText) viewFindViewById;
        }
        return null;
    }

    public String getTrimEditText() {
        TextView textView = (TextView) findViewById(R.id.alert_dialog_edit);
        if (textView != null) {
            return textView.getText().toString().trim().replace("\n", " ");
        }
        return null;
    }

    public EditText setEditText() {
        int i10 = R.id.alert_dialog_edit;
        EditText editText = (EditText) findViewById(i10);
        if (editText != null) {
            return editText;
        }
        setContentView(R.layout.dialog_alert_edit);
        return (EditText) findViewById(i10);
    }

    public EditText setEditTextBlackCursor() {
        int i10 = R.id.alert_dialog_edit;
        EditText editText = (EditText) findViewById(i10);
        if (editText != null) {
            return editText;
        }
        setContentView(R.layout.dialog_alert_edit_black_cursor);
        return (EditText) findViewById(i10);
    }

    public void setMessage(CharSequence charSequence) {
        int i10 = R.id.alert_dialog_message;
        TextView textView = (TextView) findViewById(i10);
        if (textView == null) {
            setContentView(R.layout.dialog_alert_message);
            textView = (TextView) findViewById(i10);
        }
        textView.setText(charSequence);
    }

    public void setTitleColor(int i10) {
        this.title.setTextColor(i10);
    }

    public AlertDialog(NVContext nVContext, String str) {
        super(nVContext, R.style.CustomDialog);
        this.pageName = str;
        initViews(nVContext.getContext());
    }

    private void initViews(Context context) {
        this.inflater = LayoutInflater.from(context);
        super.setContentView(baseLayoutId());
        this.title = (TextView) findViewById(R.id.alert_dialog_title);
        this.content = (ViewGroup) findViewById(R.id.alert_dialog_content);
        this.buttons = (ViewGroup) findViewById(R.id.alert_dialog_buttons);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        clearView();
        this.content.addView(view);
    }

    public void setEditTextMaxLength(int i10) {
        getEditTextView().setFilters(new InputFilter[]{new InputFilter.LengthFilter(i10)});
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.title.setVisibility(8);
        } else {
            this.title.setVisibility(0);
            this.title.setText(charSequence);
        }
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        clearView();
        this.content.addView(view, layoutParams);
    }
}
