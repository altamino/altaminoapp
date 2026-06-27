package com.narvii.util.text;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import com.narvii.app.NVApplication;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class ActionBarButtonIcon extends Drawable {
    static int SIZE = NVApplication.instance().getResources().getDimensionPixelSize(R.dimen.actionbar_icon_size);
    static int COLOR = NVApplication.instance().getResources().getColor(R.color.actionbar_icon);

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.clipRect(getBounds());
        canvas.drawColor(-1);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return SIZE * 2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return SIZE;
    }
}
