package com.narvii.chat;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import com.narvii.amino.mastes.R;
import com.narvii.widget.FlexSizeImageView;

/* loaded from: classes2.dex */
public class ChatFlexSizeImageView extends FlexSizeImageView {
    public ChatFlexSizeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.widget.FlexSizeImageView, com.narvii.widget.FlexSizeImageViewDelegate.IFlexSizeCallback
    public void adjustSize(int[] iArr) throws Resources.NotFoundException {
        int i = iArr[0];
        int i2 = iArr[1];
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.chat_bubble_max_img_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.chat_bubble_max_img_height);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.chat_bubble_min_img_width);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.chat_bubble_min_img_height);
        if (i < dimensionPixelSize3 || i2 < dimensionPixelSize4) {
            float f = i;
            float f2 = i2;
            float fMax = Math.max((dimensionPixelSize3 * 1.0f) / f, (dimensionPixelSize4 * 1.0f) / f2);
            if (fMax != 1.0f) {
                i = (int) ((f * fMax) + 0.5f);
                i2 = (int) ((fMax * f2) + 0.5f);
            }
        }
        if (i > dimensionPixelSize || i2 > dimensionPixelSize2) {
            float f3 = i;
            float f4 = i2;
            float fMin = Math.min((dimensionPixelSize * 1.0f) / f3, (dimensionPixelSize2 * 1.0f) / f4);
            if (fMin != 1.0f) {
                i = (int) ((f3 * fMin) + 0.5f);
                i2 = (int) ((fMin * f4) + 0.5f);
            }
        }
        int dimensionPixelSize5 = i - (resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_h) * 2);
        int dimensionPixelSize6 = i2 - (resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_v) * 2);
        if (dimensionPixelSize5 < 0) {
            dimensionPixelSize5 = 0;
        }
        if (dimensionPixelSize6 < 0) {
            dimensionPixelSize6 = 0;
        }
        iArr[0] = dimensionPixelSize5;
        iArr[1] = dimensionPixelSize6;
    }
}
