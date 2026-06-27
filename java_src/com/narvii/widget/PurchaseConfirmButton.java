package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;

/* loaded from: classes3.dex */
public class PurchaseConfirmButton extends FrameLayout implements View.OnClickListener {
    private final RotateAnimation animation;
    private final View coinView;
    private String confirmText;
    private String confirmingText;
    private final View container;
    private boolean isSending;
    private SubmitConfirmListener listener;
    private boolean showCoinIcon;

    public interface SubmitConfirmListener {
        void doSubmit();
    }

    public PurchaseConfirmButton(Context context) {
        this(context, null);
    }

    public PurchaseConfirmButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PurchaseConfirmButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        FrameLayout.inflate(context, R.layout.purchase_confirm_button, this);
        setOnClickListener(this);
        this.container = findViewById(R.id.confirm_button_container);
        this.coinView = findViewById(R.id.confirm_button_coin);
        this.animation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        this.animation.setRepeatCount(-1);
        this.animation.setDuration(1000L);
        this.container.setOnClickListener(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.PurchaseConfirmButton, i, 0);
        this.confirmText = typedArrayObtainStyledAttributes.getString(1);
        this.confirmingText = typedArrayObtainStyledAttributes.getString(2);
        this.showCoinIcon = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        updateTextStatus();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SubmitConfirmListener submitConfirmListener;
        if (this.isSending || (submitConfirmListener = this.listener) == null) {
            return;
        }
        submitConfirmListener.doSubmit();
    }

    public void setSubmitListener(SubmitConfirmListener submitConfirmListener) {
        this.listener = submitConfirmListener;
    }

    public void updateSendingStatus(boolean z) {
        if (this.isSending == z) {
            return;
        }
        this.isSending = z;
        if (z) {
            findViewById(R.id.confirm_button_loading).startAnimation(this.animation);
        } else {
            findViewById(R.id.confirm_button_loading).clearAnimation();
        }
        updateTextStatus();
    }

    public void updateTextStatus() {
        findViewById(R.id.confirm_button_loading).setVisibility(this.isSending ? 0 : 8);
        TextView textView = (TextView) findViewById(R.id.confirm_button_text);
        if (this.isSending) {
            this.coinView.setVisibility(8);
            if (!TextUtils.isEmpty(this.confirmingText)) {
                textView.setText(this.confirmingText);
                return;
            } else {
                textView.setText(R.string.tipping);
                return;
            }
        }
        this.coinView.setVisibility(this.showCoinIcon ? 0 : 8);
        if (!TextUtils.isEmpty(this.confirmText)) {
            textView.setText(this.confirmText);
        } else {
            textView.setText(R.string.confirm);
        }
    }

    public void setConfirmText(String str) {
        this.confirmText = str;
        updateTextStatus();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        this.container.setEnabled(z);
        super.setEnabled(z);
    }

    public boolean isSending() {
        return this.isSending;
    }
}
