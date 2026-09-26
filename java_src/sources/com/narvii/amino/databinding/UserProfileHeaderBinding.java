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
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.user.profile.HeaderLayout;
import com.narvii.user.title.UserTitleFlowView;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.BubbleBackground;
import com.narvii.widget.MoodView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.PressedFrameLayout;
import com.narvii.widget.RankingTitleView;
import com.narvii.widget.SlideshowView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class UserProfileHeaderBinding implements ViewBinding {

    @NonNull
    public final PressedFrameLayout achievements;

    @NonNull
    public final TextView achievementsHint;

    @NonNull
    public final ThumbImageView aminoStaffBadge;

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final BubbleBackground bubble;

    @NonNull
    public final LinearLayout buttonLayout;

    @NonNull
    public final LinearLayout chatButton;

    @NonNull
    public final FrameLayout chatLayout;

    @NonNull
    public final LinearLayout editButton;

    @NonNull
    public final View gradient;

    @NonNull
    public final LinearLayout headerMain;

    @NonNull
    public final RankingTitleView membershipTitle;

    @NonNull
    public final MoodView mood;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final HeaderLayout rootView;

    @NonNull
    public final LinearLayout scorebar;

    @NonNull
    public final SlideshowView slideshow;

    @NonNull
    public final ImageView streakBrokenTag;

    @NonNull
    public final NVImageView tempBackground;

    @NonNull
    public final UserAvatarLayout userAvatarLayout;

    @NonNull
    public final LinearLayout userFollower;

    @NonNull
    public final LinearLayout userFollowing;

    @NonNull
    public final AutoSizingTextView userNFollowers;

    @NonNull
    public final AutoSizingTextView userNFollowing;

    @NonNull
    public final AutoSizingTextView userNReputation;

    @NonNull
    public final View userProfileChatOnlineOval;

    @NonNull
    public final HeaderLayout userProfileHeader;

    @NonNull
    public final LinearLayout userReputation;

    @NonNull
    public final UserTitleFlowView userTitleFlow;

    private UserProfileHeaderBinding(@NonNull HeaderLayout headerLayout, @NonNull PressedFrameLayout pressedFrameLayout, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull RealtimeBlurView realtimeBlurView, @NonNull BubbleBackground bubbleBackground, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout3, @NonNull View view, @NonNull LinearLayout linearLayout4, @NonNull RankingTitleView rankingTitleView, @NonNull MoodView moodView, @NonNull NicknameView nicknameView, @NonNull LinearLayout linearLayout5, @NonNull SlideshowView slideshowView, @NonNull ImageView imageView, @NonNull NVImageView nVImageView, @NonNull UserAvatarLayout userAvatarLayout, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull AutoSizingTextView autoSizingTextView, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull AutoSizingTextView autoSizingTextView3, @NonNull View view2, @NonNull HeaderLayout headerLayout2, @NonNull LinearLayout linearLayout8, @NonNull UserTitleFlowView userTitleFlowView) {
        this.rootView = headerLayout;
        this.achievements = pressedFrameLayout;
        this.achievementsHint = textView;
        this.aminoStaffBadge = thumbImageView;
        this.blur = realtimeBlurView;
        this.bubble = bubbleBackground;
        this.buttonLayout = linearLayout;
        this.chatButton = linearLayout2;
        this.chatLayout = frameLayout;
        this.editButton = linearLayout3;
        this.gradient = view;
        this.headerMain = linearLayout4;
        this.membershipTitle = rankingTitleView;
        this.mood = moodView;
        this.nickname = nicknameView;
        this.scorebar = linearLayout5;
        this.slideshow = slideshowView;
        this.streakBrokenTag = imageView;
        this.tempBackground = nVImageView;
        this.userAvatarLayout = userAvatarLayout;
        this.userFollower = linearLayout6;
        this.userFollowing = linearLayout7;
        this.userNFollowers = autoSizingTextView;
        this.userNFollowing = autoSizingTextView2;
        this.userNReputation = autoSizingTextView3;
        this.userProfileChatOnlineOval = view2;
        this.userProfileHeader = headerLayout2;
        this.userReputation = linearLayout8;
        this.userTitleFlow = userTitleFlowView;
    }

    @NonNull
    public static UserProfileHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserProfileHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.achievements;
        PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, R.id.achievements);
        if (pressedFrameLayout != null) {
            i10 = R.id.achievements_hint;
            TextView textView = (TextView) ViewBindings.a(view, R.id.achievements_hint);
            if (textView != null) {
                i10 = R.id.amino_staff_badge;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.amino_staff_badge);
                if (thumbImageView != null) {
                    i10 = R.id.blur;
                    RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
                    if (realtimeBlurView != null) {
                        i10 = R.id.bubble;
                        BubbleBackground bubbleBackground = (BubbleBackground) ViewBindings.a(view, R.id.bubble);
                        if (bubbleBackground != null) {
                            i10 = R.id.button_layout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.button_layout);
                            if (linearLayout != null) {
                                i10 = R.id.chat_button;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.chat_button);
                                if (linearLayout2 != null) {
                                    i10 = R.id.chat_layout;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.chat_layout);
                                    if (frameLayout != null) {
                                        i10 = R.id.edit_button;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.edit_button);
                                        if (linearLayout3 != null) {
                                            i10 = R.id.gradient;
                                            View viewA = ViewBindings.a(view, R.id.gradient);
                                            if (viewA != null) {
                                                i10 = R.id.header_main;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.header_main);
                                                if (linearLayout4 != null) {
                                                    i10 = R.id.membership_title;
                                                    RankingTitleView rankingTitleView = (RankingTitleView) ViewBindings.a(view, R.id.membership_title);
                                                    if (rankingTitleView != null) {
                                                        i10 = R.id.mood;
                                                        MoodView moodView = (MoodView) ViewBindings.a(view, R.id.mood);
                                                        if (moodView != null) {
                                                            i10 = R.id.nickname;
                                                            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                                            if (nicknameView != null) {
                                                                i10 = R.id.scorebar;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.scorebar);
                                                                if (linearLayout5 != null) {
                                                                    i10 = R.id.slideshow;
                                                                    SlideshowView slideshowView = (SlideshowView) ViewBindings.a(view, R.id.slideshow);
                                                                    if (slideshowView != null) {
                                                                        i10 = R.id.streak_broken_tag;
                                                                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.streak_broken_tag);
                                                                        if (imageView != null) {
                                                                            i10 = R.id.temp_background;
                                                                            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.temp_background);
                                                                            if (nVImageView != null) {
                                                                                i10 = R.id.user_avatar_layout;
                                                                                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) ViewBindings.a(view, R.id.user_avatar_layout);
                                                                                if (userAvatarLayout != null) {
                                                                                    i10 = R.id.user_follower;
                                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.user_follower);
                                                                                    if (linearLayout6 != null) {
                                                                                        i10 = R.id.user_following;
                                                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.a(view, R.id.user_following);
                                                                                        if (linearLayout7 != null) {
                                                                                            i10 = R.id.user_n_followers;
                                                                                            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.user_n_followers);
                                                                                            if (autoSizingTextView != null) {
                                                                                                i10 = R.id.user_n_following;
                                                                                                AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.user_n_following);
                                                                                                if (autoSizingTextView2 != null) {
                                                                                                    i10 = R.id.user_n_reputation;
                                                                                                    AutoSizingTextView autoSizingTextView3 = (AutoSizingTextView) ViewBindings.a(view, R.id.user_n_reputation);
                                                                                                    if (autoSizingTextView3 != null) {
                                                                                                        i10 = R.id.user_profile_chat_online_oval;
                                                                                                        View viewA2 = ViewBindings.a(view, R.id.user_profile_chat_online_oval);
                                                                                                        if (viewA2 != null) {
                                                                                                            HeaderLayout headerLayout = (HeaderLayout) view;
                                                                                                            i10 = R.id.user_reputation;
                                                                                                            LinearLayout linearLayout8 = (LinearLayout) ViewBindings.a(view, R.id.user_reputation);
                                                                                                            if (linearLayout8 != null) {
                                                                                                                i10 = R.id.user_title_flow;
                                                                                                                UserTitleFlowView userTitleFlowView = (UserTitleFlowView) ViewBindings.a(view, R.id.user_title_flow);
                                                                                                                if (userTitleFlowView != null) {
                                                                                                                    return new UserProfileHeaderBinding(headerLayout, pressedFrameLayout, textView, thumbImageView, realtimeBlurView, bubbleBackground, linearLayout, linearLayout2, frameLayout, linearLayout3, viewA, linearLayout4, rankingTitleView, moodView, nicknameView, linearLayout5, slideshowView, imageView, nVImageView, userAvatarLayout, linearLayout6, linearLayout7, autoSizingTextView, autoSizingTextView2, autoSizingTextView3, viewA2, headerLayout, linearLayout8, userTitleFlowView);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static UserProfileHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_profile_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
