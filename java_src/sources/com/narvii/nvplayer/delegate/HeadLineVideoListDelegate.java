package com.narvii.nvplayer.delegate;

import android.app.Activity;
import android.widget.ImageView;
import com.narvii.app.NVContext;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public class HeadLineVideoListDelegate extends NVVideoListDelegate {
    public HeadLineVideoListDelegate(NVContext nVContext, Activity activity) {
        super(nVContext, activity);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    public void refreshPlayerPosition() {
        NVVideoView nVVideoView;
        NVImageView nvImageView;
        super.refreshPlayerPosition();
        if (this.playerPositionChanged && this.mPlayerPosition != -1 && (nVVideoView = this.mVideoView) != null && (nvImageView = nVVideoView.getNvImageView()) != null && nvImageView.getScaleType() == ImageView.ScaleType.CENTER_CROP) {
            this.mVideoView.setScaleType(1);
        }
    }
}
