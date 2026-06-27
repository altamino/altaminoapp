package com.narvii.sharedfolder;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.SparseArray;
import com.narvii.model.SharedAlbum;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class SharedPhotoColorHelper {
    public final float[] radiusArray;
    public final float[] rtlRadiusArray;
    public static final int[] nickNameColors = {-16722209, -16608001, -8978177, -5897985, -3145496, -176013, -22784, -16052, -399360, -10627328, -16337841, -16719998};
    public static final int[] albumTagColors = {-16608001, -8978177, -5897985, -3145496, -176013, -22784, -16719998};
    public static SparseArray<Drawable> sparseArray = new SparseArray<>();

    public SharedPhotoColorHelper(Context context) {
        float fDpToPx = (int) Utils.dpToPx(context, 15.0f);
        this.radiusArray = new float[]{fDpToPx, fDpToPx, 0.0f, 0.0f, 0.0f, 0.0f, fDpToPx, fDpToPx};
        this.rtlRadiusArray = new float[]{0.0f, 0.0f, fDpToPx, fDpToPx, fDpToPx, fDpToPx, 0.0f, 0.0f};
    }

    private int getRandomIndex(String str, int[] iArr) {
        if (str == null) {
            return 0;
        }
        return Math.abs(str.hashCode() % iArr.length);
    }

    public int getNickNameColor(String str) {
        int[] iArr = nickNameColors;
        return iArr[getRandomIndex(str, iArr)];
    }

    public Drawable getTagBackground(Context context, SharedAlbum sharedAlbum) {
        return getTagBackground(context, albumTagColors[getRandomIndex(sharedAlbum == null ? null : sharedAlbum.getTitle(context), albumTagColors)]);
    }

    public Drawable getTagBackground(Context context, int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[2] = fArr[2] * 0.75f;
        int iHSVToColor = Color.HSVToColor(fArr);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        if (Utils.isRtl()) {
            gradientDrawable.setCornerRadii(this.rtlRadiusArray);
        } else {
            gradientDrawable.setCornerRadii(this.radiusArray);
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(iHSVToColor);
        if (Utils.isRtl()) {
            gradientDrawable2.setCornerRadii(this.rtlRadiusArray);
        } else {
            gradientDrawable2.setCornerRadii(this.radiusArray);
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }
}
