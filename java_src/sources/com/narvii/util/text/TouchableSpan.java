package com.narvii.util.text;

import android.text.style.ClickableSpan;

/* JADX INFO: loaded from: classes9.dex */
public abstract class TouchableSpan extends ClickableSpan {
    private boolean pressed;

    public boolean isPressed() {
        return this.pressed;
    }

    public void setPressed(boolean z6) {
        this.pressed = z6;
    }
}
