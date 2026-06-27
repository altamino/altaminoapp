package com.narvii.nvplayerview.delegate;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.logging.Area;
import com.narvii.logging.LogUtils;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyInfo;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.IVideoListener;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayerview.ISurfaceListener;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.IVideoController;
import com.narvii.nvplayerview.controller.NVVideoListController;
import com.narvii.nvplayerview.listener.VideoViewClickListener;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.ISecretImage;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class NVVideoListDelegate implements IVideoListDelegate, IVideoListener, ISurfaceListener, View.OnLayoutChangeListener, IVideoListScrollListener {
    private static final float STORY_VIDEO_RATIO = 0.5625f;
    protected static final String TAG = "NVVideoListDelegate";
    protected boolean active;
    protected String areaName;
    protected NVMediaSource currentMediaSource;
    protected View desView;
    protected IVideoListView listView;
    protected Activity mContext;
    protected NVContext mNVContext;
    protected INVPlayer mPlayer;
    protected Surface mSurface;
    protected IVideoController mVideoController;
    protected NVVideoView mVideoView;
    protected boolean playerPositionChanged;
    protected boolean prepared;
    VideoViewClickListener videoViewClickListener;
    protected int mPlayerPosition = -1;
    protected int lastScrollState = 0;
    private Runnable refreshPlayerPosRunnable = new $$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw(this);
    VideoViewClickListener defaultListener = new VideoViewClickListener() { // from class: com.narvii.nvplayerview.delegate.NVVideoListDelegate.1
        @Override // com.narvii.nvplayerview.listener.VideoViewClickListener
        public boolean interceptClickEvent(NVObject nVObject) {
            return true;
        }

        @Override // com.narvii.nvplayerview.listener.VideoViewClickListener
        public void onVideoViewClicked(Media media, NVObject nVObject) {
            Intent intent = NVFullScreenVideoActivity.intent(media, nVObject, "com.narvii.optionmenu.OptionMenuFragment");
            intent.putExtra("animating", true);
            intent.putExtra("scale_type", NVVideoListDelegate.this.mVideoView.getScaleType());
            intent.putExtra("ratio", NVVideoListDelegate.this.mVideoView.getRatio());
            Activity activity = NVVideoListDelegate.this.mContext;
            if (activity instanceof NVActivity) {
                intent.putExtra("__communityId", ((NVActivity) activity).getIntParam("__communityId"));
                intent.putExtra("preview", ((NVActivity) NVVideoListDelegate.this.mContext).getBooleanParam("preview", false));
            }
            if (Build.VERSION.SDK_INT >= 23) {
                NVVideoListDelegate nVVideoListDelegate = NVVideoListDelegate.this;
                NVVideoListDelegate.this.mContext.startActivity(intent, ActivityOptions.makeSceneTransitionAnimation(nVVideoListDelegate.mContext, (View) nVVideoListDelegate.mVideoView.getRenderView(), "renderView").toBundle());
                return;
            }
            NVVideoListDelegate.this.mContext.startActivity(intent);
        }
    };
    private Runnable runnable = new Runnable() { // from class: com.narvii.nvplayerview.delegate.NVVideoListDelegate.3
        @Override // java.lang.Runnable
        public void run() {
            NVVideoListDelegate nVVideoListDelegate = NVVideoListDelegate.this;
            Surface surface = nVVideoListDelegate.mSurface;
            if (surface != null) {
                nVVideoListDelegate.mPlayer.setVideoSurface(surface);
                NVVideoListDelegate nVVideoListDelegate2 = NVVideoListDelegate.this;
                nVVideoListDelegate2.mPlayer.setVideoListener(nVVideoListDelegate2);
                if (NVVideoListDelegate.this.shouldPlay()) {
                    NVVideoListDelegate.this.mPlayer.setPlayWhenReady(true);
                }
            }
        }
    };

    protected boolean checkCaption() {
        return false;
    }

    protected boolean debugEnable() {
        return true;
    }

    protected boolean forceBlur() {
        return true;
    }

    protected int getStep() {
        return 1;
    }

    protected int getVisibilityPercentage() {
        return 30;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onErrorDebug(NVVideoException nVVideoException) {
        IVideoListener.CC.$default$onErrorDebug(this, nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        IVideoListener.CC.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        IVideoListener.CC.$default$onSurfaceSizeChanged(this, i, i2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f) {
        IVideoListener.CC.$default$onVideoSizeChanged(this, i, i2, i3, f);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ boolean shouldPauseForPageAboveVideo(int i) {
        return IVideoListener.CC.$default$shouldPauseForPageAboveVideo(this, i);
    }

    protected boolean shouldPlay() {
        return true;
    }

    protected boolean showBlurAsBackground() {
        return true;
    }

    protected boolean supportPreload() {
        return true;
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceSizeChanged(Surface surface, int i, int i2) {
    }

    protected boolean vertical() {
        return true;
    }

    protected boolean videoCornerEnable() {
        return true;
    }

    public NVVideoListDelegate(NVContext nVContext, Activity activity) {
        this.mNVContext = nVContext;
        this.mContext = activity;
        activity.getWindow().setFormat(-3);
    }

    public void setVideoViewClickListener(VideoViewClickListener videoViewClickListener) {
        this.videoViewClickListener = videoViewClickListener;
    }

    public void onScrollStateChanged(IVideoListView iVideoListView, int i) {
        this.lastScrollState = i;
        if (i == 0 && this.active) {
            forceRefreshPlayerPosition();
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListScrollListener
    public void onScroll(IVideoListView iVideoListView) {
        if (this.active) {
            listViewOnScroll();
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onListViewCreated(IVideoListView iVideoListView) {
        this.listView = iVideoListView;
        this.listView.addOnVideoListScrollListener(this);
        this.mVideoView = new NVVideoView(this.mContext);
        initVideoView();
        this.mVideoView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        if (debugEnable() && NVVideoView.isDebug()) {
            this.mVideoView.addDebugVideoView();
        }
        this.mPlayer = NVPlayerManager.getNVPlayer(this.mContext.getApplicationContext());
        this.mVideoController = initVideoController(this.mContext, this.mNVContext, this.mVideoView, this.mPlayer);
        this.mVideoController.init();
        this.mVideoView.setBackgroundColor(0);
        this.prepared = true;
    }

    protected void initVideoView() {
        this.mVideoView.init(this);
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onResume() {
        IVideoController iVideoController = this.mVideoController;
        if (iVideoController != null) {
            iVideoController.resume();
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onPause() {
        if (this.active) {
            this.mPlayer.setPlayWhenReady(false);
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onRefresh() {
        if (this.active) {
            this.mPlayer.setPlayWhenReady(false);
            this.mPlayerPosition = -1;
            removeVideoView();
            this.listView.postDelayed(new $$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw(this), 300L);
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void listViewFirstBecomeVisible() {
        if (this.listView != null) {
            Utils.handler.removeCallbacks(this.refreshPlayerPosRunnable);
            Utils.postDelayed(this.refreshPlayerPosRunnable, 500L);
        }
    }

    protected void listViewOnScroll() {
        if (this.active && this.mPlayerPosition != -1) {
            View view = this.mVideoView.getParent() != null ? (View) this.mVideoView.getParent() : null;
            if (view == null) {
                return;
            }
            int visibilityPercentage = getVisibilityPercentage(view);
            if (this.mPlayer.isPlaying() && visibilityPercentage < getVisibilityPercentage()) {
                this.mPlayer.setPlayWhenReady(false);
            }
            if (visibilityPercentage < 10) {
                removeVideoView();
                this.mPlayer.setPlayWhenReady(false);
                this.mPlayerPosition = -1;
            }
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onDestroy() {
        removeVideoView();
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.clearVideoListener(this);
        }
        this.mVideoView = null;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onActiveChanged(boolean z) {
        this.active = z;
        if (z) {
            INVPlayer iNVPlayer = this.mPlayer;
            if (iNVPlayer != null) {
                iNVPlayer.setVideoListener(this);
            }
            setExitSharedElementCallback();
            IVideoListView iVideoListView = this.listView;
            if (iVideoListView == null) {
                return;
            }
            int i = this.mPlayerPosition;
            if (i == -1) {
                iVideoListView.postDelayed(new $$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw(this), 300L);
                return;
            }
            View childAt = getChildAt(iVideoListView, i - iVideoListView.getFirstVisiblePosition());
            if (childAt == null || childAt.getTag(R.id.video_tag_media) == null) {
                return;
            }
            NVMediaSource nVMediaSource = (NVMediaSource) childAt.getTag(R.id.video_tag_media);
            if ((Utils.isEquals(nVMediaSource, this.mPlayer.getMediaSource()) || this.mSurface == null) && !this.mPlayer.isError()) {
                this.listView.postDelayed(new $$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw(this), 300L);
            } else {
                quickSetting(this.mPlayer, nVMediaSource, this.mSurface);
                if (shouldPlay()) {
                    this.mPlayer.setPlayWhenReady(true, true);
                }
            }
            this.mVideoController.onActiveChanged(true);
            return;
        }
        INVPlayer iNVPlayer2 = this.mPlayer;
        if (iNVPlayer2 != null) {
            iNVPlayer2.setPlayWhenReady(false);
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public NVVideoView getVideoView() {
        return this.mVideoView;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public boolean prepared() {
        return this.prepared;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void setAutoPlay(boolean z) {
        if (z) {
            IVideoListView iVideoListView = this.listView;
            if (iVideoListView != null) {
                iVideoListView.addOnVideoListScrollListener(this);
                return;
            }
            return;
        }
        IVideoListView iVideoListView2 = this.listView;
        if (iVideoListView2 != null) {
            iVideoListView2.removeOnVideoListScrollListener(this);
        }
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer != null && iNVPlayer.isPlaying()) {
            this.mPlayer.setPlayWhenReady(false);
        }
        if (this.mVideoView != null) {
            removeVideoView();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void refreshPlayerPosition() {
        IVideoListView iVideoListView;
        Object tag;
        boolean zBooleanValue;
        Area areaFindShownInAdapter;
        StrategyInfo strategyInfo;
        ObjectNode objectNode;
        Area areaFindShownInAdapter2;
        if (this.active && (iVideoListView = this.listView) != null && this.mVideoView != null && this.lastScrollState == 0) {
            if (!iVideoListView.isShown()) {
                if (this.mPlayerPosition != -1) {
                    reset();
                    return;
                }
                return;
            }
            this.playerPositionChanged = false;
            int i = this.mPlayerPosition;
            areaName = null;
            areaName = null;
            String areaName = null;
            if (i != -1) {
                IVideoListView iVideoListView2 = this.listView;
                View childAt = getChildAt(iVideoListView2, i - iVideoListView2.getFirstVisiblePosition());
                if (childAt != null && getVisibilityPercentage(childAt) >= getVisibilityPercentage()) {
                    if (this.mPlayer.isPlaying()) {
                        return;
                    }
                    if (this.mPlayer != null) {
                        NVObject nVObject = childAt.getTag(R.id.video_tag_nvObj) == null ? null : (NVObject) childAt.getTag(R.id.video_tag_nvObj);
                        NVMediaSource mediaSource = this.mPlayer.getMediaSource();
                        if (mediaSource != null) {
                            mediaSource.setNvObject(nVObject);
                            mediaSource.setNVContext(this.mNVContext);
                            this.mPlayer.getVideoLogHelper().resetIds();
                            iIntValue = childAt.getTag(R.id.video_tag_view_id) != null ? ((Integer) childAt.getTag(R.id.video_tag_view_id)).intValue() : 0;
                            View viewFindViewById = iIntValue != 0 ? childAt.findViewById(iIntValue) : null;
                            if (viewFindViewById != null && (areaFindShownInAdapter2 = LogUtils.findShownInAdapter(viewFindViewById)) != null && areaFindShownInAdapter2.getAreaName() != null) {
                                areaName = areaFindShownInAdapter2.getAreaName();
                            }
                            if (areaName == null) {
                                areaName = this.areaName;
                            }
                            mediaSource.setAreaName(areaName);
                        }
                    }
                    this.mPlayer.setVideoListener(this);
                    this.mPlayer.setVideoSurface(this.mSurface);
                    if (Build.VERSION.SDK_INT < 23) {
                        this.mPlayer.seekTo(Math.max(this.mPlayer.getCurrentPosition() - 1000, 0L), true);
                    }
                    if (shouldPlay()) {
                        this.mPlayer.setPlayWhenReady(true);
                        return;
                    }
                    return;
                }
            }
            int desiredPlayerPosition = getDesiredPlayerPosition();
            Log.d(TAG, desiredPlayerPosition + "");
            if (desiredPlayerPosition != -1 && desiredPlayerPosition != this.mPlayerPosition) {
                IVideoListView iVideoListView3 = this.listView;
                final View childAt2 = getChildAt(iVideoListView3, desiredPlayerPosition - iVideoListView3.getFirstVisiblePosition());
                if (childAt2 == null) {
                    return;
                }
                int iIntValue = childAt2.getTag(R.id.video_tag_view_id) != null ? ((Integer) childAt2.getTag(R.id.video_tag_view_id)).intValue() : 0;
                if (iIntValue == 0 || this.mVideoView == null) {
                    return;
                }
                View viewFindViewById2 = childAt2.findViewById(iIntValue);
                Object tag2 = childAt2.getTag(R.id.video_tag_media);
                if (tag2 == null) {
                    return;
                }
                NVMediaSource nVMediaSource = (NVMediaSource) tag2;
                Media firstMedia = nVMediaSource.getFirstMedia();
                NVObject nVObject2 = childAt2.getTag(R.id.video_tag_nvObj) == null ? null : (NVObject) childAt2.getTag(R.id.video_tag_nvObj);
                boolean z = nVObject2 instanceof Blog;
                if (z && ((Blog) nVObject2).isStory()) {
                    this.mVideoView.setPredictedRatio(STORY_VIDEO_RATIO);
                } else {
                    this.mVideoView.setPredictedRatio(com.narvii.nvplayerview.Utils.predictRatio(this.mNVContext, firstMedia));
                }
                if (NVVideoView.isDebug() && (nVObject2 instanceof Feed) && (strategyInfo = (StrategyInfo) JacksonUtils.readAs(((Feed) nVObject2).getStrategyInfo(), StrategyInfo.class)) != null && (objectNode = strategyInfo.debugInfo) != null) {
                    this.mVideoView.setStrategyInfoText(objectNode);
                }
                if (this.mVideoView.getParent() != null) {
                    removeVideoView();
                    this.mPlayer.setPlayWhenReady(false);
                    this.mVideoView.setTag(R.id.video_tag_media, null);
                    this.mVideoView.setTag(R.id.video_tag_nvObj, null);
                }
                this.desView = childAt2;
                Object tag3 = childAt2.getTag(R.id.video_tag_scaleType);
                this.mVideoView.setScaleType(tag3 == null ? 0 : ((Integer) tag3).intValue());
                this.mVideoController.setUIVisibility((z && ((Blog) nVObject2).type == 6) ? 4 : 0);
                ViewGroup viewGroup = (ViewGroup) viewFindViewById2.getParent();
                boolean z2 = viewFindViewById2 instanceof NVImageView;
                if (z2) {
                    this.mVideoView.setNVImage((NVImageView) viewFindViewById2);
                } else {
                    this.mVideoView.setNVImage(null);
                }
                if ((viewGroup instanceof FrameLayout) || (viewGroup instanceof FlexLayout)) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(viewFindViewById2.getWidth(), viewFindViewById2.getHeight());
                    if (viewFindViewById2.getLayoutParams() instanceof FrameLayout.LayoutParams) {
                        layoutParams.gravity = ((FrameLayout.LayoutParams) viewFindViewById2.getLayoutParams()).gravity;
                    }
                    addVideoView(viewGroup, this.mVideoView, layoutParams);
                } else {
                    FrameLayout frameLayout = new FrameLayout(this.mContext);
                    ViewGroup.LayoutParams layoutParams2 = viewFindViewById2.getLayoutParams();
                    frameLayout.setLayoutParams(layoutParams2);
                    if (viewGroup instanceof LinearLayout) {
                        int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById2);
                        viewGroup.removeView(viewFindViewById2);
                        viewGroup.addView(frameLayout, iIndexOfChild);
                    } else {
                        viewGroup.removeView(viewFindViewById2);
                        viewGroup.addView(frameLayout);
                    }
                    frameLayout.addView(viewFindViewById2, layoutParams2);
                    addVideoView(frameLayout, this.mVideoView, layoutParams2);
                }
                if (videoCornerEnable() && z && ((Blog) nVObject2).isStory() && z2) {
                    setVideoViewCornerRadius((NVImageView) viewFindViewById2);
                }
                nVMediaSource.setNvObject(nVObject2);
                nVMediaSource.setNVContext(this.mNVContext);
                String areaName2 = (viewFindViewById2 == null || (areaFindShownInAdapter = LogUtils.findShownInAdapter(viewFindViewById2)) == null || areaFindShownInAdapter.getAreaName() == null) ? null : areaFindShownInAdapter.getAreaName();
                if (areaName2 == null) {
                    areaName2 = this.areaName;
                }
                nVMediaSource.setAreaName(areaName2);
                this.mVideoView.hidePlayButton(true);
                viewFindViewById2.addOnLayoutChangeListener(this);
                quickSetting(this.mPlayer, nVMediaSource, null);
                this.mVideoView.setTag(R.id.video_tag_media, nVMediaSource);
                this.mVideoView.setTag(R.id.video_tag_nvObj, nVObject2);
                this.mPlayerPosition = desiredPlayerPosition;
                startPreload();
                Object tag4 = childAt2.getTag(R.id.video_tag_clickable);
                if (tag4 instanceof Boolean) {
                    zBooleanValue = ((Boolean) tag4).booleanValue();
                    if (zBooleanValue && z && ((Blog) nVObject2).isStory()) {
                        zBooleanValue = false;
                    }
                } else {
                    zBooleanValue = true;
                }
                if (zBooleanValue) {
                    this.mVideoView.setClickable(true);
                    this.mVideoView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nvplayerview.delegate.-$$Lambda$NVVideoListDelegate$SuWGOG-_MEHKGkUsJuAL5VERqCU
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$refreshPlayerPosition$0$NVVideoListDelegate(childAt2, view);
                        }
                    });
                } else {
                    this.mVideoView.setClickable(false);
                }
                this.playerPositionChanged = true;
            }
            if (this.playerPositionChanged && this.mPlayerPosition != -1 && showBlurAsBackground()) {
                IVideoListView iVideoListView4 = this.listView;
                View childAt3 = getChildAt(iVideoListView4, this.mPlayerPosition - iVideoListView4.getFirstVisiblePosition());
                if (childAt3 == null || (tag = childAt3.getTag(R.id.video_tag_cover_media)) == null) {
                    return;
                }
                NVObject nVObject3 = childAt3.getTag(R.id.video_tag_nvObj) != null ? (NVObject) childAt3.getTag(R.id.video_tag_nvObj) : null;
                boolean z3 = nVObject3 instanceof Blog;
                if (z3 && ((Blog) nVObject3).isStory()) {
                    iIntValue = 1;
                }
                NVImageView nvImageView = this.mVideoView.getNvImageView();
                if ((nvImageView instanceof ISecretImage) && forceBlur() && z3 && iIntValue == 0) {
                    ((ISecretImage) nvImageView).setImageForceBlur((Media) tag, true, 6291456);
                }
            }
        }
    }

    public /* synthetic */ void lambda$refreshPlayerPosition$0$NVVideoListDelegate(View view, View view2) {
        Object tag = view.getTag(R.id.video_tag_media);
        if (tag instanceof NVMediaSource) {
            NVMediaSource nVMediaSource = (NVMediaSource) tag;
            List<Media> list = nVMediaSource.mediaList;
            Media media = (list == null || list.size() == 0) ? null : nVMediaSource.mediaList.get(0);
            NVObject nVObject = view.getTag(R.id.video_tag_nvObj) != null ? (NVObject) view.getTag(R.id.video_tag_nvObj) : null;
            VideoViewClickListener videoViewClickListener = this.videoViewClickListener;
            if (videoViewClickListener != null && videoViewClickListener.interceptClickEvent(nVObject)) {
                this.videoViewClickListener.onVideoViewClicked(media, nVObject);
            } else {
                this.defaultListener.onVideoViewClicked(media, nVObject);
            }
        }
    }

    public int getDesiredPlayerPosition() {
        int iIntValue;
        int firstVisiblePosition;
        if (this.listView == null) {
            return -1;
        }
        int[] iArr = new int[2];
        int screenHeight = Utils.getScreenHeight(this.mContext);
        int screenWidth = Utils.getScreenWidth(this.mContext);
        int step = 0;
        int firstVisiblePosition2 = -1;
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MAX_VALUE;
        while (step <= this.listView.getLastVisiblePosition() - this.listView.getFirstVisiblePosition()) {
            View childAt = getChildAt(this.listView, step);
            if (childAt != null && childAt.getTag(R.id.video_tag_view_id) != null && (iIntValue = ((Integer) childAt.getTag(R.id.video_tag_view_id)).intValue()) != 0) {
                View viewFindViewById = childAt.findViewById(iIntValue);
                Object tag = childAt.getTag(R.id.video_tag_media);
                if (tag == null) {
                    continue;
                } else {
                    NVMediaSource nVMediaSource = (NVMediaSource) tag;
                    if (viewFindViewById != null && nVMediaSource.containValidVideo()) {
                        viewFindViewById.getLocationOnScreen(iArr);
                        if (vertical()) {
                            int i3 = screenHeight / 2;
                            if (iArr[1] < i3 && iArr[1] + viewFindViewById.getHeight() > i3) {
                                firstVisiblePosition = this.listView.getFirstVisiblePosition();
                                return firstVisiblePosition + step;
                            }
                            int iAbs = Math.abs(((iArr[1] * 2) + viewFindViewById.getHeight()) - screenHeight);
                            if (iAbs < i2) {
                                firstVisiblePosition2 = this.listView.getFirstVisiblePosition() + step;
                                i2 = iAbs;
                            }
                        } else {
                            if (iArr[0] < screenWidth / 2 && iArr[0] + viewFindViewById.getWidth() > screenHeight / 2) {
                                firstVisiblePosition = this.listView.getFirstVisiblePosition();
                                return firstVisiblePosition + step;
                            }
                            int iAbs2 = Math.abs(((iArr[0] * 2) + viewFindViewById.getWidth()) - screenWidth);
                            if (iAbs2 < i) {
                                firstVisiblePosition2 = this.listView.getFirstVisiblePosition() + step;
                                i = iAbs2;
                            }
                        }
                    }
                }
            }
            step += getStep();
        }
        if (firstVisiblePosition2 != -1) {
            IVideoListView iVideoListView = this.listView;
            if (getVisibilityPercentage(getChildAt(iVideoListView, firstVisiblePosition2 - iVideoListView.getFirstVisiblePosition())) < getVisibilityPercentage()) {
                return -1;
            }
        }
        return firstVisiblePosition2;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSizeChanged(int i, int i2) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView != null) {
            nVVideoView.setVideoSize(i, i2);
            if (debugEnable() && NVVideoView.isDebug()) {
                this.mVideoView.setResolutionText(i, i2);
            }
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        this.mVideoController.onRenderedFirstFrame();
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderFirstFrameInterval(long j) {
        NVVideoView nVVideoView;
        if (debugEnable() && NVVideoView.isDebug() && (nVVideoView = this.mVideoView) != null) {
            nVVideoView.setFromSettingToFirstFrameText(j);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerStateChanged(boolean z, int i) {
        NVVideoView nVVideoView;
        this.mVideoController.onPlayerStateChanged(z, i);
        if (debugEnable() && NVVideoView.isDebug() && (nVVideoView = this.mVideoView) != null) {
            nVVideoView.setPlayerStatus(i);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerError(NVVideoException nVVideoException) {
        this.mVideoController.onPlayerError(nVVideoException);
        if (debugEnable() && NVVideoView.isDebug()) {
            this.mVideoView.setErrorText(nVVideoException.getMessage());
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onCachedBytesRead(long j, long j2) {
        if (debugEnable() && NVVideoView.isDebug() && this.mVideoView != null) {
            Utils.post(new Runnable() { // from class: com.narvii.nvplayerview.delegate.NVVideoListDelegate.2
                @Override // java.lang.Runnable
                public void run() {
                    NVVideoView nVVideoView = NVVideoListDelegate.this.mVideoView;
                    if (nVVideoView != null) {
                        nVVideoView.setHitCacheText("true");
                    }
                }
            });
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPreloadStrategyChanged(String str) {
        if (debugEnable() && this.mVideoView != null && NVVideoView.isDebug()) {
            this.mVideoView.setPreloadStrategyInfo(str);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSupportLowResVideo(boolean z) {
        if (debugEnable() && this.mVideoView != null && NVVideoView.isDebug()) {
            this.mVideoView.setVideoSupportLowRes(z);
        }
    }

    protected void startPreload() {
        if (supportPreload() && this.mPlayerPosition != -1) {
            int totalCountInAdapter = this.listView.getTotalCountInAdapter();
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (int i = 0; i < 2; i++) {
                int i2 = this.mPlayerPosition + i + 1;
                if (i2 < totalCountInAdapter) {
                    Object itemInAdapter = this.listView.getItemInAdapter(i2);
                    if (itemInAdapter instanceof Feed) {
                        Feed feed = (Feed) itemInAdapter;
                        if (feed.getPreviewVideoList(false) != null && feed.getPreviewVideoList(false).size() >= 1) {
                            Media media = feed.getPreviewVideoList(false).get(0);
                            if (media.isVideo() && !TextUtils.isEmpty(media.url)) {
                                arrayList.add(media);
                                z = true;
                            }
                        }
                    }
                }
            }
            if (z) {
                this.mPlayer.preload(this.mNVContext, arrayList);
            }
        }
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceCreated(Surface surface) {
        this.mSurface = surface;
        if (this.active) {
            Utils.postDelayed(this.runnable, 100L);
        }
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceDestroyed(Surface surface) {
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer != null && iNVPlayer.getVideoSurface() == surface) {
            this.mPlayer.setPlayWhenReady(false);
        }
        this.mSurface = null;
    }

    public static void markVideoCell(View view, int i, Media media, Media media2, NVObject nVObject, int i2, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (media != null) {
            arrayList.add(media);
        }
        markVideoCell(view, i, arrayList, media2, nVObject, i2, z);
    }

    public static void markVideoCell(View view, int i, List<Media> list, Media media, NVObject nVObject, int i2, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (Media media2 : list) {
                if (media2.isVideo()) {
                    arrayList.add(media2);
                }
            }
        }
        NVMediaSource nVMediaSource = new NVMediaSource();
        nVMediaSource.mediaList = arrayList;
        if (arrayList.size() > 0) {
            view.setTag(R.id.video_tag_view_id, Integer.valueOf(i));
            view.setTag(R.id.video_tag_media, nVMediaSource);
            view.setTag(R.id.video_tag_nvObj, nVObject);
            view.setTag(R.id.video_tag_scaleType, Integer.valueOf(i2));
            view.setTag(R.id.video_tag_cover_media, media);
            view.setTag(R.id.video_tag_clickable, Boolean.valueOf(z));
            return;
        }
        view.setTag(R.id.video_tag_view_id, 0);
        view.setTag(R.id.video_tag_media, null);
        view.setTag(R.id.video_tag_nvObj, null);
        view.setTag(R.id.video_tag_scaleType, 0);
        view.setTag(R.id.video_tag_cover_media, null);
        view.setTag(R.id.video_tag_clickable, false);
    }

    protected IVideoController initVideoController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        return new NVVideoListController(context, nVContext, nVVideoView, iNVPlayer);
    }

    private void setExitSharedElementCallback() {
        if (Build.VERSION.SDK_INT >= 23) {
            this.mContext.setExitSharedElementCallback(new SharedElementCallback() { // from class: com.narvii.nvplayerview.delegate.NVVideoListDelegate.4
                @Override // android.app.SharedElementCallback
                public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
                    int i;
                    super.onSharedElementEnd(list, list2, list3);
                    NVVideoListDelegate nVVideoListDelegate = NVVideoListDelegate.this;
                    if (nVVideoListDelegate.mSurface == null || (i = nVVideoListDelegate.mPlayerPosition) == -1) {
                        return;
                    }
                    IVideoListView iVideoListView = nVVideoListDelegate.listView;
                    View childAt = nVVideoListDelegate.getChildAt(iVideoListView, i - iVideoListView.getFirstVisiblePosition());
                    if (childAt == null || childAt.getTag(R.id.video_tag_media) == null) {
                        return;
                    }
                    NVVideoListDelegate nVVideoListDelegate2 = NVVideoListDelegate.this;
                    if (!Utils.isEquals(nVVideoListDelegate2.currentMediaSource, nVVideoListDelegate2.mPlayer.getMediaSource())) {
                        NVVideoListDelegate nVVideoListDelegate3 = NVVideoListDelegate.this;
                        nVVideoListDelegate3.quickSetting(nVVideoListDelegate3.mPlayer, nVVideoListDelegate3.currentMediaSource, nVVideoListDelegate3.mSurface);
                        NVVideoListDelegate nVVideoListDelegate4 = NVVideoListDelegate.this;
                        nVVideoListDelegate4.mPlayer.setVideoListener(nVVideoListDelegate4);
                        if (NVVideoListDelegate.this.shouldPlay()) {
                            NVVideoListDelegate.this.mPlayer.setPlayWhenReady(true, true);
                            return;
                        }
                        return;
                    }
                    NVVideoListDelegate nVVideoListDelegate5 = NVVideoListDelegate.this;
                    nVVideoListDelegate5.mPlayer.setVideoSurface(nVVideoListDelegate5.mSurface);
                    NVVideoListDelegate nVVideoListDelegate6 = NVVideoListDelegate.this;
                    nVVideoListDelegate6.mPlayer.setVideoListener(nVVideoListDelegate6);
                    if (NVVideoListDelegate.this.shouldPlay()) {
                        NVVideoListDelegate.this.mPlayer.setPlayWhenReady(true);
                    }
                }
            });
        }
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView == null) {
            return;
        }
        int i9 = i3 - i;
        int i10 = i4 - i2;
        final ViewGroup.LayoutParams layoutParams = nVVideoView.getLayoutParams();
        if (i9 == layoutParams.width && i10 == layoutParams.height) {
            return;
        }
        layoutParams.width = i9;
        layoutParams.height = i10;
        this.mVideoView.post(new Runnable() { // from class: com.narvii.nvplayerview.delegate.-$$Lambda$NVVideoListDelegate$FLT2ZKgCveORF1sDy-bo1Go976M
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLayoutChange$1$NVVideoListDelegate(layoutParams);
            }
        });
    }

    public /* synthetic */ void lambda$onLayoutChange$1$NVVideoListDelegate(ViewGroup.LayoutParams layoutParams) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView != null) {
            nVVideoView.setLayoutParams(layoutParams);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeVideoView() {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView == null || nVVideoView.getParent() == null) {
            return;
        }
        NVImageView nvImageView = this.mVideoView.getNvImageView();
        if (nvImageView != 0) {
            nvImageView.removeOnLayoutChangeListener(this);
            this.mVideoView.hidePlayButton(false);
        }
        if ((nvImageView instanceof ISecretImage) && forceBlur()) {
            ((ISecretImage) nvImageView).setImageForceBlur(nvImageView.getMedia(), false, 6291456);
        }
        this.mVideoView.setVideoSize(0, 0);
        ((ViewGroup) this.mVideoView.getParent()).removeView(this.mVideoView);
        if (debugEnable() && NVVideoView.isDebug()) {
            this.mVideoView.resetDebugVideoView();
        }
    }

    protected void addVideoView(ViewGroup viewGroup, NVVideoView nVVideoView, ViewGroup.LayoutParams layoutParams) {
        viewGroup.addView(nVVideoView, layoutParams);
    }

    protected void setVideoViewCornerRadius(NVImageView nVImageView) {
        int i = nVImageView.cornerRadius;
        float f = i;
        this.mVideoView.setCornerRadiusArray(new float[]{f, f, f, f, f, f, f, f}, i);
    }

    protected View getChildAt(IVideoListView iVideoListView, int i) {
        return iVideoListView.getChildAt(i);
    }

    protected void quickSetting(INVPlayer iNVPlayer, NVMediaSource nVMediaSource, Surface surface) {
        List<Media> list;
        if (nVMediaSource != null && (list = nVMediaSource.mediaList) != null && list.size() > 1) {
            NVMediaSource nVMediaSourceM52clone = nVMediaSource.m52clone();
            nVMediaSourceM52clone.mediaList = new ArrayList();
            nVMediaSourceM52clone.mediaList.add(nVMediaSource.mediaList.get(0));
            iNVPlayer.quickSetting(this.mContext, nVMediaSourceM52clone, surface);
            this.currentMediaSource = nVMediaSourceM52clone;
            return;
        }
        this.currentMediaSource = nVMediaSource;
        iNVPlayer.quickSetting(this.mContext, nVMediaSource, surface);
    }

    public int getPlayerPosition() {
        return this.mPlayerPosition;
    }

    public void reset() {
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setPlayWhenReady(false);
        }
        this.mPlayerPosition = -1;
        removeVideoView();
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void resetVideoView() {
        reset();
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public int getPlayerPos() {
        return this.mPlayerPosition;
    }

    public int getVisibilityPercentage(View view) {
        return vertical() ? com.narvii.nvplayerview.Utils.getVisibilityPercentage(view) : com.narvii.nvplayerview.Utils.getVisibilityHorizontalPercentage(view);
    }

    protected void forceRefreshPlayerPosition() {
        int i = this.mPlayerPosition;
        if (i != -1 && i != getDesiredPlayerPosition()) {
            this.mPlayerPosition = -1;
            this.mPlayer.setPlayWhenReady(false);
            removeVideoView();
            this.listView.postDelayed(new $$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw(this), 300L);
            return;
        }
        this.listView.post(new $$Lambda$HKWJtkxRm3_1eV2wFqrShx94xEw(this));
    }
}
