package com.narvii.nvplayer.delegate;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayerview.delegate.IVideoListView;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class DiscoverVideoListDelegate extends StoryFeedListVideoDelegate {
    private static final int POS_LEFT = 0;
    private static final int POS_RIGHT = 1;
    private int columnAdapterItemPos;

    @Override // com.narvii.nvplayer.delegate.StoryFeedListVideoDelegate, com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected boolean debugEnable() {
        return true;
    }

    public DiscoverVideoListDelegate(NVContext nVContext, Activity activity) {
        super(nVContext, activity);
        this.columnAdapterItemPos = 0;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected View getChildAt(IVideoListView iVideoListView, int i) {
        View viewFindViewById;
        View childAt = iVideoListView.getChildAt(i);
        if (childAt instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) childAt;
            if (viewGroup.getChildCount() == 2 && (viewFindViewById = viewGroup.getChildAt(this.columnAdapterItemPos).findViewById(R.id.story_layout)) != null) {
                return viewFindViewById;
            }
        }
        return childAt;
    }

    protected View getChildAtInRandom(IVideoListView iVideoListView, int i, boolean z) {
        View childAt = iVideoListView.getChildAt(i);
        if (!(childAt instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) childAt;
        if (viewGroup.getChildCount() != 2) {
            return null;
        }
        int i2 = Math.random() > 0.5d ? 1 : 0;
        View viewFindViewById = viewGroup.getChildAt(i2).findViewById(R.id.story_layout);
        if (viewFindViewById != null && viewFindViewById.getTag(R.id.video_tag_view_id) == null && i2 == 1) {
            viewFindViewById = viewGroup.getChildAt(0).findViewById(R.id.story_layout);
            i2 = 0;
        }
        if (viewFindViewById == null) {
            return null;
        }
        if (z) {
            this.columnAdapterItemPos = i2;
        }
        return viewFindViewById;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    public int getDesiredPlayerPosition() {
        return getDesiredPlayerPosition(true);
    }

    protected int getDesiredPlayerPosition(boolean z) {
        int iIntValue;
        int[] iArr = new int[2];
        int screenHeight = Utils.getScreenHeight(this.mContext);
        int lastVisiblePosition = this.listView.getLastVisiblePosition() - this.listView.getFirstVisiblePosition();
        int firstVisiblePosition = -1;
        int i = Integer.MAX_VALUE;
        while (lastVisiblePosition >= 0) {
            View childAtInRandom = getChildAtInRandom(this.listView, lastVisiblePosition, z);
            if ((childAtInRandom != null || (childAtInRandom = this.listView.getChildAt(lastVisiblePosition)) != null) && childAtInRandom.getTag(R.id.video_tag_view_id) != null && (iIntValue = ((Integer) childAtInRandom.getTag(R.id.video_tag_view_id)).intValue()) != 0) {
                View viewFindViewById = childAtInRandom.findViewById(iIntValue);
                Object tag = childAtInRandom.getTag(R.id.video_tag_media);
                if (tag == null) {
                    continue;
                } else {
                    NVMediaSource nVMediaSource = (NVMediaSource) tag;
                    if (viewFindViewById != null && nVMediaSource.containValidVideo()) {
                        viewFindViewById.getLocationOnScreen(iArr);
                        int i2 = screenHeight / 2;
                        if (iArr[1] < i2 && iArr[1] + viewFindViewById.getHeight() > i2) {
                            return this.listView.getFirstVisiblePosition() + lastVisiblePosition;
                        }
                        int iAbs = Math.abs(((iArr[1] * 2) + viewFindViewById.getHeight()) - screenHeight);
                        if (iAbs < i) {
                            firstVisiblePosition = this.listView.getFirstVisiblePosition() + lastVisiblePosition;
                            i = iAbs;
                        }
                    }
                }
            }
            lastVisiblePosition -= getStep();
        }
        return firstVisiblePosition;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate, com.narvii.nvplayerview.delegate.IVideoListScrollListener
    public void onScrollStateChanged(IVideoListView iVideoListView, int i) {
        this.lastScrollState = i;
        if (i == 0 && this.active) {
            forceRefreshPlayerPosition();
        }
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected void forceRefreshPlayerPosition() {
        int i = this.mPlayerPosition;
        if (i != -1 && i != getDesiredPlayerPosition(false)) {
            this.mPlayerPosition = -1;
            this.mPlayer.setPlayWhenReady(false);
            removeVideoView();
            this.listView.postDelayed(new Runnable() { // from class: com.narvii.nvplayer.delegate.-$$Lambda$LJCHvfpFQPfxV4loAYil5c_NWCw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.refreshPlayerPosition();
                }
            }, 300L);
            return;
        }
        this.listView.post(new Runnable() { // from class: com.narvii.nvplayer.delegate.-$$Lambda$LJCHvfpFQPfxV4loAYil5c_NWCw
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.refreshPlayerPosition();
            }
        });
    }
}
