package com.narvii.nvplayer.delegate;

import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.controller.FeedDetailVideoController;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.IVideoController;
import com.narvii.nvplayerview.delegate.IVideoListView;
import com.narvii.util.YoutubeUtils;

/* loaded from: classes3.dex */
public class FeedDetailVideoDelegate extends NVFeedListVideoDelegate {
    @Override // com.narvii.nvplayer.delegate.NVFeedListVideoDelegate
    protected int getCaptionId() {
        return R.id.text;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected boolean showBlurAsBackground() {
        return false;
    }

    public FeedDetailVideoDelegate(NVContext nVContext, Activity activity) {
        super(nVContext, activity);
        this.areaName = "EngagementArea";
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate, com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onListViewCreated(IVideoListView iVideoListView) {
        super.onListViewCreated(iVideoListView);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected IVideoController initVideoController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        return new FeedDetailVideoController(context, nVContext, nVVideoView, iNVPlayer);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    public void refreshPlayerPosition() {
        int i;
        super.refreshPlayerPosition();
        if (!this.playerPositionChanged || (i = this.mPlayerPosition) == -1) {
            return;
        }
        IVideoListView iVideoListView = this.listView;
        View childAt = iVideoListView.getChildAt(i - iVideoListView.getFirstVisiblePosition());
        if (childAt == null) {
            return;
        }
        if ((childAt.getTag(R.id.video_tag_view_id) != null ? ((Integer) childAt.getTag(R.id.video_tag_view_id)).intValue() : 0) == 0 || this.mVideoView == null) {
            return;
        }
        if (YoutubeUtils.isYtvScheme(this.mPlayer.getPlayingUrl())) {
            this.mVideoView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        } else {
            this.mVideoView.setBackgroundColor(0);
        }
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected void initVideoView() {
        this.mVideoView.init(this, 1);
    }
}
