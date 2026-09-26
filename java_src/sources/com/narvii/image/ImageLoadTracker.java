package com.narvii.image;

import com.narvii.model.Media;
import com.narvii.widget.NVImageView;
import java.util.HashSet;

/* JADX INFO: loaded from: classes9.dex */
public class ImageLoadTracker implements NVImageView.OnImageChangedListener {
    ImageLoadTrackListener imageLoadTrackListener;
    HashSet<NVImageView> imageViewSet;

    public void addImageView(NVImageView nVImageView) {
        addImageView(nVImageView, null);
    }

    public void setImageLoadTrackListener(ImageLoadTrackListener imageLoadTrackListener) {
        this.imageLoadTrackListener = imageLoadTrackListener;
    }

    public void addImageView(NVImageView nVImageView, NVImageView.OnImageChangedListener onImageChangedListener) {
        if (nVImageView == null) {
            return;
        }
        if (this.imageViewSet == null) {
            this.imageViewSet = new HashSet<>();
        }
        if (this.imageViewSet.contains(nVImageView)) {
            return;
        }
        this.imageViewSet.add(nVImageView);
        if (onImageChangedListener == null) {
            onImageChangedListener = this;
        }
        nVImageView.setOnImageChangedListener(onImageChangedListener);
    }

    public boolean isAllLoaded() {
        HashSet<NVImageView> hashSet = this.imageViewSet;
        if (hashSet == null) {
            return true;
        }
        for (NVImageView nVImageView : hashSet) {
            if (nVImageView.getVisibility() == 0 && nVImageView.getStatus() == 1) {
                return false;
            }
        }
        return true;
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
        if (this.imageLoadTrackListener == null || !isAllLoaded()) {
            return;
        }
        this.imageLoadTrackListener.onLoadFinished();
    }
}
