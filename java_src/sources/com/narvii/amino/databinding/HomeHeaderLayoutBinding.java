package com.narvii.amino.databinding;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.amino.speeddial.SpeedDialHeaderLayout;
import com.narvii.amino.speeddial.SpeedDialRecycleView;
import com.narvii.checkin.CheckInStreakBar;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.FakeHeightViewWrapper;
import com.narvii.widget.PushButton;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes.dex */
public final class HomeHeaderLayoutBinding implements ViewBinding {

    @NonNull
    public final MediaLabAdView adItemRectangle;

    @NonNull
    public final TextView addSr;

    @NonNull
    public final CheckInStreakBar checkInStreakBar;

    @NonNull
    public final LinearLayout checkInStreakContainer;

    @NonNull
    public final LinearLayout checkInSuccessContainer;

    @NonNull
    public final PushButton checkinButton;

    @NonNull
    public final TintButton checkinClose;

    @NonNull
    public final RelativeLayout checkinModule;

    @NonNull
    public final ProgressBar checkinProgress;

    @NonNull
    public final TextView checkinText;

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final AutoSizingTextView communityName;

    @NonNull
    public final OverlayListPlaceholder fakeActionBar;

    @NonNull
    public final FakeHeightViewWrapper fakeHeightViewWrapper;

    @NonNull
    public final FrameLayout followSuccessLayout;

    @NonNull
    public final LinearLayout headerMainContent;

    @NonNull
    public final View headerMainContentBg;

    @NonNull
    public final SpeedDialHeaderLayout homeHeaderLayout;

    @NonNull
    public final TextView leaderboard;

    @NonNull
    public final FrameLayout liveMarqueeContainer;

    @NonNull
    public final FrameLayout liveMarqueePlaceholder;

    @NonNull
    public final TextView liveMarqueeTitle;

    @NonNull
    public final AutoSizingTextView memberCount;

    @NonNull
    public final LinearLayout memberLayout;

    @NonNull
    public final TextView memberText;

    @NonNull
    public final TextView removeSr;

    @NonNull
    private final SpeedDialHeaderLayout rootView;

    @NonNull
    public final SpeedDialRecycleView speedRecycle;

    private HomeHeaderLayoutBinding(@NonNull SpeedDialHeaderLayout speedDialHeaderLayout, @NonNull MediaLabAdView mediaLabAdView, @NonNull TextView textView, @NonNull CheckInStreakBar checkInStreakBar, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull PushButton pushButton, @NonNull TintButton tintButton, @NonNull RelativeLayout relativeLayout, @NonNull ProgressBar progressBar, @NonNull TextView textView2, @NonNull CommunityIconView communityIconView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull FakeHeightViewWrapper fakeHeightViewWrapper, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout3, @NonNull View view, @NonNull SpeedDialHeaderLayout speedDialHeaderLayout2, @NonNull TextView textView3, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull TextView textView4, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull LinearLayout linearLayout4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull SpeedDialRecycleView speedDialRecycleView) {
        this.rootView = speedDialHeaderLayout;
        this.adItemRectangle = mediaLabAdView;
        this.addSr = textView;
        this.checkInStreakBar = checkInStreakBar;
        this.checkInStreakContainer = linearLayout;
        this.checkInSuccessContainer = linearLayout2;
        this.checkinButton = pushButton;
        this.checkinClose = tintButton;
        this.checkinModule = relativeLayout;
        this.checkinProgress = progressBar;
        this.checkinText = textView2;
        this.communityIcon = communityIconView;
        this.communityName = autoSizingTextView;
        this.fakeActionBar = overlayListPlaceholder;
        this.fakeHeightViewWrapper = fakeHeightViewWrapper;
        this.followSuccessLayout = frameLayout;
        this.headerMainContent = linearLayout3;
        this.headerMainContentBg = view;
        this.homeHeaderLayout = speedDialHeaderLayout2;
        this.leaderboard = textView3;
        this.liveMarqueeContainer = frameLayout2;
        this.liveMarqueePlaceholder = frameLayout3;
        this.liveMarqueeTitle = textView4;
        this.memberCount = autoSizingTextView2;
        this.memberLayout = linearLayout4;
        this.memberText = textView5;
        this.removeSr = textView6;
        this.speedRecycle = speedDialRecycleView;
    }

    @NonNull
    public static HomeHeaderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SpeedDialHeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HomeHeaderLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.ad_item_rectangle;
        MediaLabAdView mediaLabAdView = (MediaLabAdView) ViewBindings.a(view, R.id.ad_item_rectangle);
        if (mediaLabAdView != null) {
            i10 = R.id.add_sr;
            TextView textView = (TextView) ViewBindings.a(view, R.id.add_sr);
            if (textView != null) {
                i10 = R.id.check_in_streak_bar;
                CheckInStreakBar checkInStreakBar = (CheckInStreakBar) ViewBindings.a(view, R.id.check_in_streak_bar);
                if (checkInStreakBar != null) {
                    i10 = R.id.check_in_streak_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.check_in_streak_container);
                    if (linearLayout != null) {
                        i10 = R.id.check_in_success_container;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.check_in_success_container);
                        if (linearLayout2 != null) {
                            i10 = R.id.checkin_button;
                            PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.checkin_button);
                            if (pushButton != null) {
                                i10 = R.id.checkin_close;
                                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.checkin_close);
                                if (tintButton != null) {
                                    i10 = R.id.checkin_module;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.checkin_module);
                                    if (relativeLayout != null) {
                                        i10 = R.id.checkin_progress;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.checkin_progress);
                                        if (progressBar != null) {
                                            i10 = R.id.checkin_text;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.checkin_text);
                                            if (textView2 != null) {
                                                i10 = R.id.community_icon;
                                                CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
                                                if (communityIconView != null) {
                                                    i10 = R.id.community_name;
                                                    AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.community_name);
                                                    if (autoSizingTextView != null) {
                                                        i10 = R.id.fake_action_bar;
                                                        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.fake_action_bar);
                                                        if (overlayListPlaceholder != null) {
                                                            i10 = R.id.fake_height_view_wrapper;
                                                            FakeHeightViewWrapper fakeHeightViewWrapper = (FakeHeightViewWrapper) ViewBindings.a(view, R.id.fake_height_view_wrapper);
                                                            if (fakeHeightViewWrapper != null) {
                                                                i10 = R.id.follow_success_layout;
                                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.follow_success_layout);
                                                                if (frameLayout != null) {
                                                                    i10 = R.id.header_main_content;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.header_main_content);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.header_main_content_bg;
                                                                        View viewA = ViewBindings.a(view, R.id.header_main_content_bg);
                                                                        if (viewA != null) {
                                                                            SpeedDialHeaderLayout speedDialHeaderLayout = (SpeedDialHeaderLayout) view;
                                                                            i10 = R.id.leaderboard;
                                                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.leaderboard);
                                                                            if (textView3 != null) {
                                                                                i10 = R.id.live_marquee_container;
                                                                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.live_marquee_container);
                                                                                if (frameLayout2 != null) {
                                                                                    i10 = R.id.live_marquee_placeholder;
                                                                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.live_marquee_placeholder);
                                                                                    if (frameLayout3 != null) {
                                                                                        i10 = R.id.live_marquee_title;
                                                                                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.live_marquee_title);
                                                                                        if (textView4 != null) {
                                                                                            i10 = R.id.member_count;
                                                                                            AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.member_count);
                                                                                            if (autoSizingTextView2 != null) {
                                                                                                i10 = R.id.member_layout;
                                                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.member_layout);
                                                                                                if (linearLayout4 != null) {
                                                                                                    i10 = R.id.member_text;
                                                                                                    TextView textView5 = (TextView) ViewBindings.a(view, R.id.member_text);
                                                                                                    if (textView5 != null) {
                                                                                                        i10 = R.id.remove_sr;
                                                                                                        TextView textView6 = (TextView) ViewBindings.a(view, R.id.remove_sr);
                                                                                                        if (textView6 != null) {
                                                                                                            i10 = R.id.speed_recycle;
                                                                                                            SpeedDialRecycleView speedDialRecycleView = (SpeedDialRecycleView) ViewBindings.a(view, R.id.speed_recycle);
                                                                                                            if (speedDialRecycleView != null) {
                                                                                                                return new HomeHeaderLayoutBinding(speedDialHeaderLayout, mediaLabAdView, textView, checkInStreakBar, linearLayout, linearLayout2, pushButton, tintButton, relativeLayout, progressBar, textView2, communityIconView, autoSizingTextView, overlayListPlaceholder, fakeHeightViewWrapper, frameLayout, linearLayout3, viewA, speedDialHeaderLayout, textView3, frameLayout2, frameLayout3, textView4, autoSizingTextView2, linearLayout4, textView5, textView6, speedDialRecycleView);
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
    public static HomeHeaderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.home_header_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
