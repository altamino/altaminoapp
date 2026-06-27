package com.narvii.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;

/* loaded from: classes3.dex */
public class FullFocusEditText extends EditText {
    private Rect mRect;

    public FullFocusEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRect = new Rect();
    }

    @Override // android.view.View
    public boolean requestRectangleOnScreen(Rect rect, boolean z) {
        Object parent = getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            view.getDrawingRect(this.mRect);
            return view.requestRectangleOnScreen(this.mRect, z);
        }
        return super.requestRectangleOnScreen(rect, z);
    }
}
