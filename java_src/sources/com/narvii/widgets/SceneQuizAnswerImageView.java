package com.narvii.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public class SceneQuizAnswerImageView extends NVImageView {
    int size;

    public SceneQuizAnswerImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.size = (int) ((((Utils.getScreenWidth(getContext()) * 0.8f) - getResources().getDimensionPixelOffset(R.dimen.scene_answer_item_margin)) - (getResources().getDimensionPixelSize(R.dimen.scene_answer_item_padding_h) * 4)) / 2.0f);
    }

    @Override // com.narvii.widget.NVImageView
    protected int getImageRequestHeight(int i10) {
        int i11 = this.size;
        return i11 != 0 ? i11 : super.getImageRequestHeight(i10);
    }

    @Override // com.narvii.widget.NVImageView
    protected int getImageRequestWidth(int i10) {
        int i11 = this.size;
        return i11 != 0 ? i11 : super.getImageRequestWidth(i10);
    }

    @Override // com.narvii.widget.NVImageView
    protected String getRequestUrl(Media media, boolean z6, int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return null;
        }
        return super.getRequestUrl(media, z6, i10, i11);
    }

    public SceneQuizAnswerImageView(Context context) {
        this(context, null);
    }
}
