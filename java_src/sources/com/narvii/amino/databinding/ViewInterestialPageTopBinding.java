package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.user.follow.UserFollowView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class ViewInterestialPageTopBinding implements ViewBinding {

    @NonNull
    public final TextView aminoId;

    @NonNull
    public final UserAvatarLayoutLargeBinding aminoTeamUserAvatar;

    @NonNull
    public final FrameLayout followContainer;

    @NonNull
    public final UserFollowView followView;

    @NonNull
    public final NVImageView likeImage;

    @NonNull
    public final LinearLayout likeImageContainer;

    @NonNull
    public final TextView likeText;

    @NonNull
    public final SpinningView loadingView;

    @NonNull
    public final TextView nickName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout tippingContainer;

    @NonNull
    public final ImageView tippingImage;

    @NonNull
    public final TextView tippingText;

    @NonNull
    public static ViewInterestialPageTopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ViewInterestialPageTopBinding bind(@NonNull View view) {
        int i10 = R.id.amino_id;
        TextView textView = (TextView) ViewBindings.a(view, R.id.amino_id);
        if (textView != null) {
            i10 = R.id.amino_team_user_avatar;
            View viewA = ViewBindings.a(view, R.id.amino_team_user_avatar);
            if (viewA != null) {
                UserAvatarLayoutLargeBinding userAvatarLayoutLargeBindingBind = UserAvatarLayoutLargeBinding.bind(viewA);
                i10 = R.id.follow_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.follow_container);
                if (frameLayout != null) {
                    i10 = R.id.follow_view;
                    UserFollowView userFollowView = (UserFollowView) ViewBindings.a(view, R.id.follow_view);
                    if (userFollowView != null) {
                        i10 = R.id.like_image;
                        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.like_image);
                        if (nVImageView != null) {
                            i10 = R.id.like_image_container;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.like_image_container);
                            if (linearLayout != null) {
                                i10 = R.id.like_text;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.like_text);
                                if (textView2 != null) {
                                    i10 = R.id.loading_view;
                                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.loading_view);
                                    if (spinningView != null) {
                                        i10 = R.id.nick_name;
                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.nick_name);
                                        if (textView3 != null) {
                                            i10 = R.id.tipping_container;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.tipping_container);
                                            if (linearLayout2 != null) {
                                                i10 = R.id.tipping_image;
                                                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.tipping_image);
                                                if (imageView != null) {
                                                    i10 = R.id.tipping_text;
                                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.tipping_text);
                                                    if (textView4 != null) {
                                                        return new ViewInterestialPageTopBinding((LinearLayout) view, textView, userAvatarLayoutLargeBindingBind, frameLayout, userFollowView, nVImageView, linearLayout, textView2, spinningView, textView3, linearLayout2, imageView, textView4);
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
    public static ViewInterestialPageTopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.view_interestial_page_top, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ViewInterestialPageTopBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull UserAvatarLayoutLargeBinding userAvatarLayoutLargeBinding, @NonNull FrameLayout frameLayout, @NonNull UserFollowView userFollowView, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull SpinningView spinningView, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.aminoId = textView;
        this.aminoTeamUserAvatar = userAvatarLayoutLargeBinding;
        this.followContainer = frameLayout;
        this.followView = userFollowView;
        this.likeImage = nVImageView;
        this.likeImageContainer = linearLayout2;
        this.likeText = textView2;
        this.loadingView = spinningView;
        this.nickName = textView3;
        this.tippingContainer = linearLayout3;
        this.tippingImage = imageView;
        this.tippingText = textView4;
    }
}
