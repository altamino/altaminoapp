package com.narvii.monetization.bubble.detail;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.model.ChatBubble;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class HeaderLayout extends FrameLayout {
    public final int actionbarSize;
    private RealtimeBlurView blurView;
    private ChatBubble bubble;
    private int finalIconHeight;
    private int finalIconSize;
    private int height1;
    private NVImageView imgCover;
    private NVImageView imgPreview;
    private int initIconHeight;
    private int initIconSize;
    public final int statusbarSize;

    public HeaderLayout(Context context) {
        this(context, null);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.statusbarSize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        this.actionbarSize = ((NVActivity) getContext()).getActionBarOverlaySize();
        this.initIconSize = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_detail_icon_size);
        this.initIconHeight = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_detail_icon_height);
        this.finalIconSize = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_detail_icon_size_final);
        this.finalIconHeight = (int) (getContext().getResources().getDimensionPixelSize(R.dimen.bubble_detail_icon_size_final) * 0.869f);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.imgCover = (NVImageView) findViewById(R.id.bubble_cover);
        this.imgPreview = (NVImageView) findViewById(R.id.bubble_preview);
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur);
    }

    public void setHeight1(int i) {
        this.height1 = i;
    }

    public void setBubble(ChatBubble chatBubble) {
        this.bubble = chatBubble;
        this.imgCover.setImageUrl(chatBubble.getBannerUrl());
        boolean z = chatBubble.type == 2;
        int iDpToPx = z ? 0 : (int) Utils.dpToPx(getContext(), 2.0f);
        this.imgPreview.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        this.imgPreview.setBackgroundDrawable(z ? null : ContextCompat.getDrawable(getContext(), R.drawable.bubble_icon_stroke_bg));
        this.imgPreview.setImageUrl(chatBubble.getPreviewUrl());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = this.statusbarSize + this.actionbarSize;
        float height = 1.0f - (((getHeight() - i5) * 1.0f) / (this.height1 - i5));
        this.blurView.setAlpha(height);
        float f = this.initIconSize - ((r7 - this.finalIconSize) * height);
        int i6 = this.initIconHeight;
        int i7 = this.finalIconHeight;
        float f2 = i6 - ((i6 - i7) * height);
        float f3 = this.height1 - i6;
        float f4 = (int) (f3 - ((f3 - (this.statusbarSize + ((this.actionbarSize - i7) / 2))) * height));
        float width = (int) ((getWidth() - f) / 2.0f);
        float f5 = ((1.0f - height) * f2) / 2.0f;
        this.blurView.layout(0, 0, getWidth(), (int) (getHeight() - f5));
        this.imgCover.layout(0, 0, getWidth(), (int) (getHeight() - f5));
        this.imgPreview.layout((int) width, (int) f4, (int) (width + f), (int) (f4 + f2));
    }
}
