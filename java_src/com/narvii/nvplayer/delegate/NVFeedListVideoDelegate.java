package com.narvii.nvplayer.delegate;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.NVVideoListController;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;

/* loaded from: classes3.dex */
public class NVFeedListVideoDelegate extends NVVideoListDelegate {
    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected boolean checkCaption() {
        return false;
    }

    protected int getCaptionId() {
        return R.id.feed_caption1;
    }

    public NVFeedListVideoDelegate(NVContext nVContext, Activity activity) {
        super(nVContext, activity);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected void addVideoView(ViewGroup viewGroup, NVVideoView nVVideoView, ViewGroup.LayoutParams layoutParams) {
        View view;
        if ((this.mVideoController instanceof NVVideoListController) && (view = this.desView) != null) {
            Object tag = view.getTag(R.id.video_tag_scaleType);
            ((NVVideoListController) this.mVideoController).setVolumeBtnTop((tag == null ? 0 : ((Integer) tag).intValue()) == 1);
        }
        super.addVideoView(viewGroup, nVVideoView, layoutParams);
        if (!checkCaption() || viewGroup.findViewById(getCaptionId()) == null) {
            return;
        }
        viewGroup.findViewById(getCaptionId()).setVisibility(4);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    public void removeVideoView() {
        setCaptionVisibility(0);
        super.removeVideoView();
    }

    private void setCaptionVisibility(int i) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView == null || !(nVVideoView.getParent() instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) this.mVideoView.getParent();
        if (!checkCaption() || viewGroup.findViewById(getCaptionId()) == null) {
            return;
        }
        viewGroup.findViewById(getCaptionId()).setVisibility(i);
    }
}
