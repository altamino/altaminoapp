package com.narvii.modulization.page;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes8.dex */
public class PageItem {
    public int backgroundColorId;
    public int iconDrawableId;
    public int nameId;

    public PageItem() {
    }

    public PageItem(int i10, int i11, int i12) {
        this.nameId = i10;
        this.backgroundColorId = i11;
        this.iconDrawableId = i12;
    }

    public Drawable getIconBackgroundDrawable(Context context, int i10) {
        if (i10 == 0) {
            i10 = getIconColor(context);
        }
        float[] fArr = new float[3];
        Color.colorToHSV(i10, fArr);
        fArr[2] = fArr[2] * 0.75f;
        int iHSVToColor = Color.HSVToColor(fArr);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(i10);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new OvalShape());
        shapeDrawable2.getPaint().setColor(iHSVToColor);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, shapeDrawable2);
        stateListDrawable.addState(new int[0], shapeDrawable);
        return stateListDrawable;
    }

    public int getIconColor(Context context) {
        return ContextCompat.getColor(context, this.backgroundColorId);
    }

    public Drawable getIconDrawable(Context context) {
        return ContextCompat.getDrawable(context, this.iconDrawableId);
    }

    public String getName(Context context) {
        int i10 = this.nameId;
        return i10 == 0 ? "" : context.getString(i10);
    }
}
