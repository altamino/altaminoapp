package com.narvii.drawer;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class DrawerSearchButton extends ImageView {
    public DrawerSearchButton(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
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
