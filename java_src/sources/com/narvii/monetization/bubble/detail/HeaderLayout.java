package com.narvii.monetization.bubble.detail;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.model.ChatBubble;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
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

    public HeaderLayout(@NonNull Context context) {
        this(context, null);
    }

    public void setHeight1(int i10) {
        this.height1 = i10;
    }

    public HeaderLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.statusbarSize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        this.actionbarSize = ((NVActivity) getContext()).getActionBarOverlaySize();
        this.initIconSize = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_detail_icon_size);
        this.initIconHeight = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_detail_icon_height);
        this.finalIconSize = getContext().getResources().getDimensionPixelSize(R.dimen.bubble_detail_icon_size_final);
        this.finalIconHeight = (int) (getContext().getResources().getDimensionPixelSize(R.dimen.bubble_detail_icon_size_final) * 0.869f);
    }

    public void setBubble(ChatBubble chatBubble) {
        this.bubble = chatBubble;
        this.imgCover.setImageUrl(chatBubble.getBannerUrl());
        boolean z6 = chatBubble.type == 2;
        int iDpToPx = z6 ? 0 : (int) Utils.dpToPx(getContext(), 2.0f);
        this.imgPreview.setPadding(iDpToPx, iDpToPx, iDpToPx, iDpToPx);
        this.imgPreview.setBackgroundDrawable(z6 ? null : ContextCompat.getDrawable(getContext(), R.drawable.bubble_icon_stroke_bg));
        this.imgPreview.setImageUrl(chatBubble.getPreviewUrl());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.imgCover = (NVImageView) findViewById(R.id.bubble_cover);
        this.imgPreview = (NVImageView) findViewById(R.id.bubble_preview);
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int i14 = this.statusbarSize + this.actionbarSize;
        float height = 1.0f - (((getHeight() - i14) * 1.0f) / (this.height1 - i14));
        this.blurView.setAlpha(height);
        int i15 = this.initIconSize;
        float f = i15 - ((i15 - this.finalIconSize) * height);
        int i16 = this.initIconHeight;
        int i17 = this.finalIconHeight;
        float f6 = i16 - ((i16 - i17) * height);
        float f7 = this.height1 - i16;
        float f10 = (int) (f7 - ((f7 - (this.statusbarSize + ((this.actionbarSize - i17) / 2))) * height));
        float width = (int) ((getWidth() - f) / 2.0f);
        float f11 = ((1.0f - height) * f6) / 2.0f;
        this.blurView.layout(0, 0, getWidth(), (int) (getHeight() - f11));
        this.imgCover.layout(0, 0, getWidth(), (int) (getHeight() - f11));
        this.imgPreview.layout((int) width, (int) f10, (int) (width + f), (int) (f10 + f6));
    }
}
