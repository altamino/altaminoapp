package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentGlobalProfileBinding implements ViewBinding {

    @NonNull
    public final FrameLayout actionbarLeft;

    @NonNull
    public final UserAvatarLayoutLargeBinding aminoTeamUserAvatar;

    @NonNull
    public final TextView aminoTeamUserName;

    @NonNull
    public final NVAppBarLayout appbarLayout;

    @NonNull
    public final UserAvatarLayout avatarTop;

    @NonNull
    public final FullscreenBackgroundView background;

    @NonNull
    public final LinearLayout bodyContent;

    @NonNull
    public final TextView disableContentHint;

    @NonNull
    public final ThumbImageView disabledUserAvatar;

    @NonNull
    public final TextView disabledUserId;

    @NonNull
    public final TextView disabledUserName;

    @NonNull
    public final FlexLayout disabledUserPage;

    @NonNull
    public final LinearLayout fakeActionBar;

    @NonNull
    public final LinearLayout loginMainLayout;

    @NonNull
    public final FlexLayout loginPage;

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    public final FrameLayout moreView;

    @NonNull
    public final LayoutGlobalProfileHeaderBinding profile;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ImageView settingsImageView;

    @NonNull
    public final FrameLayout settingsView;

    @NonNull
    public final FrameLayout shareView;

    @NonNull
    public final Button submitFeedbak;

    @NonNull
    public final SwipeRefreshLayout swipeRefreshLayout;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final FlexLayout teamAminoPage;

    @NonNull
    public final NVViewPager viewpager;

    private FragmentGlobalProfileBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull UserAvatarLayoutLargeBinding userAvatarLayoutLargeBinding, @NonNull TextView textView, @NonNull NVAppBarLayout nVAppBarLayout, @NonNull UserAvatarLayout userAvatarLayout, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull FlexLayout flexLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull LayoutGlobalProfileHeaderBinding layoutGlobalProfileHeaderBinding, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull Button button, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull FlexLayout flexLayout3, @NonNull NVViewPager nVViewPager) {
        this.rootView = frameLayout;
        this.actionbarLeft = frameLayout2;
        this.aminoTeamUserAvatar = userAvatarLayoutLargeBinding;
        this.aminoTeamUserName = textView;
        this.appbarLayout = nVAppBarLayout;
        this.avatarTop = userAvatarLayout;
        this.background = fullscreenBackgroundView;
        this.bodyContent = linearLayout;
        this.disableContentHint = textView2;
        this.disabledUserAvatar = thumbImageView;
        this.disabledUserId = textView3;
        this.disabledUserName = textView4;
        this.disabledUserPage = flexLayout;
        this.fakeActionBar = linearLayout2;
        this.loginMainLayout = linearLayout3;
        this.loginPage = flexLayout2;
        this.masterBackground = frameLayout3;
        this.moreView = frameLayout4;
        this.profile = layoutGlobalProfileHeaderBinding;
        this.settingsImageView = imageView;
        this.settingsView = frameLayout5;
        this.shareView = frameLayout6;
        this.submitFeedbak = button;
        this.swipeRefreshLayout = swipeRefreshLayout;
        this.tabs = nVPagerTabLayout;
        this.teamAminoPage = flexLayout3;
        this.viewpager = nVViewPager;
    }

    @NonNull
    public static FragmentGlobalProfileBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentGlobalProfileBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_left;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.actionbar_left);
        if (frameLayout != null) {
            i10 = R.id.amino_team_user_avatar;
            View viewA = ViewBindings.a(view, R.id.amino_team_user_avatar);
            if (viewA != null) {
                UserAvatarLayoutLargeBinding userAvatarLayoutLargeBindingBind = UserAvatarLayoutLargeBinding.bind(viewA);
                i10 = R.id.amino_team_user_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.amino_team_user_name);
                if (textView != null) {
                    i10 = R.id.appbar_layout;
                    NVAppBarLayout nVAppBarLayout = (NVAppBarLayout) ViewBindings.a(view, R.id.appbar_layout);
                    if (nVAppBarLayout != null) {
                        i10 = R.id.avatar_top;
                        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) ViewBindings.a(view, R.id.avatar_top);
                        if (userAvatarLayout != null) {
                            i10 = R.id.background;
                            FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.background);
                            if (fullscreenBackgroundView != null) {
                                i10 = R.id.body_content;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.body_content);
                                if (linearLayout != null) {
                                    i10 = R.id.disable_content_hint;
                                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.disable_content_hint);
                                    if (textView2 != null) {
                                        i10 = R.id.disabled_user_avatar;
                                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.disabled_user_avatar);
                                        if (thumbImageView != null) {
                                            i10 = R.id.disabled_user_id;
                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.disabled_user_id);
                                            if (textView3 != null) {
                                                i10 = R.id.disabled_user_name;
                                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.disabled_user_name);
                                                if (textView4 != null) {
                                                    i10 = R.id.disabled_user_page;
                                                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.disabled_user_page);
                                                    if (flexLayout != null) {
                                                        i10 = R.id.fake_action_bar;
                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.fake_action_bar);
                                                        if (linearLayout2 != null) {
                                                            i10 = R.id.login_main_layout;
                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.login_main_layout);
                                                            if (linearLayout3 != null) {
                                                                i10 = R.id.login_page;
                                                                FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.login_page);
                                                                if (flexLayout2 != null) {
                                                                    i10 = R.id.master_background;
                                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.master_background);
                                                                    if (frameLayout2 != null) {
                                                                        i10 = R.id.more_view;
                                                                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.more_view);
                                                                        if (frameLayout3 != null) {
                                                                            i10 = R.id.profile;
                                                                            View viewA2 = ViewBindings.a(view, R.id.profile);
                                                                            if (viewA2 != null) {
                                                                                LayoutGlobalProfileHeaderBinding layoutGlobalProfileHeaderBindingBind = LayoutGlobalProfileHeaderBinding.bind(viewA2);
                                                                                i10 = R.id.settings_image_view;
                                                                                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.settings_image_view);
                                                                                if (imageView != null) {
                                                                                    i10 = R.id.settings_view;
                                                                                    FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.settings_view);
                                                                                    if (frameLayout4 != null) {
                                                                                        i10 = R.id.share_view;
                                                                                        FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(view, R.id.share_view);
                                                                                        if (frameLayout5 != null) {
                                                                                            i10 = R.id.submit_feedbak;
                                                                                            Button button = (Button) ViewBindings.a(view, R.id.submit_feedbak);
                                                                                            if (button != null) {
                                                                                                i10 = R.id.swipe_refresh_layout;
                                                                                                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(view, R.id.swipe_refresh_layout);
                                                                                                if (swipeRefreshLayout != null) {
                                                                                                    i10 = R.id.tabs;
                                                                                                    NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
                                                                                                    if (nVPagerTabLayout != null) {
                                                                                                        i10 = R.id.team_amino_page;
                                                                                                        FlexLayout flexLayout3 = (FlexLayout) ViewBindings.a(view, R.id.team_amino_page);
                                                                                                        if (flexLayout3 != null) {
                                                                                                            i10 = R.id.viewpager;
                                                                                                            NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                                                                                                            if (nVViewPager != null) {
                                                                                                                return new FragmentGlobalProfileBinding((FrameLayout) view, frameLayout, userAvatarLayoutLargeBindingBind, textView, nVAppBarLayout, userAvatarLayout, fullscreenBackgroundView, linearLayout, textView2, thumbImageView, textView3, textView4, flexLayout, linearLayout2, linearLayout3, flexLayout2, frameLayout2, frameLayout3, layoutGlobalProfileHeaderBindingBind, imageView, frameLayout4, frameLayout5, button, swipeRefreshLayout, nVPagerTabLayout, flexLayout3, nVViewPager);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentGlobalProfileBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_global_profile, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
