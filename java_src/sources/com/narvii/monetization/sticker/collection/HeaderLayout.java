package com.narvii.monetization.sticker.collection;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public class HeaderLayout extends FrameLayout {
    public final int actionbarSize;
    NVImageView banner;
    RealtimeBlurView blurView;
    int finalIconSize;
    View gradient;
    int height1;
    View iconBg;
    StickerImageView imageView;
    int initIconSize;
    public final int statusbarSize;
    StickerCollection stickerCollection;

    public void setHeight1(int i10) {
        this.height1 = i10;
    }

    public void setStickerCollection(StickerCollection stickerCollection) {
        if (this.stickerCollection == stickerCollection) {
            return;
        }
        this.stickerCollection = stickerCollection;
        if (stickerCollection != null) {
            this.imageView.setStickerImageUrl(stickerCollection.id(), stickerCollection.icon);
            this.banner.setImageUrl(stickerCollection.getBannerUrl());
        }
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initIconSize = getContext().getResources().getDimensionPixelSize(R.dimen.sticker_collection_detail_icon_init_size);
        this.finalIconSize = (int) Utils.dpToPx(getContext(), 30.0f);
        this.statusbarSize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        this.actionbarSize = ((NVActivity) getContext()).getActionBarOverlaySize();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.iconBg = findViewById(R.id.icon_bg);
        this.imageView = (StickerImageView) findViewById(R.id.collection_icon);
        this.banner = (NVImageView) findViewById(R.id.banner);
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur);
        this.gradient = findViewById(R.id.gradient);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int i14 = this.statusbarSize + this.actionbarSize;
        float height = 1.0f - (((getHeight() - i14) * 1.0f) / (this.height1 - i14));
        this.blurView.setAlpha(height);
        this.gradient.setAlpha(1.0f - height);
        int i15 = this.initIconSize;
        int i16 = this.finalIconSize;
        float f = i15 - ((i15 - i16) * height);
        float f6 = this.height1 - i15;
        float fMin = Math.min(getHeight() - f, (int) (f6 - ((f6 - (this.statusbarSize + ((this.actionbarSize - i16) / 2))) * height)));
        float width = (int) ((getWidth() - f) / 2.0f);
        Log.d("margin-" + fMin);
        int i17 = (int) ((f / 2.0f) + fMin);
        this.banner.layout(0, 0, getWidth(), Math.max(i14, i17));
        this.blurView.layout(0, 0, getWidth(), Math.max(i14, i17));
        this.gradient.layout(0, 0, getWidth(), Math.max(i14, i17));
        int i18 = (int) width;
        int i19 = (int) fMin;
        int i20 = (int) (width + f);
        int i21 = (int) (fMin + f);
        this.iconBg.layout(i18, i19, i20, i21);
        int iMin = (int) Math.min(Utils.dpToPx(getContext(), 3.0f), (int) ((f * 3.0f) / 80.0f));
        this.imageView.layout(i18 + iMin, i19 + iMin, i20 - iMin, i21 - iMin);
    }
}
