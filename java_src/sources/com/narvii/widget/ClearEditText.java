package com.narvii.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import com.narvii.lib.R;
import com.narvii.util.FontAwesomeDrawable;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class ClearEditText extends EditText implements View.OnFocusChangeListener, TextWatcher {
    private View.OnFocusChangeListener focusChangeListener;
    private Drawable mClearDrawable;

    public ClearEditText(Context context) {
        this(context, null);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z6) {
        if (z6) {
            setClearIconVisible(getText().length() > 0);
        } else {
            setClearIconVisible(false);
        }
        View.OnFocusChangeListener onFocusChangeListener = this.focusChangeListener;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view, z6);
        }
    }

    public void setFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.focusChangeListener = onFocusChangeListener;
    }

    public ClearEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public void setClearIconColor(int i10) {
        Drawable drawable = this.mClearDrawable;
        if (drawable instanceof FontAwesomeDrawable) {
            ((FontAwesomeDrawable) drawable).setColor(i10);
        }
    }

    protected void setClearIconVisible(boolean z6) {
        Drawable drawable = z6 ? this.mClearDrawable : null;
        Drawable drawable2 = Utils.isRtl() ? drawable : getCompoundDrawables()[0];
        Drawable drawable3 = getCompoundDrawables()[1];
        if (Utils.isRtl()) {
            drawable = getCompoundDrawables()[2];
        }
        setCompoundDrawables(drawable2, drawable3, drawable, getCompoundDrawables()[3]);
    }

    private void init() {
        Drawable drawable = getCompoundDrawables()[2];
        this.mClearDrawable = drawable;
        if (drawable == null) {
            FontAwesomeDrawable fontAwesomeDrawable = new FontAwesomeDrawable(getContext(), R.string.ion_android_close);
            fontAwesomeDrawable.setFocalArea(0.85f);
            fontAwesomeDrawable.setColor(getCurrentHintTextColor());
            this.mClearDrawable = fontAwesomeDrawable;
        }
        Drawable drawable2 = this.mClearDrawable;
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.mClearDrawable.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        boolean z6;
        if (hasFocus() && charSequence.length() > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        setClearIconVisible(z6);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Drawable drawable;
        if (Utils.isRtl()) {
            drawable = getCompoundDrawables()[0];
        } else {
            drawable = getCompoundDrawables()[2];
        }
        if (drawable != null && motionEvent.getAction() == 1 && (!Utils.isRtl() ? !(motionEvent.getX() <= (getWidth() - getPaddingRight()) - this.mClearDrawable.getIntrinsicWidth() || motionEvent.getX() >= getWidth() - getPaddingRight()) : !(motionEvent.getX() >= getPaddingLeft() + this.mClearDrawable.getIntrinsicWidth() || motionEvent.getX() <= getPaddingLeft()))) {
            setText("");
            setError(null);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z6) {
        boolean z10;
        super.setEnabled(z6);
        if (getText().length() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        setClearIconVisible(z10);
    }
}
