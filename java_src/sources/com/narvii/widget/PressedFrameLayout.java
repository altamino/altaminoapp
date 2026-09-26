package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class PressedFrameLayout extends FrameLayout {
    public PressedFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        float f;
        super.setPressed(z6);
        if (z6) {
            f = 0.8f;
        } else {
            f = 1.0f;
        }
        setAlpha(f);
    }
}
