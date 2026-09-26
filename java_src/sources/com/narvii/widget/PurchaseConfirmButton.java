package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes.dex */
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

    public PurchaseConfirmButton(@NonNull Context context) {
        this(context, null);
    }

    public boolean isSending() {
        return this.isSending;
    }

    public void setSubmitListener(SubmitConfirmListener submitConfirmListener) {
        this.listener = submitConfirmListener;
    }

    public PurchaseConfirmButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SubmitConfirmListener submitConfirmListener;
        if (this.isSending || (submitConfirmListener = this.listener) == null) {
            return;
        }
        submitConfirmListener.doSubmit();
    }

    public void setConfirmText(String str) {
        this.confirmText = str;
        updateTextStatus();
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        this.container.setEnabled(z6);
        super.setEnabled(z6);
    }

    public void updateSendingStatus(boolean z6) {
        if (this.isSending == z6) {
            return;
        }
        this.isSending = z6;
        if (z6) {
            findViewById(R.id.confirm_button_loading).startAnimation(this.animation);
        } else {
            findViewById(R.id.confirm_button_loading).clearAnimation();
        }
        updateTextStatus();
    }

    public PurchaseConfirmButton(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10);
        View.inflate(context, R.layout.purchase_confirm_button, this);
        setOnClickListener(this);
        View viewFindViewById = findViewById(R.id.confirm_button_container);
        this.container = viewFindViewById;
        this.coinView = findViewById(R.id.confirm_button_coin);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        this.animation = rotateAnimation;
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setDuration(1000L);
        viewFindViewById.setOnClickListener(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.PurchaseConfirmButton, i10, 0);
        this.confirmText = typedArrayObtainStyledAttributes.getString(1);
        this.confirmingText = typedArrayObtainStyledAttributes.getString(2);
        this.showCoinIcon = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        updateTextStatus();
    }

    public void updateTextStatus() {
        int i10;
        View viewFindViewById = findViewById(R.id.confirm_button_loading);
        int i11 = 0;
        if (this.isSending) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        viewFindViewById.setVisibility(i10);
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
        View view = this.coinView;
        if (!this.showCoinIcon) {
            i11 = 8;
        }
        view.setVisibility(i11);
        if (!TextUtils.isEmpty(this.confirmText)) {
            textView.setText(this.confirmText);
        } else {
            textView.setText(R.string.confirm);
        }
    }
}
