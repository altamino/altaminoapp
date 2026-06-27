package com.narvii.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.EditText;

/* loaded from: classes3.dex */
public class AutoFocusDisabledEditText extends EditText {
    @Override // android.view.View
    public boolean requestRectangleOnScreen(Rect rect, boolean z) {
        return false;
    }

    public AutoFocusDisabledEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
