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

/* loaded from: classes.dex */
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

    public AlertDialog(Context context) {
        super(context, R.style.CustomDialog);
        initViews(context);
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

    public void setVerticalButtons() {
        this.vertical = true;
        ((LinearLayout) this.buttons).setOrientation(1);
        this.buttons.getLayoutParams().height = -2;
    }

    protected int baseLayoutId() {
        return R.layout.dialog_alert_layout;
    }

    private void clearView() {
        this.content.removeAllViews();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        clearView();
        this.inflater.inflate(i, this.content);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        clearView();
        this.content.addView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        clearView();
        this.content.addView(view, layoutParams);
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

    public void setTitleColor(int i) {
        this.title.setTextColor(i);
    }

    public void clearButtons() {
        this.buttons.removeAllViews();
        this.buttons.setVisibility(8);
    }

    public View addButton(int i, int i2, View.OnClickListener onClickListener) {
        return addButton(getContext().getText(i), i2, onClickListener);
    }

    public View addButton(CharSequence charSequence, int i, View.OnClickListener onClickListener) {
        int i2;
        if (i == 2) {
            i2 = R.layout.dialog_alert_button_blue;
        } else if (i == 4) {
            i2 = R.layout.dialog_alert_button_green;
        } else if (i == 8) {
            i2 = R.layout.dialog_alert_button_red;
        } else if (i == 16) {
            i2 = R.layout.dialog_alert_button_red_corner;
        } else if (i == 32) {
            i2 = R.layout.dialog_alert_button_grey;
        } else if (i == 64) {
            i2 = R.layout.dialog_alert_button_transparent;
        } else if (i == 512) {
            i2 = R.layout.dialog_alert_button_purple;
        } else if (i == 1024) {
            i2 = R.layout.dialog_alert_button_green_inside;
        } else {
            i2 = R.layout.dialog_alert_button_gray;
        }
        TextView textView = (TextView) this.inflater.inflate(i2, this.buttons, false);
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

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return this.pageName;
    }

    /* loaded from: classes3.dex */
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

    public void setMessage(int i) {
        setMessage(getContext().getText(i));
    }

    public void setMessage(CharSequence charSequence) {
        TextView textView = (TextView) findViewById(R.id.alert_dialog_message);
        if (textView == null) {
            setContentView(R.layout.dialog_alert_message);
            textView = (TextView) findViewById(R.id.alert_dialog_message);
        }
        textView.setText(charSequence);
    }

    public EditText setEditText() {
        EditText editText = (EditText) findViewById(R.id.alert_dialog_edit);
        if (editText != null) {
            return editText;
        }
        setContentView(R.layout.dialog_alert_edit);
        return (EditText) findViewById(R.id.alert_dialog_edit);
    }

    public EditText setEditTextBlackCursor() {
        EditText editText = (EditText) findViewById(R.id.alert_dialog_edit);
        if (editText != null) {
            return editText;
        }
        setContentView(R.layout.dialog_alert_edit_black_cursor);
        return (EditText) findViewById(R.id.alert_dialog_edit);
    }

    public EditText getEditTextView() {
        View viewFindViewById = findViewById(R.id.alert_dialog_edit);
        if (viewFindViewById instanceof EditText) {
            return (EditText) viewFindViewById;
        }
        return null;
    }

    public String getEditText() {
        TextView textView = (TextView) findViewById(R.id.alert_dialog_edit);
        if (textView != null) {
            return textView.getText().toString();
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

    public void setEditTextMaxLength(int i) {
        getEditTextView().setFilters(new InputFilter[]{new InputFilter.LengthFilter(i)});
    }
}
