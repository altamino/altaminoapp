package com.narvii.util.text;

import android.text.TextPaint;

/* JADX INFO: loaded from: classes8.dex */
public abstract class LinkTouchSpan extends TouchableSpan {
    private int mPressedColor;
    private boolean mPressedColorSet;

    public LinkTouchSpan() {
    }

    public LinkTouchSpan(int i10) {
        this.mPressedColorSet = true;
        this.mPressedColor = i10;
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        int i10;
        super.updateDrawState(textPaint);
        if (isPressed()) {
            if (this.mPressedColorSet) {
                i10 = this.mPressedColor;
            } else {
                i10 = -3355444;
            }
        } else {
            i10 = 0;
        }
        textPaint.bgColor = i10;
    }
}
