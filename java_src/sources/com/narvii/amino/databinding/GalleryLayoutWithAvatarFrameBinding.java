package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.ShareMediaBar;

/* JADX INFO: loaded from: classes9.dex */
public final class GalleryLayoutWithAvatarFrameBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout avatarFrameBar;

    @NonNull
    public final StoreItemNameView avatarFrameName;

    @NonNull
    public final NVImageView avatarFramePreview;

    @NonNull
    public final FrameLayout avatarFrameRight;

    @NonNull
    public final StoreItemStatusView avatarFrameStatusView;

    @NonNull
    public final FrameLayout emptyAvatarFrameContainer;

    @NonNull
    public final RelativeLayout overlay;

    @NonNull
    public final NVViewPager pager;

    @NonNull
    public final ImageView rightChevron;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final ShareMediaBar shareMediaBar;

    @NonNull
    public final TextView text;

    @NonNull
    public static GalleryLayoutWithAvatarFrameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GalleryLayoutWithAvatarFrameBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.gallery_layout_with_avatar_frame, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GalleryLayoutWithAvatarFrameBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull StoreItemNameView storeItemNameView, @NonNull NVImageView nVImageView, @NonNull FrameLayout frameLayout, @NonNull StoreItemStatusView storeItemStatusView, @NonNull FrameLayout frameLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull NVViewPager nVViewPager, @NonNull ImageView imageView, @NonNull ShareMediaBar shareMediaBar, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.avatarFrameBar = relativeLayout2;
        this.avatarFrameName = storeItemNameView;
        this.avatarFramePreview = nVImageView;
        this.avatarFrameRight = frameLayout;
        this.avatarFrameStatusView = storeItemStatusView;
        this.emptyAvatarFrameContainer = frameLayout2;
        this.overlay = relativeLayout3;
        this.pager = nVViewPager;
        this.rightChevron = imageView;
        this.shareMediaBar = shareMediaBar;
        this.text = textView;
    }

    @NonNull
    public static GalleryLayoutWithAvatarFrameBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_frame_bar;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.avatar_frame_bar);
        if (relativeLayout != null) {
            i10 = R.id.avatar_frame_name;
            StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.avatar_frame_name);
            if (storeItemNameView != null) {
                i10 = R.id.avatar_frame_preview;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.avatar_frame_preview);
                if (nVImageView != null) {
                    i10 = R.id.avatar_frame_right;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.avatar_frame_right);
                    if (frameLayout != null) {
                        i10 = R.id.avatar_frame_status_view;
                        StoreItemStatusView storeItemStatusView = (StoreItemStatusView) ViewBindings.a(view, R.id.avatar_frame_status_view);
                        if (storeItemStatusView != null) {
                            i10 = R.id.empty_avatar_frame_container;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.empty_avatar_frame_container);
                            if (frameLayout2 != null) {
                                i10 = R.id.overlay;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, R.id.overlay);
                                if (relativeLayout2 != null) {
                                    i10 = R.id.pager;
                                    NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.pager);
                                    if (nVViewPager != null) {
                                        i10 = R.id.right_chevron;
                                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.right_chevron);
                                        if (imageView != null) {
                                            i10 = R.id.share_media_bar;
                                            ShareMediaBar shareMediaBar = (ShareMediaBar) ViewBindings.a(view, R.id.share_media_bar);
                                            if (shareMediaBar != null) {
                                                i10 = R.id.text;
                                                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                                                if (textView != null) {
                                                    return new GalleryLayoutWithAvatarFrameBinding((RelativeLayout) view, relativeLayout, storeItemNameView, nVImageView, frameLayout, storeItemStatusView, frameLayout2, relativeLayout2, nVViewPager, imageView, shareMediaBar, textView);
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
