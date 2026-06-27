package com.narvii.util.text;

import android.text.style.ClickableSpan;

/* loaded from: classes3.dex */
public abstract class TouchableSpan extends ClickableSpan {
    private boolean pressed;

    public void setPressed(boolean z) {
        this.pressed = z;
    }

    public boolean isPressed() {
        return this.pressed;
    }
}
