package com.narvii.monetization.sticker.collection;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
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

    public void setHeight1(int i) {
        this.height1 = i;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = this.statusbarSize + this.actionbarSize;
        float height = 1.0f - (((getHeight() - i5) * 1.0f) / (this.height1 - i5));
        this.blurView.setAlpha(height);
        this.gradient.setAlpha(1.0f - height);
        int i6 = this.initIconSize;
        int i7 = this.finalIconSize;
        float f = i6 - ((i6 - i7) * height);
        float f2 = this.height1 - i6;
        float fMin = Math.min(getHeight() - f, (int) (f2 - ((f2 - (this.statusbarSize + ((this.actionbarSize - i7) / 2))) * height)));
        float width = (int) ((getWidth() - f) / 2.0f);
        Log.d("margin-" + fMin);
        int i8 = (int) ((f / 2.0f) + fMin);
        this.banner.layout(0, 0, getWidth(), Math.max(i5, i8));
        this.blurView.layout(0, 0, getWidth(), Math.max(i5, i8));
        this.gradient.layout(0, 0, getWidth(), Math.max(i5, i8));
        int i9 = (int) width;
        int i10 = (int) fMin;
        int i11 = (int) (width + f);
        int i12 = (int) (fMin + f);
        this.iconBg.layout(i9, i10, i11, i12);
        int iMin = (int) Math.min(Utils.dpToPx(getContext(), 3.0f), (int) ((f * 3.0f) / 80.0f));
        this.imageView.layout(i9 + iMin, i10 + iMin, i11 - iMin, i12 - iMin);
    }
}
