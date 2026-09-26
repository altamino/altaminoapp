package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.influencer.FansOnlyPostMask;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.ScrollInterceptNestedFrameLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes5.dex */
public final class FeedDetailFrameBinding implements ViewBinding {

    @NonNull
    public final FrameLayout FrameLayoutRoot;

    @NonNull
    public final OverlayListPlaceholder actionBarOverlay;

    @NonNull
    public final FullscreenBackgroundView background;

    @NonNull
    public final FrameLayout bottomContainer;

    @NonNull
    public final DetailDisabledBarBinding disabledBar;

    @NonNull
    public final OverlayListPlaceholder fakeActionBar;

    @NonNull
    public final FansOnlyPostMask fansOnlyPostMask;

    @NonNull
    public final ScrollInterceptNestedFrameLayout listFrame;

    @NonNull
    public final RealtimeBlurView overlayBlurBg;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FrameLayout videoOverlay;

    @NonNull
    public static FeedDetailFrameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedDetailFrameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_detail_frame, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedDetailFrameBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull FrameLayout frameLayout2, @NonNull DetailDisabledBarBinding detailDisabledBarBinding, @NonNull OverlayListPlaceholder overlayListPlaceholder2, @NonNull FansOnlyPostMask fansOnlyPostMask, @NonNull ScrollInterceptNestedFrameLayout scrollInterceptNestedFrameLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout3) {
        this.rootView = linearLayout;
        this.FrameLayoutRoot = frameLayout;
        this.actionBarOverlay = overlayListPlaceholder;
        this.background = fullscreenBackgroundView;
        this.bottomContainer = frameLayout2;
        this.disabledBar = detailDisabledBarBinding;
        this.fakeActionBar = overlayListPlaceholder2;
        this.fansOnlyPostMask = fansOnlyPostMask;
        this.listFrame = scrollInterceptNestedFrameLayout;
        this.overlayBlurBg = realtimeBlurView;
        this.progress = spinningView;
        this.videoOverlay = frameLayout3;
    }

    @NonNull
    public static FeedDetailFrameBinding bind(@NonNull View view) {
        int i10 = R.id._frame_layout_root;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id._frame_layout_root);
        if (frameLayout != null) {
            i10 = R.id.action_bar_overlay;
            OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.action_bar_overlay);
            if (overlayListPlaceholder != null) {
                i10 = R.id.background;
                FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.background);
                if (fullscreenBackgroundView != null) {
                    i10 = R.id.bottom_container;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.bottom_container);
                    if (frameLayout2 != null) {
                        i10 = R.id.disabled_bar;
                        View viewA = ViewBindings.a(view, R.id.disabled_bar);
                        if (viewA != null) {
                            DetailDisabledBarBinding detailDisabledBarBindingBind = DetailDisabledBarBinding.bind(viewA);
                            i10 = R.id.fake_action_bar;
                            OverlayListPlaceholder overlayListPlaceholder2 = (OverlayListPlaceholder) ViewBindings.a(view, R.id.fake_action_bar);
                            if (overlayListPlaceholder2 != null) {
                                i10 = R.id.fans_only_post_mask;
                                FansOnlyPostMask fansOnlyPostMask = (FansOnlyPostMask) ViewBindings.a(view, R.id.fans_only_post_mask);
                                if (fansOnlyPostMask != null) {
                                    i10 = R.id.list_frame;
                                    ScrollInterceptNestedFrameLayout scrollInterceptNestedFrameLayout = (ScrollInterceptNestedFrameLayout) ViewBindings.a(view, R.id.list_frame);
                                    if (scrollInterceptNestedFrameLayout != null) {
                                        i10 = R.id.overlay_blur_bg;
                                        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.overlay_blur_bg);
                                        if (realtimeBlurView != null) {
                                            i10 = android.R.id.progress;
                                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                                            if (spinningView != null) {
                                                i10 = R.id.video_overlay;
                                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.video_overlay);
                                                if (frameLayout3 != null) {
                                                    return new FeedDetailFrameBinding((LinearLayout) view, frameLayout, overlayListPlaceholder, fullscreenBackgroundView, frameLayout2, detailDisabledBarBindingBind, overlayListPlaceholder2, fansOnlyPostMask, scrollInterceptNestedFrameLayout, realtimeBlurView, spinningView, frameLayout3);
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
}
