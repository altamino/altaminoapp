package com.narvii.link.view;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.narvii.image.ImageLoadTrackListener;
import com.narvii.image.ImageLoadTracker;
import com.narvii.link.ILoadTrackView;
import com.narvii.link.LoadFinishListener;

/* JADX INFO: loaded from: classes6.dex */
public class LoadTrackView extends FrameLayout implements ILoadTrackView {
    protected ImageLoadTracker imageLoadTracker;
    protected LoadFinishListener loadFinishListener;

    protected void checkIfAllLoadFinished() {
        if (this.loadFinishListener == null || !isAllLoaded()) {
            return;
        }
        this.loadFinishListener.onLoadFinished();
    }

    public boolean isAllLoaded() {
        return this.imageLoadTracker.isAllLoaded();
    }

    @Override // com.narvii.link.ILoadTrackView
    public void setLoadFinishListener(LoadFinishListener loadFinishListener) {
        this.loadFinishListener = loadFinishListener;
        checkIfAllLoadFinished();
    }

    public LoadTrackView(@NonNull Context context) {
        super(context);
        ImageLoadTracker imageLoadTracker = new ImageLoadTracker();
        this.imageLoadTracker = imageLoadTracker;
        imageLoadTracker.setImageLoadTrackListener(new ImageLoadTrackListener() { // from class: com.narvii.link.view.LoadTrackView.1
            @Override // com.narvii.image.ImageLoadTrackListener
            public void onLoadFinished() {
                LoadTrackView.this.checkIfAllLoadFinished();
            }
        });
    }
}
