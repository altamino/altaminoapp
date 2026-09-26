package com.narvii.widget;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.image.BackgroundSource;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;

/* JADX INFO: loaded from: classes11.dex */
public class FullscreenBackgroundView extends FrameLayout {
    NVImageView backgroundOverlay;
    public NVImageView backgroundView;
    private Drawable colorDrawable;
    private Drawable overlayDrawable;
    public RealtimeBlurView realtimeBlurView;

    public void hideBlurOverlay() {
        updateOverlay(false);
    }

    public void setBackgroundSource(BackgroundSource... backgroundSourceArr) {
        for (BackgroundSource backgroundSource : backgroundSourceArr) {
            if (backgroundSource != null && backgroundSource.hasBackground()) {
                this.backgroundView.setImageDrawable(null);
                Media backgroundMedia = backgroundSource.getBackgroundMedia();
                if (backgroundMedia == null) {
                    this.backgroundView.setImageDrawable(new ColorDrawable(backgroundSource.getBackgroundColor()));
                    this.backgroundOverlay.setImageDrawable(null);
                    return;
                } else {
                    this.backgroundView.setDefaultDrawable(this.colorDrawable);
                    this.backgroundView.setImageMedia(backgroundMedia);
                    this.backgroundOverlay.setImageDrawable(this.overlayDrawable);
                    return;
                }
            }
        }
        this.backgroundView.setImageDrawable(null);
        this.backgroundOverlay.setImageDrawable(null);
    }

    public void showBlurOverlay() {
        updateOverlay(true);
    }

    private void updateOverlay(boolean z6) {
        ViewUtils.show(this.backgroundOverlay, !z6);
        ViewUtils.show(this.realtimeBlurView, z6);
    }

    public void setBackgroundMedia(Media media) {
        if (media == null) {
            this.backgroundView.setImageDrawable(null);
            this.backgroundOverlay.setImageDrawable(null);
        } else {
            this.backgroundView.setDefaultDrawable(this.colorDrawable);
            this.backgroundView.setImageMedia(media);
            this.backgroundOverlay.setImageDrawable(this.overlayDrawable);
        }
    }

    public void setOverlayColor(@ColorInt int i10) {
        this.overlayDrawable = new ColorDrawable(i10);
    }

    public FullscreenBackgroundView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.colorDrawable = new ColorDrawable(-11842741);
        this.overlayDrawable = new ColorDrawable(-1946157056);
        View.inflate(getContext(), R.layout.background_view, this);
        NVImageView nVImageView = (NVImageView) findViewById(R.id.background_image);
        this.backgroundView = nVImageView;
        nVImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.backgroundView.imageType = NVImageView.TYPE_FULLSCREEN_BACKGROUND_IMAGE;
        this.backgroundOverlay = (NVImageView) findViewById(R.id.background_overlay);
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) findViewById(R.id.realtime_blur_view);
        this.realtimeBlurView = realtimeBlurView;
        realtimeBlurView.setBlurRadius(Utils.dpToPx(getContext(), 30.0f));
    }
}
