package com.narvii.nvplayerview.delegate;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
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
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class NVVideoListDelegate implements IVideoListDelegate, IVideoListener, ISurfaceListener, View.OnLayoutChangeListener, IVideoListScrollListener {
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
    private Runnable refreshPlayerPosRunnable = new c(this);
    VideoViewClickListener defaultListener = new VideoViewClickListener() { // from class: com.narvii.nvplayerview.delegate.NVVideoListDelegate.1
        public static void safedk_Activity_startActivity_1c49a06a0ef633f5c4105ccd8986fc08(Activity p0, Intent p1, Bundle p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1, p5);
        }

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
            NVVideoListDelegate nVVideoListDelegate = NVVideoListDelegate.this;
            safedk_Activity_startActivity_1c49a06a0ef633f5c4105ccd8986fc08(NVVideoListDelegate.this.mContext, intent, ActivityOptions.makeSceneTransitionAnimation(nVVideoListDelegate.mContext, (View) nVVideoListDelegate.mVideoView.getRenderView(), "renderView").toBundle());
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

    public static void markVideoCell(View view, int i10, Media media, Media media2, NVObject nVObject, int i11, boolean z6) {
        ArrayList arrayList = new ArrayList();
        if (media != null) {
            arrayList.add(media);
        }
        markVideoCell(view, i10, arrayList, media2, nVObject, i11, z6);
    }

    protected boolean checkCaption() {
        return false;
    }

    protected boolean debugEnable() {
        return true;
    }

    protected boolean forceBlur() {
        return true;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public int getPlayerPos() {
        return this.mPlayerPosition;
    }

    public int getPlayerPosition() {
        return this.mPlayerPosition;
    }

    protected int getStep() {
        return 1;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public NVVideoView getVideoView() {
        return this.mVideoView;
    }

    protected int getVisibilityPercentage() {
        return 30;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onErrorDebug(NVVideoException nVVideoException) {
        com.narvii.nvplayer.b.b(this, nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPositionDiscontinuity(int i10) {
        com.narvii.nvplayer.b.e(this, i10);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
        com.narvii.nvplayer.b.i(this, i10, i11);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i10, int i11, int i12, float f) {
        com.narvii.nvplayer.b.k(this, i10, i11, i12, f);
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public boolean prepared() {
        return this.prepared;
    }

    public void setVideoViewClickListener(VideoViewClickListener videoViewClickListener) {
        this.videoViewClickListener = videoViewClickListener;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ boolean shouldPauseForPageAboveVideo(int i10) {
        return com.narvii.nvplayer.b.m(this, i10);
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
    public void surfaceSizeChanged(Surface surface, int i10, int i11) {
    }

    protected boolean vertical() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLayoutChange$1(ViewGroup.LayoutParams layoutParams) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView != null) {
            nVVideoView.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshPlayerPosition$0(View view, View view2) {
        Object tag = view.getTag(R.id.video_tag_media);
        if (tag instanceof NVMediaSource) {
            NVMediaSource nVMediaSource = (NVMediaSource) tag;
            List<Media> list = nVMediaSource.mediaList;
            Media media = (list == null || list.size() == 0) ? null : nVMediaSource.mediaList.get(0);
            int i10 = R.id.video_tag_nvObj;
            NVObject nVObject = view.getTag(i10) != null ? (NVObject) view.getTag(i10) : null;
            VideoViewClickListener videoViewClickListener = this.videoViewClickListener;
            if (videoViewClickListener == null || !videoViewClickListener.interceptClickEvent(nVObject)) {
                this.defaultListener.onVideoViewClicked(media, nVObject);
            } else {
                this.videoViewClickListener.onVideoViewClicked(media, nVObject);
            }
        }
    }

    private void setExitSharedElementCallback() {
        this.mContext.setExitSharedElementCallback(new SharedElementCallback() { // from class: com.narvii.nvplayerview.delegate.NVVideoListDelegate.4
            @Override // android.app.SharedElementCallback
            public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
                int i10;
                super.onSharedElementEnd(list, list2, list3);
                NVVideoListDelegate nVVideoListDelegate = NVVideoListDelegate.this;
                if (nVVideoListDelegate.mSurface != null && (i10 = nVVideoListDelegate.mPlayerPosition) != -1) {
                    IVideoListView iVideoListView = nVVideoListDelegate.listView;
                    View childAt = nVVideoListDelegate.getChildAt(iVideoListView, i10 - iVideoListView.getFirstVisiblePosition());
                    if (childAt != null && childAt.getTag(R.id.video_tag_media) != null) {
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
                }
            }
        });
    }

    protected void forceRefreshPlayerPosition() {
        int i10 = this.mPlayerPosition;
        if (i10 == -1 || i10 == getDesiredPlayerPosition()) {
            this.listView.post(new c(this));
            return;
        }
        this.mPlayerPosition = -1;
        this.mPlayer.setPlayWhenReady(false);
        removeVideoView();
        this.listView.postDelayed(new c(this), 300L);
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
        int i10 = Integer.MAX_VALUE;
        int firstVisiblePosition2 = -1;
        int i11 = Integer.MAX_VALUE;
        int step = 0;
        while (step <= this.listView.getLastVisiblePosition() - this.listView.getFirstVisiblePosition()) {
            View childAt = getChildAt(this.listView, step);
            if (childAt != null) {
                int i12 = R.id.video_tag_view_id;
                if (childAt.getTag(i12) != null && (iIntValue = ((Integer) childAt.getTag(i12)).intValue()) != 0) {
                    View viewFindViewById = childAt.findViewById(iIntValue);
                    Object tag = childAt.getTag(R.id.video_tag_media);
                    if (tag == null) {
                        continue;
                    } else {
                        NVMediaSource nVMediaSource = (NVMediaSource) tag;
                        if (viewFindViewById != null && nVMediaSource.containValidVideo()) {
                            viewFindViewById.getLocationOnScreen(iArr);
                            if (vertical()) {
                                int i13 = iArr[1];
                                int i14 = screenHeight / 2;
                                if (i13 < i14 && i13 + viewFindViewById.getHeight() > i14) {
                                    firstVisiblePosition = this.listView.getFirstVisiblePosition();
                                    return firstVisiblePosition + step;
                                }
                                int iAbs = Math.abs(((iArr[1] * 2) + viewFindViewById.getHeight()) - screenHeight);
                                if (iAbs < i11) {
                                    firstVisiblePosition2 = this.listView.getFirstVisiblePosition() + step;
                                    i11 = iAbs;
                                }
                            } else {
                                int i15 = iArr[0];
                                if (i15 < screenWidth / 2 && i15 + viewFindViewById.getWidth() > screenHeight / 2) {
                                    firstVisiblePosition = this.listView.getFirstVisiblePosition();
                                    return firstVisiblePosition + step;
                                }
                                int iAbs2 = Math.abs(((iArr[0] * 2) + viewFindViewById.getWidth()) - screenWidth);
                                if (iAbs2 < i10) {
                                    firstVisiblePosition2 = this.listView.getFirstVisiblePosition() + step;
                                    i10 = iAbs2;
                                }
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

    public int getVisibilityPercentage(View view) {
        return vertical() ? com.narvii.nvplayerview.Utils.getVisibilityPercentage(view) : com.narvii.nvplayerview.Utils.getVisibilityHorizontalPercentage(view);
    }

    protected IVideoController initVideoController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
        return new NVVideoListController(context, nVContext, nVVideoView, iNVPlayer);
    }

    protected void initVideoView() {
        this.mVideoView.init(this);
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
    public void onActiveChanged(boolean z6) {
        this.active = z6;
        if (!z6) {
            INVPlayer iNVPlayer = this.mPlayer;
            if (iNVPlayer != null) {
                iNVPlayer.setPlayWhenReady(false);
                return;
            }
            return;
        }
        INVPlayer iNVPlayer2 = this.mPlayer;
        if (iNVPlayer2 != null) {
            iNVPlayer2.setVideoListener(this);
        }
        setExitSharedElementCallback();
        IVideoListView iVideoListView = this.listView;
        if (iVideoListView == null) {
            return;
        }
        int i10 = this.mPlayerPosition;
        if (i10 == -1) {
            iVideoListView.postDelayed(new c(this), 300L);
            return;
        }
        View childAt = getChildAt(iVideoListView, i10 - iVideoListView.getFirstVisiblePosition());
        if (childAt != null) {
            int i11 = R.id.video_tag_media;
            if (childAt.getTag(i11) == null) {
                return;
            }
            NVMediaSource nVMediaSource = (NVMediaSource) childAt.getTag(i11);
            if ((Utils.isEquals(nVMediaSource, this.mPlayer.getMediaSource()) || this.mSurface == null) && !this.mPlayer.isError()) {
                this.listView.postDelayed(new c(this), 300L);
            } else {
                quickSetting(this.mPlayer, nVMediaSource, this.mSurface);
                if (shouldPlay()) {
                    this.mPlayer.setPlayWhenReady(true, true);
                }
            }
            this.mVideoController.onActiveChanged(true);
        }
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView == null) {
            return;
        }
        int i18 = i12 - i10;
        int i19 = i13 - i11;
        final ViewGroup.LayoutParams layoutParams = nVVideoView.getLayoutParams();
        if (i18 == layoutParams.width && i19 == layoutParams.height) {
            return;
        }
        layoutParams.width = i18;
        layoutParams.height = i19;
        this.mVideoView.post(new Runnable() { // from class: com.narvii.nvplayerview.delegate.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f2559a.lambda$onLayoutChange$1(layoutParams);
            }
        });
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onListViewCreated(IVideoListView iVideoListView) {
        this.listView = iVideoListView;
        iVideoListView.addOnVideoListScrollListener(this);
        this.mVideoView = new NVVideoView(this.mContext);
        initVideoView();
        this.mVideoView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        if (debugEnable() && NVVideoView.isDebug()) {
            this.mVideoView.addDebugVideoView();
        }
        INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(this.mContext.getApplicationContext());
        this.mPlayer = nVPlayer;
        IVideoController iVideoControllerInitVideoController = initVideoController(this.mContext, this.mNVContext, this.mVideoView, nVPlayer);
        this.mVideoController = iVideoControllerInitVideoController;
        iVideoControllerInitVideoController.init();
        this.mVideoView.setBackgroundColor(0);
        this.prepared = true;
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onPause() {
        if (this.active) {
            this.mPlayer.setPlayWhenReady(false);
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
    public void onPlayerStateChanged(boolean z6, int i10) {
        NVVideoView nVVideoView;
        this.mVideoController.onPlayerStateChanged(z6, i10);
        if (debugEnable() && NVVideoView.isDebug() && (nVVideoView = this.mVideoView) != null) {
            nVVideoView.setPlayerStatus(i10);
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onRefresh() {
        if (this.active) {
            this.mPlayer.setPlayWhenReady(false);
            this.mPlayerPosition = -1;
            removeVideoView();
            this.listView.postDelayed(new c(this), 300L);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        this.mVideoController.onRenderedFirstFrame();
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onResume() {
        IVideoController iVideoController = this.mVideoController;
        if (iVideoController != null) {
            iVideoController.resume();
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListScrollListener
    public void onScroll(IVideoListView iVideoListView) {
        if (this.active) {
            listViewOnScroll();
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListScrollListener
    public void onScrollStateChanged(IVideoListView iVideoListView, int i10) {
        this.lastScrollState = i10;
        if (i10 == 0 && this.active) {
            forceRefreshPlayerPosition();
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSizeChanged(int i10, int i11) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView != null) {
            nVVideoView.setVideoSize(i10, i11);
            if (debugEnable() && NVVideoView.isDebug()) {
                this.mVideoView.setResolutionText(i10, i11);
            }
        }
    }

    protected void quickSetting(INVPlayer iNVPlayer, NVMediaSource nVMediaSource, Surface surface) {
        List<Media> list;
        if (nVMediaSource == null || (list = nVMediaSource.mediaList) == null || list.size() <= 1) {
            this.currentMediaSource = nVMediaSource;
            iNVPlayer.quickSetting(this.mContext, nVMediaSource, surface);
            return;
        }
        NVMediaSource nVMediaSourceM1628clone = nVMediaSource.m1628clone();
        nVMediaSourceM1628clone.mediaList = new ArrayList();
        nVMediaSourceM1628clone.mediaList.add(nVMediaSource.mediaList.get(0));
        iNVPlayer.quickSetting(this.mContext, nVMediaSourceM1628clone, surface);
        this.currentMediaSource = nVMediaSourceM1628clone;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void refreshPlayerPosition() {
        IVideoListView iVideoListView;
        Object tag;
        StrategyInfo strategyInfo;
        ObjectNode objectNode;
        Area areaFindShownInAdapter;
        if (this.active && (iVideoListView = this.listView) != null && this.mVideoView != null && this.lastScrollState == 0) {
            if (!iVideoListView.isShown()) {
                if (this.mPlayerPosition != -1) {
                    reset();
                    return;
                }
                return;
            }
            this.playerPositionChanged = false;
            int i10 = this.mPlayerPosition;
            areaName = null;
            areaName = null;
            String areaName = null;
            if (i10 != -1) {
                IVideoListView iVideoListView2 = this.listView;
                View childAt = getChildAt(iVideoListView2, i10 - iVideoListView2.getFirstVisiblePosition());
                if (childAt != null && getVisibilityPercentage(childAt) >= getVisibilityPercentage()) {
                    if (this.mPlayer.isPlaying()) {
                        return;
                    }
                    if (this.mPlayer != null) {
                        int i11 = R.id.video_tag_nvObj;
                        NVObject nVObject = childAt.getTag(i11) == null ? null : (NVObject) childAt.getTag(i11);
                        NVMediaSource mediaSource = this.mPlayer.getMediaSource();
                        if (mediaSource != null) {
                            mediaSource.setNvObject(nVObject);
                            mediaSource.setNVContext(this.mNVContext);
                            this.mPlayer.getVideoLogHelper().resetIds();
                            int i12 = R.id.video_tag_view_id;
                            int iIntValue = childAt.getTag(i12) != null ? ((Integer) childAt.getTag(i12)).intValue() : 0;
                            View viewFindViewById = iIntValue != 0 ? childAt.findViewById(iIntValue) : null;
                            if (viewFindViewById != null && (areaFindShownInAdapter = LogUtils.findShownInAdapter(viewFindViewById)) != null && areaFindShownInAdapter.getAreaName() != null) {
                                areaName = areaFindShownInAdapter.getAreaName();
                            }
                            if (areaName == null) {
                                areaName = this.areaName;
                            }
                            mediaSource.setAreaName(areaName);
                        }
                    }
                    this.mPlayer.setVideoListener(this);
                    this.mPlayer.setVideoSurface(this.mSurface);
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
                int i13 = R.id.video_tag_view_id;
                int iIntValue2 = childAt2.getTag(i13) != null ? ((Integer) childAt2.getTag(i13)).intValue() : 0;
                if (iIntValue2 == 0 || this.mVideoView == null) {
                    return;
                }
                View viewFindViewById2 = childAt2.findViewById(iIntValue2);
                int i14 = R.id.video_tag_media;
                Object tag2 = childAt2.getTag(i14);
                if (tag2 == null) {
                    return;
                }
                NVMediaSource nVMediaSource = (NVMediaSource) tag2;
                Media firstMedia = nVMediaSource.getFirstMedia();
                int i15 = R.id.video_tag_nvObj;
                NVObject nVObject2 = childAt2.getTag(i15) == null ? null : (NVObject) childAt2.getTag(i15);
                this.mVideoView.setPredictedRatio(com.narvii.nvplayerview.Utils.predictRatio(this.mNVContext, firstMedia));
                if (NVVideoView.isDebug() && (nVObject2 instanceof Feed) && (strategyInfo = (StrategyInfo) JacksonUtils.readAs(((Feed) nVObject2).getStrategyInfo(), StrategyInfo.class)) != null && (objectNode = strategyInfo.debugInfo) != null) {
                    this.mVideoView.setStrategyInfoText(objectNode);
                }
                if (this.mVideoView.getParent() != null) {
                    removeVideoView();
                    this.mPlayer.setPlayWhenReady(false);
                    this.mVideoView.setTag(i14, null);
                    this.mVideoView.setTag(i15, null);
                }
                this.desView = childAt2;
                Object tag3 = childAt2.getTag(R.id.video_tag_scaleType);
                this.mVideoView.setScaleType(tag3 == null ? 0 : ((Integer) tag3).intValue());
                this.mVideoController.setUIVisibility(((nVObject2 instanceof Blog) && ((Blog) nVObject2).type == 6) ? 4 : 0);
                ViewGroup viewGroup = (ViewGroup) viewFindViewById2.getParent();
                if (viewFindViewById2 instanceof NVImageView) {
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
                    ViewGroup frameLayout = new FrameLayout(this.mContext);
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
                nVMediaSource.setNvObject(nVObject2);
                nVMediaSource.setNVContext(this.mNVContext);
                Area areaFindShownInAdapter2 = LogUtils.findShownInAdapter(viewFindViewById2);
                String areaName2 = (areaFindShownInAdapter2 == null || areaFindShownInAdapter2.getAreaName() == null) ? null : areaFindShownInAdapter2.getAreaName();
                if (areaName2 == null) {
                    areaName2 = this.areaName;
                }
                nVMediaSource.setAreaName(areaName2);
                this.mVideoView.hidePlayButton(true);
                viewFindViewById2.addOnLayoutChangeListener(this);
                quickSetting(this.mPlayer, nVMediaSource, null);
                this.mVideoView.setTag(i14, nVMediaSource);
                this.mVideoView.setTag(i15, nVObject2);
                this.mPlayerPosition = desiredPlayerPosition;
                startPreload();
                Object tag4 = childAt2.getTag(R.id.video_tag_clickable);
                if (!(tag4 instanceof Boolean) || ((Boolean) tag4).booleanValue()) {
                    this.mVideoView.setClickable(true);
                    this.mVideoView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nvplayerview.delegate.d
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f2562a.lambda$refreshPlayerPosition$0(childAt2, view);
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
                int i16 = R.id.video_tag_nvObj;
                NVObject nVObject3 = childAt3.getTag(i16) != null ? (NVObject) childAt3.getTag(i16) : null;
                NVImageView nvImageView = this.mVideoView.getNvImageView();
                if ((nvImageView instanceof ISecretImage) && forceBlur() && (nVObject3 instanceof Blog)) {
                    ((ISecretImage) nvImageView).setImageForceBlur((Media) tag, true, 6291456);
                }
            }
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

    public void reset() {
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setPlayWhenReady(false);
        }
        this.mPlayerPosition = -1;
        removeVideoView();
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void setAutoPlay(boolean z6) {
        if (z6) {
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

    public NVVideoListDelegate(NVContext nVContext, Activity activity) {
        this.mNVContext = nVContext;
        this.mContext = activity;
        activity.getWindow().setFormat(-3);
    }

    protected void addVideoView(ViewGroup viewGroup, NVVideoView nVVideoView, ViewGroup.LayoutParams layoutParams) {
        viewGroup.addView(nVVideoView, layoutParams);
    }

    protected View getChildAt(IVideoListView iVideoListView, int i10) {
        return iVideoListView.getChildAt(i10);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onCachedBytesRead(long j6, long j10) {
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

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void onDestroy() {
        removeVideoView();
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.clearVideoListener(this);
        }
        this.mVideoView = null;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPreloadStrategyChanged(String str) {
        if (debugEnable() && this.mVideoView != null && NVVideoView.isDebug()) {
            this.mVideoView.setPreloadStrategyInfo(str);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderFirstFrameInterval(long j6) {
        NVVideoView nVVideoView;
        if (debugEnable() && NVVideoView.isDebug() && (nVVideoView = this.mVideoView) != null) {
            nVVideoView.setFromSettingToFirstFrameText(j6);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSupportLowResVideo(boolean z6) {
        if (debugEnable() && this.mVideoView != null && NVVideoView.isDebug()) {
            this.mVideoView.setVideoSupportLowRes(z6);
        }
    }

    @Override // com.narvii.nvplayerview.delegate.IVideoListDelegate
    public void resetVideoView() {
        reset();
    }

    protected void startPreload() {
        if (!supportPreload() || this.mPlayerPosition == -1) {
            return;
        }
        int totalCountInAdapter = this.listView.getTotalCountInAdapter();
        ArrayList arrayList = new ArrayList();
        boolean z6 = false;
        for (int i10 = 0; i10 < 2; i10++) {
            int i11 = this.mPlayerPosition + i10 + 1;
            if (i11 < totalCountInAdapter) {
                Object itemInAdapter = this.listView.getItemInAdapter(i11);
                if (itemInAdapter instanceof Feed) {
                    Feed feed = (Feed) itemInAdapter;
                    if (feed.getPreviewVideoList(false) != null && feed.getPreviewVideoList(false).size() >= 1) {
                        Media media = feed.getPreviewVideoList(false).get(0);
                        if (media.isVideo() && !TextUtils.isEmpty(media.url)) {
                            arrayList.add(media);
                            z6 = true;
                        }
                    }
                }
            }
        }
        if (z6) {
            this.mPlayer.preload(this.mNVContext, arrayList);
        }
    }

    public static void markVideoCell(View view, int i10, List<Media> list, Media media, NVObject nVObject, int i11, boolean z6) {
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
            view.setTag(R.id.video_tag_view_id, Integer.valueOf(i10));
            view.setTag(R.id.video_tag_media, nVMediaSource);
            view.setTag(R.id.video_tag_nvObj, nVObject);
            view.setTag(R.id.video_tag_scaleType, Integer.valueOf(i11));
            view.setTag(R.id.video_tag_cover_media, media);
            view.setTag(R.id.video_tag_clickable, Boolean.valueOf(z6));
            return;
        }
        view.setTag(R.id.video_tag_view_id, 0);
        view.setTag(R.id.video_tag_media, null);
        view.setTag(R.id.video_tag_nvObj, null);
        view.setTag(R.id.video_tag_scaleType, 0);
        view.setTag(R.id.video_tag_cover_media, null);
        view.setTag(R.id.video_tag_clickable, Boolean.FALSE);
    }
}
