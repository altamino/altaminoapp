package com.narvii.widget;

import android.content.Context;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public class ACMAlertDialog extends NVDialog {
    public static final int STYLE_ACM = 1;
    public static final int STYLE_GRAY = 0;
    protected ViewGroup buttons;
    public ViewGroup content;
    protected LayoutInflater inflater;
    String pageName;
    protected TextView title;
    private boolean vertical;

    public class ClickListener implements View.OnClickListener {
        boolean dismiss;
        View.OnClickListener l;

        public ClickListener(View.OnClickListener onClickListener, boolean z6) {
            this.l = onClickListener;
            this.dismiss = z6;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.dismiss) {
                ACMAlertDialog.this.dismiss();
            }
            View.OnClickListener onClickListener = this.l;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    public ACMAlertDialog(Context context) {
        super(context, R.style.CustomDialog);
        initViews(context);
    }

    public View addButton(int i10, View.OnClickListener onClickListener) {
        return addButton(getContext().getText(i10), ContextCompat.getColor(getContext(), R.color.dialog_option_blue), onClickListener);
    }

    protected int getLayout() {
        return R.layout.dialog_alert_acm_layout;
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

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.title.setVisibility(8);
        } else {
            this.title.setVisibility(0);
            this.title.setText(charSequence);
        }
    }

    public void setVerticalButtons() {
        this.vertical = true;
        ((LinearLayout) this.buttons).setOrientation(1);
    }

    private void clearView() {
        this.content.removeAllViews();
    }

    public View addButton(int i10, View.OnClickListener onClickListener, int i11) {
        return addButton(getContext().getText(i10), i11, onClickListener);
    }

    public void hideMessage() {
        TextView textView = (TextView) findViewById(R.id.alert_dialog_message);
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        textView.setVisibility(8);
    }

    public void setDismissByClickOutside() {
        findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.widget.ACMAlertDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ACMAlertDialog.this.dismiss();
            }
        });
    }

    public void setMessage(CharSequence charSequence) {
        TextView textView = (TextView) findViewById(R.id.alert_dialog_message);
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        textView.setText(charSequence);
    }

    public ACMAlertDialog(NVContext nVContext, String str) {
        super(nVContext, R.style.CustomDialog);
        this.pageName = str;
        initViews(nVContext.getContext());
    }

    private void initViews(Context context) {
        this.inflater = LayoutInflater.from(context);
        super.setContentView(getLayout());
        this.title = (TextView) findViewById(R.id.alert_dialog_title);
        this.content = (ViewGroup) findViewById(R.id.alert_dialog_content);
        this.buttons = (ViewGroup) findViewById(R.id.alert_dialog_buttons);
    }

    public View addButton(CharSequence charSequence, int i10, View.OnClickListener onClickListener, boolean z6) {
        TextView textView = (TextView) this.inflater.inflate(R.layout.dialog_alert_button_acm, this.buttons, false);
        textView.setText(charSequence);
        textView.setTextColor(i10);
        if (this.vertical) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.weight = 0.0f;
            if (this.buttons.getChildCount() > 0) {
                this.inflater.inflate(R.layout.dialog_alert_acm_divider_h, this.buttons);
            }
        } else if (this.buttons.getChildCount() > 0) {
            this.inflater.inflate(R.layout.dialog_alert_acm_divider, this.buttons);
        }
        this.buttons.addView(textView);
        textView.setOnClickListener(new ClickListener(onClickListener, z6));
        if (this.vertical) {
            ViewGroup viewGroup = this.buttons;
            viewGroup.getChildAt(viewGroup.getChildCount() - 1).setBackgroundResource(R.drawable.button_alert_corner);
        } else {
            if (this.buttons.getChildCount() == 1) {
                this.buttons.getChildAt(0).setBackgroundResource(R.drawable.button_alert_corner);
            }
            if (this.buttons.getChildCount() == 3) {
                this.buttons.getChildAt(0).setBackgroundResource(R.drawable.button_alert_corner_left);
                this.buttons.getChildAt(2).setBackgroundResource(R.drawable.button_alert_corner_right);
            }
        }
        this.buttons.setVisibility(0);
        return textView;
    }

    public View addNagativeButton(int i10, View.OnClickListener onClickListener) {
        return addButton(getContext().getText(i10), -4473925, onClickListener);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
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

    public void setMessage(CharSequence charSequence, int i10) {
        TextView textView = (TextView) findViewById(R.id.alert_dialog_message);
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        textView.setText(charSequence);
        textView.setGravity(i10);
    }

    @Override // android.app.Dialog
    public void setTitle(int i10) {
        this.title.setVisibility(0);
        this.title.setText(i10);
    }

    public void setMessage(int i10, int i11) {
        setMessage(getContext().getText(i10), i11);
    }

    public View addButton(CharSequence charSequence, int i10, View.OnClickListener onClickListener) {
        return addButton(charSequence, i10, onClickListener, true);
    }
}
