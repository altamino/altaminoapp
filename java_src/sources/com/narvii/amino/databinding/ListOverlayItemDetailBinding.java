package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.influencer.FansOnlyPostMask;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.ScrollInterceptNestedFrameLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class ListOverlayItemDetailBinding implements ViewBinding {

    @NonNull
    public final FullscreenBackgroundView background;

    @NonNull
    public final DetailDisabledBarBinding disabledBar;

    @NonNull
    public final FansOnlyPostMask fansOnlyPostMask;

    @NonNull
    public final ScrollInterceptNestedFrameLayout listFrame;

    @NonNull
    public final OverlayLayout overlay;

    @NonNull
    public final RealtimeBlurView overlayBlurBg;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final ScrollInterceptNestedFrameLayout rootView;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public final FrameLayout videoOverlay;

    @NonNull
    public static ListOverlayItemDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScrollInterceptNestedFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListOverlayItemDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.list_overlay_item_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListOverlayItemDetailBinding(@NonNull ScrollInterceptNestedFrameLayout scrollInterceptNestedFrameLayout, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull DetailDisabledBarBinding detailDisabledBarBinding, @NonNull FansOnlyPostMask fansOnlyPostMask, @NonNull ScrollInterceptNestedFrameLayout scrollInterceptNestedFrameLayout2, @NonNull OverlayLayout overlayLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull SpinningView spinningView, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = scrollInterceptNestedFrameLayout;
        this.background = fullscreenBackgroundView;
        this.disabledBar = detailDisabledBarBinding;
        this.fansOnlyPostMask = fansOnlyPostMask;
        this.listFrame = scrollInterceptNestedFrameLayout2;
        this.overlay = overlayLayout;
        this.overlayBlurBg = realtimeBlurView;
        this.progress = spinningView;
        this.swipeRefresh = swipeRefreshLayout;
        this.videoOverlay = frameLayout;
    }

    @NonNull
    public static ListOverlayItemDetailBinding bind(@NonNull View view) {
        int i10 = R.id.background;
        FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.background);
        if (fullscreenBackgroundView != null) {
            i10 = R.id.disabled_bar;
            View viewA = ViewBindings.a(view, R.id.disabled_bar);
            if (viewA != null) {
                DetailDisabledBarBinding detailDisabledBarBindingBind = DetailDisabledBarBinding.bind(viewA);
                i10 = R.id.fans_only_post_mask;
                FansOnlyPostMask fansOnlyPostMask = (FansOnlyPostMask) ViewBindings.a(view, R.id.fans_only_post_mask);
                if (fansOnlyPostMask != null) {
                    ScrollInterceptNestedFrameLayout scrollInterceptNestedFrameLayout = (ScrollInterceptNestedFrameLayout) view;
                    i10 = R.id.overlay;
                    OverlayLayout overlayLayout = (OverlayLayout) ViewBindings.a(view, R.id.overlay);
                    if (overlayLayout != null) {
                        i10 = R.id.overlay_blur_bg;
                        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.overlay_blur_bg);
                        if (realtimeBlurView != null) {
                            i10 = android.R.id.progress;
                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                            if (spinningView != null) {
                                i10 = R.id.swipe_refresh;
                                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(view, R.id.swipe_refresh);
                                if (swipeRefreshLayout != null) {
                                    i10 = R.id.video_overlay;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.video_overlay);
                                    if (frameLayout != null) {
                                        return new ListOverlayItemDetailBinding(scrollInterceptNestedFrameLayout, fullscreenBackgroundView, detailDisabledBarBindingBind, fansOnlyPostMask, scrollInterceptNestedFrameLayout, overlayLayout, realtimeBlurView, spinningView, swipeRefreshLayout, frameLayout);
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
}
