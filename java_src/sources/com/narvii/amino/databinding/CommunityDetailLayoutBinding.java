package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.widget.PromotionalImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class CommunityDetailLayoutBinding implements ViewBinding {

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final RelativeLayout communityDetailFrame;

    @NonNull
    public final PromotionalImageView communityPromotionImage;

    @NonNull
    public final OverlayListPlaceholder fakeActionBarLayout;

    @NonNull
    public final ItemCommunityDetailJoinLayoutBinding hoverJoinContainer;

    @NonNull
    public final LiveLayerOnlineBar onlineBar;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static CommunityDetailLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommunityDetailLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.community_detail_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommunityDetailLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull RelativeLayout relativeLayout, @NonNull PromotionalImageView promotionalImageView, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull ItemCommunityDetailJoinLayoutBinding itemCommunityDetailJoinLayoutBinding, @NonNull LiveLayerOnlineBar liveLayerOnlineBar) {
        this.rootView = frameLayout;
        this.blur = realtimeBlurView;
        this.communityDetailFrame = relativeLayout;
        this.communityPromotionImage = promotionalImageView;
        this.fakeActionBarLayout = overlayListPlaceholder;
        this.hoverJoinContainer = itemCommunityDetailJoinLayoutBinding;
        this.onlineBar = liveLayerOnlineBar;
    }

    @NonNull
    public static CommunityDetailLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.blur;
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
        if (realtimeBlurView != null) {
            i10 = R.id.community_detail_frame;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.community_detail_frame);
            if (relativeLayout != null) {
                i10 = R.id.community_promotion_image;
                PromotionalImageView promotionalImageView = (PromotionalImageView) ViewBindings.a(view, R.id.community_promotion_image);
                if (promotionalImageView != null) {
                    i10 = R.id.fake_action_bar_layout;
                    OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.fake_action_bar_layout);
                    if (overlayListPlaceholder != null) {
                        i10 = R.id.hover_join_container;
                        View viewA = ViewBindings.a(view, R.id.hover_join_container);
                        if (viewA != null) {
                            ItemCommunityDetailJoinLayoutBinding itemCommunityDetailJoinLayoutBindingBind = ItemCommunityDetailJoinLayoutBinding.bind(viewA);
                            i10 = R.id.online_bar;
                            LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) ViewBindings.a(view, R.id.online_bar);
                            if (liveLayerOnlineBar != null) {
                                return new CommunityDetailLayoutBinding((FrameLayout) view, realtimeBlurView, relativeLayout, promotionalImageView, overlayListPlaceholder, itemCommunityDetailJoinLayoutBindingBind, liveLayerOnlineBar);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
