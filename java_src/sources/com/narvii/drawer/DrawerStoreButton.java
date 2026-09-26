package com.narvii.drawer;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public class DrawerStoreButton extends NVImageView {
    public DrawerStoreButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
        setImageUrl("assets://drawer_store.gif");
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        float f;
        super.setPressed(z6);
        if (z6) {
            f = 0.5f;
        } else {
            f = 1.0f;
        }
        setAlpha(f);
    }
}
