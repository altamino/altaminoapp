package com.narvii.modulization.page;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.support.v4.content.ContextCompat;

/* loaded from: classes3.dex */
public class PageItem {
    public int backgroundColorId;
    public int iconDrawableId;
    public int nameId;

    public PageItem() {
    }

    public PageItem(int i, int i2, int i3) {
        this.nameId = i;
        this.backgroundColorId = i2;
        this.iconDrawableId = i3;
    }

    public String getName(Context context) {
        int i = this.nameId;
        return i == 0 ? "" : context.getString(i);
    }

    public int getIconColor(Context context) {
        return ContextCompat.getColor(context, this.backgroundColorId);
    }

    public Drawable getIconBackgroundDrawable(Context context, int i) {
        if (i == 0) {
            i = getIconColor(context);
        }
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[2] = fArr[2] * 0.75f;
        int iHSVToColor = Color.HSVToColor(fArr);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(i);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new OvalShape());
        shapeDrawable2.getPaint().setColor(iHSVToColor);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, shapeDrawable2);
        stateListDrawable.addState(new int[0], shapeDrawable);
        return stateListDrawable;
    }

    public Drawable getIconDrawable(Context context) {
        return ContextCompat.getDrawable(context, this.iconDrawableId);
    }
}
