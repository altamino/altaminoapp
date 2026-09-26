package com.narvii.chat;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import com.narvii.amino.master.R;
import com.narvii.widget.FlexSizeImageView;

/* JADX INFO: loaded from: classes5.dex */
public class ChatFlexSizeImageView extends FlexSizeImageView {
    @Override // com.narvii.widget.FlexSizeImageView, com.narvii.widget.FlexSizeImageViewDelegate.IFlexSizeCallback
    public void adjustSize(int[] iArr) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.chat_bubble_max_img_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.chat_bubble_max_img_height);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.chat_bubble_min_img_width);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.chat_bubble_min_img_height);
        if (i10 < dimensionPixelSize3 || i11 < dimensionPixelSize4) {
            float f = i10;
            float f6 = i11;
            float fMax = Math.max((dimensionPixelSize3 * 1.0f) / f, (dimensionPixelSize4 * 1.0f) / f6);
            if (fMax != 1.0f) {
                i10 = (int) ((f * fMax) + 0.5f);
                i11 = (int) ((fMax * f6) + 0.5f);
            }
        }
        if (i10 > dimensionPixelSize || i11 > dimensionPixelSize2) {
            float f7 = i10;
            float f10 = i11;
            float fMin = Math.min((dimensionPixelSize * 1.0f) / f7, (dimensionPixelSize2 * 1.0f) / f10);
            if (fMin != 1.0f) {
                i10 = (int) ((f7 * fMin) + 0.5f);
                i11 = (int) ((fMin * f10) + 0.5f);
            }
        }
        int dimensionPixelSize5 = i10 - (resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_h) * 2);
        int dimensionPixelSize6 = i11 - (resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_v) * 2);
        if (dimensionPixelSize5 < 0) {
            dimensionPixelSize5 = 0;
        }
        if (dimensionPixelSize6 < 0) {
            dimensionPixelSize6 = 0;
        }
        iArr[0] = dimensionPixelSize5;
        iArr[1] = dimensionPixelSize6;
    }

    public ChatFlexSizeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
