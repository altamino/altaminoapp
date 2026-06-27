package com.narvii.drawer;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes2.dex */
public class DrawerSearchButton extends ImageView {
    public DrawerSearchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        setAlpha(z ? 0.5f : 1.0f);
    }
}
