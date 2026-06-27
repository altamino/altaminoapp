package com.narvii.drawer;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class DrawerStoreButton extends NVImageView {
    public DrawerStoreButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
        setImageUrl("assets://drawer_store.gif");
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        setAlpha(z ? 0.5f : 1.0f);
    }
}
