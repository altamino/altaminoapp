package com.narvii.user.title;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.support.v4.content.ContextCompat;
import com.narvii.amino.mastes.R;
import com.narvii.model.api.UserTitle;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class UserTitleColorHelper {
    public static final int[] titleColors = {-16722209, -16608001, -8978177, -5897985, -3145496, -176013, -22784, -16052, -10627328, -16337841, -16719998};
    private Context context;
    public GradientDrawable drawable;

    public UserTitleColorHelper(Context context) {
        this.context = context;
    }

    public int getTitleColor(UserTitle userTitle) {
        int i;
        if (userTitle == null || (i = userTitle.color) == 0) {
            return titleColors[getRandomIndex(userTitle == null ? null : userTitle.title, titleColors)];
        }
        return i;
    }

    public GradientDrawable getBackgroundDrawable(UserTitle userTitle) {
        GradientDrawable gradientDrawable = (GradientDrawable) ContextCompat.getDrawable(this.context, R.drawable.user_title_bg).mutate();
        gradientDrawable.setCornerRadius(this.context.getResources().getDimensionPixelSize(R.dimen.user_title_radius));
        gradientDrawable.setColor(getTitleColor(userTitle));
        return gradientDrawable;
    }

    public Drawable getBackgroundStateDrawable(UserTitle userTitle) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        GradientDrawable gradientDrawable = (GradientDrawable) ContextCompat.getDrawable(this.context, R.drawable.user_title_bg).mutate();
        gradientDrawable.setCornerRadius(this.context.getResources().getDimensionPixelSize(R.dimen.user_title_radius));
        gradientDrawable.setColor(getTitleColor(userTitle));
        GradientDrawable gradientDrawable2 = (GradientDrawable) ContextCompat.getDrawable(this.context, R.drawable.user_title_bg).mutate();
        gradientDrawable2.setCornerRadius(this.context.getResources().getDimensionPixelSize(R.dimen.user_title_radius));
        gradientDrawable2.setColor(Utils.getColor(getTitleColor(userTitle), 0.5f));
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(new int[]{android.R.attr.state_selected}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }

    private int getRandomIndex(String str, int[] iArr) {
        if (str == null) {
            return 0;
        }
        return Math.abs(str.hashCode() % iArr.length);
    }
}
