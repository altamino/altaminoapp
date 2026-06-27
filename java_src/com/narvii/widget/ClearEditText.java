package com.narvii.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import com.narvii.lib.R;
import com.narvii.util.FontAwesomeDrawable;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class ClearEditText extends EditText implements View.OnFocusChangeListener, TextWatcher {
    private View.OnFocusChangeListener focusChangeListener;
    private Drawable mClearDrawable;

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public ClearEditText(Context context) {
        this(context, null);
    }

    public ClearEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public void setFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.focusChangeListener = onFocusChangeListener;
    }

    private void init() {
        this.mClearDrawable = getCompoundDrawables()[2];
        if (this.mClearDrawable == null) {
            FontAwesomeDrawable fontAwesomeDrawable = new FontAwesomeDrawable(getContext(), R.string.ion_android_close);
            fontAwesomeDrawable.setFocalArea(0.85f);
            fontAwesomeDrawable.setColor(getCurrentHintTextColor());
            this.mClearDrawable = fontAwesomeDrawable;
        }
        Drawable drawable = this.mClearDrawable;
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.mClearDrawable.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setClearIconVisible(getText().length() > 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0071, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0074  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            boolean r0 = com.narvii.util.Utils.isRtl()
            r1 = 0
            if (r0 == 0) goto Le
            android.graphics.drawable.Drawable[] r0 = r5.getCompoundDrawables()
            r0 = r0[r1]
            goto L15
        Le:
            android.graphics.drawable.Drawable[] r0 = r5.getCompoundDrawables()
            r2 = 2
            r0 = r0[r2]
        L15:
            if (r0 == 0) goto L7d
            int r0 = r6.getAction()
            r2 = 1
            if (r0 != r2) goto L7d
            boolean r0 = com.narvii.util.Utils.isRtl()
            if (r0 == 0) goto L46
            float r0 = r6.getX()
            int r3 = r5.getPaddingLeft()
            android.graphics.drawable.Drawable r4 = r5.mClearDrawable
            int r4 = r4.getIntrinsicWidth()
            int r3 = r3 + r4
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L72
            float r0 = r6.getX()
            int r3 = r5.getPaddingLeft()
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L72
            goto L71
        L46:
            float r0 = r6.getX()
            int r3 = r5.getWidth()
            int r4 = r5.getPaddingRight()
            int r3 = r3 - r4
            android.graphics.drawable.Drawable r4 = r5.mClearDrawable
            int r4 = r4.getIntrinsicWidth()
            int r3 = r3 - r4
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L72
            float r0 = r6.getX()
            int r3 = r5.getWidth()
            int r4 = r5.getPaddingRight()
            int r3 = r3 - r4
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L72
        L71:
            r1 = 1
        L72:
            if (r1 == 0) goto L7d
            java.lang.String r0 = ""
            r5.setText(r0)
            r0 = 0
            r5.setError(r0)
        L7d:
            boolean r6 = super.onTouchEvent(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.ClearEditText.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setClearIconColor(int i) {
        Drawable drawable = this.mClearDrawable;
        if (drawable instanceof FontAwesomeDrawable) {
            ((FontAwesomeDrawable) drawable).setColor(i);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            setClearIconVisible(getText().length() > 0);
        } else {
            setClearIconVisible(false);
        }
        View.OnFocusChangeListener onFocusChangeListener = this.focusChangeListener;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view, z);
        }
    }

    protected void setClearIconVisible(boolean z) {
        Drawable drawable = z ? this.mClearDrawable : null;
        Drawable drawable2 = Utils.isRtl() ? drawable : getCompoundDrawables()[0];
        Drawable drawable3 = getCompoundDrawables()[1];
        if (Utils.isRtl()) {
            drawable = getCompoundDrawables()[2];
        }
        setCompoundDrawables(drawable2, drawable3, drawable, getCompoundDrawables()[3]);
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        setClearIconVisible(hasFocus() && charSequence.length() > 0);
    }
}
