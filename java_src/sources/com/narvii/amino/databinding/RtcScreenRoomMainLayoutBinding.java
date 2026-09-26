package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.screenroom.widgets.SRLiveUserLayout;
import com.narvii.chat.screenroom.widgets.SRVideoController;
import com.narvii.chat.screenroom.widgets.ScreenRoomMainLayout;
import com.narvii.chat.screenroom.widgets.VideoPlayView;
import com.narvii.chat.screenroom.widgets.VideoWatchOverlayLayout;
import com.narvii.chat.screenroom.widgets.VideoWatchView;
import com.narvii.chat.video.layout.VVContentLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.RoundFrameLayout;
import com.narvii.widget.ScrollInterceptFrameLayout;
import com.narvii.widget.SpinningView;
import com.narvii.widget.VerticalSeekBar;
import com.narvii.widget.VerticalSeekBarWrapper;

/* JADX INFO: loaded from: classes6.dex */
public final class RtcScreenRoomMainLayoutBinding implements ViewBinding {

    @NonNull
    public final VVContentLayout activingContainer;

    @NonNull
    public final FrameLayout channelOverlay;

    @NonNull
    public final RoundFrameLayout hostItemContainer;

    @NonNull
    public final SRLiveUserLayout liveUserContainer;

    @NonNull
    private final ScreenRoomMainLayout rootView;

    @NonNull
    public final ScreenRoomMainLayout rtcScreenRoomLayout;

    @NonNull
    public final ScrollInterceptFrameLayout rtcScreenRoomScrollIntercept;

    @NonNull
    public final SpinningView srLoading;

    @NonNull
    public final VideoPlayView videoPlayerView;

    @NonNull
    public final VideoWatchView videoWatchView;

    @NonNull
    public final VideoWatchOverlayLayout viewerOverlayLayout;

    @NonNull
    public final TextView viewerPlayStatus;

    @NonNull
    public final LinearLayout viewerPlayStatusContainer;

    @NonNull
    public final NVImageView viewerThumbnail;

    @NonNull
    public final SRVideoController viewerVideoController;

    @NonNull
    public final VerticalSeekBar volumeController;

    @NonNull
    public final VerticalSeekBarWrapper volumeControllerWrapper;

    @NonNull
    public final FrameLayout volumeSeekBarContainer;

    private RtcScreenRoomMainLayoutBinding(@NonNull ScreenRoomMainLayout screenRoomMainLayout, @NonNull VVContentLayout vVContentLayout, @NonNull FrameLayout frameLayout, @NonNull RoundFrameLayout roundFrameLayout, @NonNull SRLiveUserLayout sRLiveUserLayout, @NonNull ScreenRoomMainLayout screenRoomMainLayout2, @NonNull ScrollInterceptFrameLayout scrollInterceptFrameLayout, @NonNull SpinningView spinningView, @NonNull VideoPlayView videoPlayView, @NonNull VideoWatchView videoWatchView, @NonNull VideoWatchOverlayLayout videoWatchOverlayLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull SRVideoController sRVideoController, @NonNull VerticalSeekBar verticalSeekBar, @NonNull VerticalSeekBarWrapper verticalSeekBarWrapper, @NonNull FrameLayout frameLayout2) {
        this.rootView = screenRoomMainLayout;
        this.activingContainer = vVContentLayout;
        this.channelOverlay = frameLayout;
        this.hostItemContainer = roundFrameLayout;
        this.liveUserContainer = sRLiveUserLayout;
        this.rtcScreenRoomLayout = screenRoomMainLayout2;
        this.rtcScreenRoomScrollIntercept = scrollInterceptFrameLayout;
        this.srLoading = spinningView;
        this.videoPlayerView = videoPlayView;
        this.videoWatchView = videoWatchView;
        this.viewerOverlayLayout = videoWatchOverlayLayout;
        this.viewerPlayStatus = textView;
        this.viewerPlayStatusContainer = linearLayout;
        this.viewerThumbnail = nVImageView;
        this.viewerVideoController = sRVideoController;
        this.volumeController = verticalSeekBar;
        this.volumeControllerWrapper = verticalSeekBarWrapper;
        this.volumeSeekBarContainer = frameLayout2;
    }

    @NonNull
    public static RtcScreenRoomMainLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScreenRoomMainLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RtcScreenRoomMainLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.activing_container;
        VVContentLayout vVContentLayout = (VVContentLayout) ViewBindings.a(view, R.id.activing_container);
        if (vVContentLayout != null) {
            i10 = R.id.channel_overlay;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.channel_overlay);
            if (frameLayout != null) {
                i10 = R.id.host_item_container;
                RoundFrameLayout roundFrameLayout = (RoundFrameLayout) ViewBindings.a(view, R.id.host_item_container);
                if (roundFrameLayout != null) {
                    i10 = R.id.live_user_container;
                    SRLiveUserLayout sRLiveUserLayout = (SRLiveUserLayout) ViewBindings.a(view, R.id.live_user_container);
                    if (sRLiveUserLayout != null) {
                        ScreenRoomMainLayout screenRoomMainLayout = (ScreenRoomMainLayout) view;
                        i10 = R.id.rtc_screen_room_scroll_intercept;
                        ScrollInterceptFrameLayout scrollInterceptFrameLayout = (ScrollInterceptFrameLayout) ViewBindings.a(view, R.id.rtc_screen_room_scroll_intercept);
                        if (scrollInterceptFrameLayout != null) {
                            i10 = R.id.sr_loading;
                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.sr_loading);
                            if (spinningView != null) {
                                i10 = R.id.video_player_view;
                                VideoPlayView videoPlayView = (VideoPlayView) ViewBindings.a(view, R.id.video_player_view);
                                if (videoPlayView != null) {
                                    i10 = R.id.video_watch_view;
                                    VideoWatchView videoWatchView = (VideoWatchView) ViewBindings.a(view, R.id.video_watch_view);
                                    if (videoWatchView != null) {
                                        i10 = R.id.viewer_overlay_layout;
                                        VideoWatchOverlayLayout videoWatchOverlayLayout = (VideoWatchOverlayLayout) ViewBindings.a(view, R.id.viewer_overlay_layout);
                                        if (videoWatchOverlayLayout != null) {
                                            i10 = R.id.viewer_play_status;
                                            TextView textView = (TextView) ViewBindings.a(view, R.id.viewer_play_status);
                                            if (textView != null) {
                                                i10 = R.id.viewer_play_status_container;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.viewer_play_status_container);
                                                if (linearLayout != null) {
                                                    i10 = R.id.viewer_thumbnail;
                                                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.viewer_thumbnail);
                                                    if (nVImageView != null) {
                                                        i10 = R.id.viewer_video_controller;
                                                        SRVideoController sRVideoController = (SRVideoController) ViewBindings.a(view, R.id.viewer_video_controller);
                                                        if (sRVideoController != null) {
                                                            i10 = R.id.volume_controller;
                                                            VerticalSeekBar verticalSeekBar = (VerticalSeekBar) ViewBindings.a(view, R.id.volume_controller);
                                                            if (verticalSeekBar != null) {
                                                                i10 = R.id.volume_controller_wrapper;
                                                                VerticalSeekBarWrapper verticalSeekBarWrapper = (VerticalSeekBarWrapper) ViewBindings.a(view, R.id.volume_controller_wrapper);
                                                                if (verticalSeekBarWrapper != null) {
                                                                    i10 = R.id.volume_seek_bar_container;
                                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.volume_seek_bar_container);
                                                                    if (frameLayout2 != null) {
                                                                        return new RtcScreenRoomMainLayoutBinding(screenRoomMainLayout, vVContentLayout, frameLayout, roundFrameLayout, sRLiveUserLayout, screenRoomMainLayout, scrollInterceptFrameLayout, spinningView, videoPlayView, videoWatchView, videoWatchOverlayLayout, textView, linearLayout, nVImageView, sRVideoController, verticalSeekBar, verticalSeekBarWrapper, frameLayout2);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static RtcScreenRoomMainLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.rtc_screen_room_main_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
