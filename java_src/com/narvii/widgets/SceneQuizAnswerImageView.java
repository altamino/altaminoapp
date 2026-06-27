package com.narvii.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class SceneQuizAnswerImageView extends NVImageView {
    int size;

    public SceneQuizAnswerImageView(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.scene_answer_item_padding_h);
        this.size = (int) ((((Utils.getScreenWidth(getContext()) * 0.8f) - getResources().getDimensionPixelOffset(R.dimen.scene_answer_item_margin)) - (dimensionPixelSize * 4)) / 2.0f);
    }

    public SceneQuizAnswerImageView(Context context) {
        this(context, null);
    }

    @Override // com.narvii.widget.NVImageView
    protected int getImageRequestWidth(int i) {
        int i2 = this.size;
        return i2 != 0 ? i2 : super.getImageRequestWidth(i);
    }

    @Override // com.narvii.widget.NVImageView
    protected int getImageRequestHeight(int i) {
        int i2 = this.size;
        return i2 != 0 ? i2 : super.getImageRequestHeight(i);
    }

    @Override // com.narvii.widget.NVImageView
    protected String getRequestUrl(Media media, boolean z, int i, int i2) {
        if (i == 0 || i2 == 0) {
            return null;
        }
        return super.getRequestUrl(media, z, i, i2);
    }
}
