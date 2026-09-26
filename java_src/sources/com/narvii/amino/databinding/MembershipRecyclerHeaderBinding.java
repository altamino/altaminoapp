package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVDrawableAnimatedView;
import com.narvii.widget.RandomBlinkingView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class MembershipRecyclerHeaderBinding implements ViewBinding {

    @NonNull
    public final ImageView avatarHalo;

    @NonNull
    public final View interceptClick;

    @NonNull
    public final CheckBox membershipAutoRenewCheckbox;

    @NonNull
    public final TextView membershipAutoRenewText;

    @NonNull
    public final FlexLayout membershipCard;

    @NonNull
    public final FlexLayout membershipCardBack;

    @NonNull
    public final ThumbImageView membershipCardBackBg;

    @NonNull
    public final ThumbImageView membershipCardBg;

    @NonNull
    public final ImageView membershipCardLogo;

    @NonNull
    public final ImageView membershipCardLogoSmall;

    @NonNull
    public final TextView membershipCardLogoText;

    @NonNull
    public final FlexLayout membershipHeader;

    @NonNull
    public final TextView membershipSince;

    @NonNull
    public final TextView membershipStartDate;

    @NonNull
    public final TextView membershipStartDateContent;

    @NonNull
    public final TextView membershipStatus;

    @NonNull
    public final TextView membershipSubscribtionDescription;

    @NonNull
    public final TextView nickname;

    @NonNull
    public final RelativeLayout overlay;

    @NonNull
    public final NVDrawableAnimatedView ripple;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final RandomBlinkingView starBlinkingView;

    @NonNull
    public final View stub1;

    @NonNull
    public final ThumbImageView subscribeBg;

    @NonNull
    public final TextView subscribeText;

    private MembershipRecyclerHeaderBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView2, @NonNull FlexLayout flexLayout3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull RelativeLayout relativeLayout2, @NonNull NVDrawableAnimatedView nVDrawableAnimatedView, @NonNull RandomBlinkingView randomBlinkingView, @NonNull View view2, @NonNull ThumbImageView thumbImageView3, @NonNull TextView textView9) {
        this.rootView = relativeLayout;
        this.avatarHalo = imageView;
        this.interceptClick = view;
        this.membershipAutoRenewCheckbox = checkBox;
        this.membershipAutoRenewText = textView;
        this.membershipCard = flexLayout;
        this.membershipCardBack = flexLayout2;
        this.membershipCardBackBg = thumbImageView;
        this.membershipCardBg = thumbImageView2;
        this.membershipCardLogo = imageView2;
        this.membershipCardLogoSmall = imageView3;
        this.membershipCardLogoText = textView2;
        this.membershipHeader = flexLayout3;
        this.membershipSince = textView3;
        this.membershipStartDate = textView4;
        this.membershipStartDateContent = textView5;
        this.membershipStatus = textView6;
        this.membershipSubscribtionDescription = textView7;
        this.nickname = textView8;
        this.overlay = relativeLayout2;
        this.ripple = nVDrawableAnimatedView;
        this.starBlinkingView = randomBlinkingView;
        this.stub1 = view2;
        this.subscribeBg = thumbImageView3;
        this.subscribeText = textView9;
    }

    @NonNull
    public static MembershipRecyclerHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MembershipRecyclerHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_halo;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.avatar_halo);
        if (imageView != null) {
            i10 = R.id.intercept_click;
            View viewA = ViewBindings.a(view, R.id.intercept_click);
            if (viewA != null) {
                i10 = R.id.membership_auto_renew_checkbox;
                CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.membership_auto_renew_checkbox);
                if (checkBox != null) {
                    i10 = R.id.membership_auto_renew_text;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.membership_auto_renew_text);
                    if (textView != null) {
                        i10 = R.id.membership_card;
                        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.membership_card);
                        if (flexLayout != null) {
                            i10 = R.id.membership_card_back;
                            FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.membership_card_back);
                            if (flexLayout2 != null) {
                                i10 = R.id.membership_card_back_bg;
                                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.membership_card_back_bg);
                                if (thumbImageView != null) {
                                    i10 = R.id.membership_card_bg;
                                    ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.membership_card_bg);
                                    if (thumbImageView2 != null) {
                                        i10 = R.id.membership_card_logo;
                                        ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.membership_card_logo);
                                        if (imageView2 != null) {
                                            i10 = R.id.membership_card_logo_small;
                                            ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.membership_card_logo_small);
                                            if (imageView3 != null) {
                                                i10 = R.id.membership_card_logo_text;
                                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.membership_card_logo_text);
                                                if (textView2 != null) {
                                                    i10 = R.id.membership_header;
                                                    FlexLayout flexLayout3 = (FlexLayout) ViewBindings.a(view, R.id.membership_header);
                                                    if (flexLayout3 != null) {
                                                        i10 = R.id.membership_since;
                                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.membership_since);
                                                        if (textView3 != null) {
                                                            i10 = R.id.membership_start_date;
                                                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.membership_start_date);
                                                            if (textView4 != null) {
                                                                i10 = R.id.membership_start_date_content;
                                                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.membership_start_date_content);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.membership_status;
                                                                    TextView textView6 = (TextView) ViewBindings.a(view, R.id.membership_status);
                                                                    if (textView6 != null) {
                                                                        i10 = R.id.membership_subscribtion_description;
                                                                        TextView textView7 = (TextView) ViewBindings.a(view, R.id.membership_subscribtion_description);
                                                                        if (textView7 != null) {
                                                                            i10 = R.id.nickname;
                                                                            TextView textView8 = (TextView) ViewBindings.a(view, R.id.nickname);
                                                                            if (textView8 != null) {
                                                                                RelativeLayout relativeLayout = (RelativeLayout) view;
                                                                                i10 = R.id.ripple;
                                                                                NVDrawableAnimatedView nVDrawableAnimatedView = (NVDrawableAnimatedView) ViewBindings.a(view, R.id.ripple);
                                                                                if (nVDrawableAnimatedView != null) {
                                                                                    i10 = R.id.star_blinking_view;
                                                                                    RandomBlinkingView randomBlinkingView = (RandomBlinkingView) ViewBindings.a(view, R.id.star_blinking_view);
                                                                                    if (randomBlinkingView != null) {
                                                                                        i10 = R.id.stub1;
                                                                                        View viewA2 = ViewBindings.a(view, R.id.stub1);
                                                                                        if (viewA2 != null) {
                                                                                            i10 = R.id.subscribe_bg;
                                                                                            ThumbImageView thumbImageView3 = (ThumbImageView) ViewBindings.a(view, R.id.subscribe_bg);
                                                                                            if (thumbImageView3 != null) {
                                                                                                i10 = R.id.subscribe_text;
                                                                                                TextView textView9 = (TextView) ViewBindings.a(view, R.id.subscribe_text);
                                                                                                if (textView9 != null) {
                                                                                                    return new MembershipRecyclerHeaderBinding(relativeLayout, imageView, viewA, checkBox, textView, flexLayout, flexLayout2, thumbImageView, thumbImageView2, imageView2, imageView3, textView2, flexLayout3, textView3, textView4, textView5, textView6, textView7, textView8, relativeLayout, nVDrawableAnimatedView, randomBlinkingView, viewA2, thumbImageView3, textView9);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MembershipRecyclerHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.membership_recycler_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
