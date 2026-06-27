package com.narvii.nvplayer.delegate;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayer.controller.StoryFeedListVideoController;
import com.narvii.nvplayer.exoplayer.ExoPreloadUtil;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.IVideoController;
import com.narvii.nvplayerview.delegate.IVideoListView;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.nvplayerview.listener.VideoViewClickListener;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.story.widgets.StoryCardView;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class StoryFeedListVideoDelegate extends NVVideoListDelegate {
    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected boolean debugEnable() {
        return false;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected boolean forceBlur() {
        return false;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected boolean supportPreload() {
        return false;
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected boolean videoCornerEnable() {
        return true;
    }

    public StoryFeedListVideoDelegate(NVContext nVContext, Activity activity) {
        super(nVContext, activity);
        setVideoViewClickListener(new VideoViewClickListener() { // from class: com.narvii.nvplayer.delegate.StoryFeedListVideoDelegate.1
            @Override // com.narvii.nvplayerview.listener.VideoViewClickListener
            public void onVideoViewClicked(Media media, NVObject nVObject) {
                new StoryHelper(((NVVideoListDelegate) StoryFeedListVideoDelegate.this).mNVContext).openStoryDetailPageInAnotherActivity(((NVVideoListDelegate) StoryFeedListVideoDelegate.this).desView, StoryFeedListVideoDelegate.this.getStoryDetailPageIntent((Blog) nVObject));
            }

            @Override // com.narvii.nvplayerview.listener.VideoViewClickListener
            public boolean interceptClickEvent(NVObject nVObject) {
                return (nVObject instanceof Blog) && ((Blog) nVObject).type == 9;
            }
        });
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected IVideoController initVideoController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        return new StoryFeedListVideoController(context, nVVideoView, iNVPlayer);
    }

    public Intent getStoryDetailPageIntent(Blog blog) {
        return new StoryListFragment.IntentBuilder(blog).source(StoryApi.COMMUNITY_PLAYER).showCommentBar(true).forceVideoAutoPlay(true).build();
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected void setVideoViewCornerRadius(NVImageView nVImageView) {
        int i = nVImageView.cornerRadius;
        int i2 = nVImageView.cornerMask;
        float f = i;
        float[] fArr = {f, f, f, f, f, f, f, f};
        if ((i2 & 1) != 0) {
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
        }
        if ((i2 & 2) != 0) {
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
        }
        if ((i2 & 4) != 0) {
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
        }
        if ((i2 & 8) != 0) {
            fArr[6] = 0.0f;
            fArr[7] = 0.0f;
        }
        this.mVideoView.setCornerRadiusArray(fArr, i);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected void addVideoView(ViewGroup viewGroup, NVVideoView nVVideoView, ViewGroup.LayoutParams layoutParams) {
        super.addVideoView(viewGroup, nVVideoView, layoutParams);
        if (this.desView instanceof StoryCardView) {
            setPlayingGif();
        }
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    public void removeVideoView() {
        View view = this.desView;
        if (view instanceof StoryCardView) {
            resetPlayImg(view);
        }
        super.removeVideoView();
    }

    protected void resetPlayImg(View view) {
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.story_play_img);
        if (nVImageView != null) {
            nVImageView.setImageUrl("res://ic_story_play");
            nVImageView.setTag(R.id.video_tag_is_playing, null);
        }
    }

    private void setPlayingGif() {
        final NVImageView nVImageView;
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView == null || !(nVVideoView.getParent() instanceof ViewGroup) || (nVImageView = (NVImageView) this.desView.findViewById(R.id.story_play_img)) == null || this.desView == null) {
            return;
        }
        nVImageView.post(new Runnable() { // from class: com.narvii.nvplayer.delegate.-$$Lambda$StoryFeedListVideoDelegate$UQx1MpJtAF5NMhy5_kkXhU7oqH4
            @Override // java.lang.Runnable
            public final void run() {
                StoryFeedListVideoDelegate.lambda$setPlayingGif$0(nVImageView);
            }
        });
        this.desView.setTag(R.id.video_tag_is_playing, true);
    }

    static /* synthetic */ void lambda$setPlayingGif$0(NVImageView nVImageView) {
        nVImageView.setTag(R.id.video_tag_is_playing, true);
        nVImageView.setImageUrl("assets://media_playing.webp");
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected void quickSetting(INVPlayer iNVPlayer, NVMediaSource nVMediaSource, Surface surface) {
        List<Media> list;
        if (nVMediaSource != null && (list = nVMediaSource.mediaList) != null && list.size() > 0) {
            NVMediaSource nVMediaSourceM52clone = nVMediaSource.m52clone();
            nVMediaSourceM52clone.mediaList = new ArrayList();
            Media media = nVMediaSource.mediaList.get(0);
            media.url = Utils.getLowResVideoUrl(media.url);
            nVMediaSourceM52clone.mediaList.add(media);
            iNVPlayer.quickSetting(this.mContext, nVMediaSourceM52clone, surface);
            this.currentMediaSource = nVMediaSourceM52clone;
        } else {
            super.quickSetting(iNVPlayer, nVMediaSource, surface);
        }
        if (nVMediaSource == null || nVMediaSource.mediaList == null || !ExoPreloadUtil.INSTANCE.isHighPreloadLevel() || !(this.mPlayer instanceof NVExoPlayer)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(nVMediaSource.mediaList.get(0));
        ExoPreloadUtil.INSTANCE.startPreload(arrayList, (NVExoPlayer) this.mPlayer, this.mContext, true);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
    protected void initVideoView() {
        this.mVideoView.init(this, 1);
    }

    @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate, com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onActiveChanged(boolean z) {
        this.active = z;
        if (z) {
            INVPlayer iNVPlayer = this.mPlayer;
            if (iNVPlayer != null) {
                iNVPlayer.setVideoListener(this);
                this.mVideoController.onActiveChanged(true);
            }
            IVideoListView iVideoListView = this.listView;
            if (iVideoListView == null) {
                return;
            }
            int i = this.mPlayerPosition;
            if (i == -1) {
                iVideoListView.postDelayed(new Runnable() { // from class: com.narvii.nvplayer.delegate.-$$Lambda$rIV8razhgfCwo2bvug08I_R9D14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.refreshPlayerPosition();
                    }
                }, 300L);
                return;
            }
            View childAt = getChildAt(iVideoListView, i - iVideoListView.getFirstVisiblePosition());
            if (childAt == null || childAt.getTag(R.id.video_tag_media) == null) {
                return;
            }
            quickSetting(this.mPlayer, (NVMediaSource) childAt.getTag(R.id.video_tag_media), this.mSurface);
            this.mPlayer.setPlayWhenReady(true, true);
            return;
        }
        this.mPlayer.setPlayWhenReady(false);
    }
}
