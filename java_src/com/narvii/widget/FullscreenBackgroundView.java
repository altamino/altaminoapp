package com.narvii.widget;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.mastes.R;
import com.narvii.image.BackgroundSource;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;

/* loaded from: classes3.dex */
public class FullscreenBackgroundView extends FrameLayout {
    NVImageView backgroundOverlay;
    public NVImageView backgroundView;
    private Drawable colorDrawable;
    private Drawable overlayDrawable;
    public RealtimeBlurView realtimeBlurView;

    public FullscreenBackgroundView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.colorDrawable = new ColorDrawable(-11842741);
        this.overlayDrawable = new ColorDrawable(-1946157056);
        FrameLayout.inflate(getContext(), R.layout.background_view, this);
        this.backgroundView = (NVImageView) findViewById(R.id.background_image);
        this.backgroundView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.backgroundView.imageType = NVImageView.TYPE_FULLSCREEN_BACKGROUND_IMAGE;
        this.backgroundOverlay = (NVImageView) findViewById(R.id.background_overlay);
        this.realtimeBlurView = (RealtimeBlurView) findViewById(R.id.realtime_blur_view);
        this.realtimeBlurView.setBlurRadius(Utils.dpToPx(getContext(), 30.0f));
    }

    public void setBackgroundSource(BackgroundSource... backgroundSourceArr) {
        for (BackgroundSource backgroundSource : backgroundSourceArr) {
            if (backgroundSource != null && backgroundSource.hasBackground()) {
                this.backgroundView.setImageDrawable(null);
                Media backgroundMedia = backgroundSource.getBackgroundMedia();
                if (backgroundMedia != null) {
                    this.backgroundView.setDefaultDrawable(this.colorDrawable);
                    this.backgroundView.setImageMedia(backgroundMedia);
                    this.backgroundOverlay.setImageDrawable(this.overlayDrawable);
                    return;
                } else {
                    this.backgroundView.setImageDrawable(new ColorDrawable(backgroundSource.getBackgroundColor()));
                    this.backgroundOverlay.setImageDrawable(null);
                    return;
                }
            }
        }
        this.backgroundView.setImageDrawable(null);
        this.backgroundOverlay.setImageDrawable(null);
    }

    public void setBackgroundMedia(Media media) {
        if (media != null) {
            this.backgroundView.setDefaultDrawable(this.colorDrawable);
            this.backgroundView.setImageMedia(media);
            this.backgroundOverlay.setImageDrawable(this.overlayDrawable);
        } else {
            this.backgroundView.setImageDrawable(null);
            this.backgroundOverlay.setImageDrawable(null);
        }
    }

    public void setOverlayColor(int i) {
        this.overlayDrawable = new ColorDrawable(i);
    }

    public void showBlurOverlay() {
        updateOverlay(true);
    }

    public void hideBlurOverlay() {
        updateOverlay(false);
    }

    private void updateOverlay(boolean z) {
        ViewUtils.show(this.backgroundOverlay, !z);
        ViewUtils.show(this.realtimeBlurView, z);
    }
}
