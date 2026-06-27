package com.narvii.util.text;

import android.text.TextPaint;

/* loaded from: classes3.dex */
public abstract class LinkTouchSpan extends TouchableSpan {
    private int mPressedColor;
    private boolean mPressedColorSet;

    public LinkTouchSpan() {
    }

    public LinkTouchSpan(int i) {
        this.mPressedColorSet = true;
        this.mPressedColor = i;
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.bgColor = isPressed() ? this.mPressedColorSet ? this.mPressedColor : -3355444 : 0;
    }
}
