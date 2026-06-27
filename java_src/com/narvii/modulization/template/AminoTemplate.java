package com.narvii.modulization.template;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.support.v4.content.ContextCompat;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class AminoTemplate {
    public String color;
    public String description;
    public ArrayList<String> features;
    public String icon;
    public int id;
    public String subtitle;
    public String title;

    public Drawable getBackgroundDrawable(Context context) {
        try {
            int color = StringUtils.parseColor(this.color);
            GradientDrawable gradientDrawable = new GradientDrawable();
            float dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.template_picker_radius);
            gradientDrawable.setCornerRadius(dimensionPixelSize);
            gradientDrawable.setColor(color);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setCornerRadius(dimensionPixelSize);
            gradientDrawable2.setColor(Utils.darkColor(color));
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[0], gradientDrawable);
            return stateListDrawable;
        } catch (Exception unused) {
            return null;
        }
    }

    public Drawable getIconDrawable(Context context) {
        if (this.icon == null) {
            return null;
        }
        int identifier = context.getResources().getIdentifier(this.icon.replace(".png", ""), "drawable", context.getPackageName());
        if (identifier == 0) {
            Log.e("could not find icon for this template");
            return null;
        }
        return ContextCompat.getDrawable(context, identifier);
    }
}
