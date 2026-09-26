package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.monetization.store.view.TippingRippleView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.cofetti.CofettiView;

/* JADX INFO: loaded from: classes8.dex */
public final class TippingFeedbackViewLayoutBinding implements ViewBinding {

    @NonNull
    public final UserAvatarLayoutLargeBinding avatarLayout;

    @NonNull
    public final FlexLayout avatarView;

    @NonNull
    public final CofettiView cofettiView;

    @NonNull
    public final ImageView coinCountIv;

    @NonNull
    public final TextView coinCountTv;

    @NonNull
    public final ImageView coinIv;

    @NonNull
    public final ImageView coinMotionIv;

    @NonNull
    public final ImageView coinMotionIv2;

    @NonNull
    public final ImageView coinMotionIv3;

    @NonNull
    public final ImageView coinMotionIv4;

    @NonNull
    public final NVImageView coinShinyIv;

    @NonNull
    public final NVImageView fireworksIv;

    @NonNull
    public final ImageView nicknameBackgroundIv;

    @NonNull
    public final TextView nicknameTv;

    @NonNull
    public final TippingRippleView rippleView;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView thankYouTv;

    @NonNull
    public final FlexLayout tippingContent;

    private TippingFeedbackViewLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull UserAvatarLayoutLargeBinding userAvatarLayoutLargeBinding, @NonNull FlexLayout flexLayout, @NonNull CofettiView cofettiView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2, @NonNull ImageView imageView7, @NonNull TextView textView2, @NonNull TippingRippleView tippingRippleView, @NonNull TextView textView3, @NonNull FlexLayout flexLayout2) {
        this.rootView = frameLayout;
        this.avatarLayout = userAvatarLayoutLargeBinding;
        this.avatarView = flexLayout;
        this.cofettiView = cofettiView;
        this.coinCountIv = imageView;
        this.coinCountTv = textView;
        this.coinIv = imageView2;
        this.coinMotionIv = imageView3;
        this.coinMotionIv2 = imageView4;
        this.coinMotionIv3 = imageView5;
        this.coinMotionIv4 = imageView6;
        this.coinShinyIv = nVImageView;
        this.fireworksIv = nVImageView2;
        this.nicknameBackgroundIv = imageView7;
        this.nicknameTv = textView2;
        this.rippleView = tippingRippleView;
        this.thankYouTv = textView3;
        this.tippingContent = flexLayout2;
    }

    @NonNull
    public static TippingFeedbackViewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TippingFeedbackViewLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_layout;
        View viewA = ViewBindings.a(view, R.id.avatar_layout);
        if (viewA != null) {
            UserAvatarLayoutLargeBinding userAvatarLayoutLargeBindingBind = UserAvatarLayoutLargeBinding.bind(viewA);
            i10 = R.id.avatar_view;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.avatar_view);
            if (flexLayout != null) {
                i10 = R.id.cofetti_view;
                CofettiView cofettiView = (CofettiView) ViewBindings.a(view, R.id.cofetti_view);
                if (cofettiView != null) {
                    i10 = R.id.coin_count_iv;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.coin_count_iv);
                    if (imageView != null) {
                        i10 = R.id.coin_count_tv;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.coin_count_tv);
                        if (textView != null) {
                            i10 = R.id.coin_iv;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.coin_iv);
                            if (imageView2 != null) {
                                i10 = R.id.coin_motion_iv;
                                ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.coin_motion_iv);
                                if (imageView3 != null) {
                                    i10 = R.id.coin_motion_iv2;
                                    ImageView imageView4 = (ImageView) ViewBindings.a(view, R.id.coin_motion_iv2);
                                    if (imageView4 != null) {
                                        i10 = R.id.coin_motion_iv3;
                                        ImageView imageView5 = (ImageView) ViewBindings.a(view, R.id.coin_motion_iv3);
                                        if (imageView5 != null) {
                                            i10 = R.id.coin_motion_iv4;
                                            ImageView imageView6 = (ImageView) ViewBindings.a(view, R.id.coin_motion_iv4);
                                            if (imageView6 != null) {
                                                i10 = R.id.coin_shiny_iv;
                                                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.coin_shiny_iv);
                                                if (nVImageView != null) {
                                                    i10 = R.id.fireworks_iv;
                                                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.fireworks_iv);
                                                    if (nVImageView2 != null) {
                                                        i10 = R.id.nickname_background_iv;
                                                        ImageView imageView7 = (ImageView) ViewBindings.a(view, R.id.nickname_background_iv);
                                                        if (imageView7 != null) {
                                                            i10 = R.id.nickname_tv;
                                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.nickname_tv);
                                                            if (textView2 != null) {
                                                                i10 = R.id.ripple_view;
                                                                TippingRippleView tippingRippleView = (TippingRippleView) ViewBindings.a(view, R.id.ripple_view);
                                                                if (tippingRippleView != null) {
                                                                    i10 = R.id.thank_you_tv;
                                                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.thank_you_tv);
                                                                    if (textView3 != null) {
                                                                        i10 = R.id.tipping_content;
                                                                        FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.tipping_content);
                                                                        if (flexLayout2 != null) {
                                                                            return new TippingFeedbackViewLayoutBinding((FrameLayout) view, userAvatarLayoutLargeBindingBind, flexLayout, cofettiView, imageView, textView, imageView2, imageView3, imageView4, imageView5, imageView6, nVImageView, nVImageView2, imageView7, textView2, tippingRippleView, textView3, flexLayout2);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static TippingFeedbackViewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tipping_feedback_view_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
