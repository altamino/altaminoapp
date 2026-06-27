package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class PressedFrameLayout extends FrameLayout {
    public PressedFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        setAlpha(z ? 0.8f : 1.0f);
    }
}
