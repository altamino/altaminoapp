package com.narvii.image;

import com.narvii.model.Media;
import com.narvii.widget.NVImageView;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class ImageLoadTracker implements NVImageView.OnImageChangedListener {
    ImageLoadTrackListener imageLoadTrackListener;
    HashSet<NVImageView> imageViewSet;

    public boolean isAllLoaded() {
        HashSet<NVImageView> hashSet = this.imageViewSet;
        if (hashSet == null) {
            return true;
        }
        Iterator<NVImageView> it = hashSet.iterator();
        while (it.hasNext()) {
            NVImageView next = it.next();
            if (next.getVisibility() == 0 && next.getStatus() == 1) {
                return false;
            }
        }
        return true;
    }

    public void addImageView(NVImageView nVImageView) {
        addImageView(nVImageView, null);
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

    public void setImageLoadTrackListener(ImageLoadTrackListener imageLoadTrackListener) {
        this.imageLoadTrackListener = imageLoadTrackListener;
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i, Media media) {
        if (this.imageLoadTrackListener == null || !isAllLoaded()) {
            return;
        }
        this.imageLoadTrackListener.onLoadFinished();
    }
}
