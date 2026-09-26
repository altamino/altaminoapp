package com.narvii.modulization.entry;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import androidx.core.content.ContextCompat;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class EntryItem {
    public int backgroundColorId;
    public int descriptionTextId;
    public int iconDrawableId;
    public int nameId;

    public EntryItem() {
    }

    public Drawable getIconBackgroundDrawable(Context context) {
        return getIconBackgroundDrawable(context, getIconColor(context));
    }

    public int getNameId() {
        return this.nameId;
    }

    public EntryItem(int i10, int i11, int i12, int i13) {
        this.nameId = i10;
        this.backgroundColorId = i11;
        this.iconDrawableId = i12;
        this.descriptionTextId = i13;
    }

    public Drawable getIconBackgroundDrawable(Context context, int i10) {
        if (Utils.isEqualsNotNull(Integer.valueOf(R.string.compose_draft), Integer.valueOf(this.nameId))) {
            return ContextCompat.getDrawable(context, R.drawable.selector_draft_background);
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
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, shapeDrawable2);
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
