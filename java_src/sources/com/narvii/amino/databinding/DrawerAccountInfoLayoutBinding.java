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
import com.narvii.checkin.CheckInCircle;
import com.narvii.checkin.CheckInStreakBar;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.MoodView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.PushButton;
import com.narvii.widget.PushEffectLayout;
import com.narvii.widget.RankingTitleView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class DrawerAccountInfoLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView accountNotice;

    @NonNull
    public final PushEffectLayout accountNoticeContainer;

    @NonNull
    public final ImageView aminoLogo;

    @NonNull
    public final ThumbImageView aminoStaffBadge;

    @NonNull
    public final View avatarBg;

    @NonNull
    public final CheckInStreakBar checkInStreakBar;

    @NonNull
    public final View checkInStreakBarMarginTop;

    @NonNull
    public final LinearLayout checkInStreakContainer;

    @NonNull
    public final PushButton drawerCheckin;

    @NonNull
    public final PushButton drawerCheckinFake;

    @NonNull
    public final PushButton drawerCheckinHold;

    @NonNull
    public final TextView drawerCheckinHoldText;

    @NonNull
    public final CheckInCircle drawerCheckinRing;

    @NonNull
    public final FrameLayout drawerLoginHint;

    @NonNull
    public final NVImageView drawerLogo;

    @NonNull
    public final AutoSizingTextView drawerTitle;

    @NonNull
    public final LinearLayout drawerTop;

    @NonNull
    public final RankingTitleView drawerUserRole;

    @NonNull
    public final MoodView mood;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final View notActivated;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView strikeLost;

    private DrawerAccountInfoLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull PushEffectLayout pushEffectLayout, @NonNull ImageView imageView, @NonNull ThumbImageView thumbImageView, @NonNull View view, @NonNull CheckInStreakBar checkInStreakBar, @NonNull View view2, @NonNull LinearLayout linearLayout2, @NonNull PushButton pushButton, @NonNull PushButton pushButton2, @NonNull PushButton pushButton3, @NonNull TextView textView2, @NonNull CheckInCircle checkInCircle, @NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull LinearLayout linearLayout3, @NonNull RankingTitleView rankingTitleView, @NonNull MoodView moodView, @NonNull NicknameView nicknameView, @NonNull View view3, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.accountNotice = textView;
        this.accountNoticeContainer = pushEffectLayout;
        this.aminoLogo = imageView;
        this.aminoStaffBadge = thumbImageView;
        this.avatarBg = view;
        this.checkInStreakBar = checkInStreakBar;
        this.checkInStreakBarMarginTop = view2;
        this.checkInStreakContainer = linearLayout2;
        this.drawerCheckin = pushButton;
        this.drawerCheckinFake = pushButton2;
        this.drawerCheckinHold = pushButton3;
        this.drawerCheckinHoldText = textView2;
        this.drawerCheckinRing = checkInCircle;
        this.drawerLoginHint = frameLayout;
        this.drawerLogo = nVImageView;
        this.drawerTitle = autoSizingTextView;
        this.drawerTop = linearLayout3;
        this.drawerUserRole = rankingTitleView;
        this.mood = moodView;
        this.nickname = nicknameView;
        this.notActivated = view3;
        this.strikeLost = textView3;
    }

    @NonNull
    public static DrawerAccountInfoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerAccountInfoLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.account_notice;
        TextView textView = (TextView) ViewBindings.a(view, R.id.account_notice);
        if (textView != null) {
            i10 = R.id.account_notice_container;
            PushEffectLayout pushEffectLayout = (PushEffectLayout) ViewBindings.a(view, R.id.account_notice_container);
            if (pushEffectLayout != null) {
                i10 = R.id.amino_logo;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.amino_logo);
                if (imageView != null) {
                    i10 = R.id.amino_staff_badge;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.amino_staff_badge);
                    if (thumbImageView != null) {
                        i10 = R.id.avatar_bg;
                        View viewA = ViewBindings.a(view, R.id.avatar_bg);
                        if (viewA != null) {
                            i10 = R.id.check_in_streak_bar;
                            CheckInStreakBar checkInStreakBar = (CheckInStreakBar) ViewBindings.a(view, R.id.check_in_streak_bar);
                            if (checkInStreakBar != null) {
                                i10 = R.id.check_in_streak_bar_margin_top;
                                View viewA2 = ViewBindings.a(view, R.id.check_in_streak_bar_margin_top);
                                if (viewA2 != null) {
                                    i10 = R.id.check_in_streak_container;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.check_in_streak_container);
                                    if (linearLayout != null) {
                                        i10 = R.id.drawer_checkin;
                                        PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.drawer_checkin);
                                        if (pushButton != null) {
                                            i10 = R.id.drawer_checkin_fake;
                                            PushButton pushButton2 = (PushButton) ViewBindings.a(view, R.id.drawer_checkin_fake);
                                            if (pushButton2 != null) {
                                                i10 = R.id.drawer_checkin_hold;
                                                PushButton pushButton3 = (PushButton) ViewBindings.a(view, R.id.drawer_checkin_hold);
                                                if (pushButton3 != null) {
                                                    i10 = R.id.drawer_checkin_hold_text;
                                                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.drawer_checkin_hold_text);
                                                    if (textView2 != null) {
                                                        i10 = R.id.drawer_checkin_ring;
                                                        CheckInCircle checkInCircle = (CheckInCircle) ViewBindings.a(view, R.id.drawer_checkin_ring);
                                                        if (checkInCircle != null) {
                                                            i10 = R.id.drawer_login_hint;
                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.drawer_login_hint);
                                                            if (frameLayout != null) {
                                                                i10 = R.id.drawer_logo;
                                                                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.drawer_logo);
                                                                if (nVImageView != null) {
                                                                    i10 = R.id.drawer_title;
                                                                    AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.drawer_title);
                                                                    if (autoSizingTextView != null) {
                                                                        LinearLayout linearLayout2 = (LinearLayout) view;
                                                                        i10 = R.id.drawer_user_role;
                                                                        RankingTitleView rankingTitleView = (RankingTitleView) ViewBindings.a(view, R.id.drawer_user_role);
                                                                        if (rankingTitleView != null) {
                                                                            i10 = R.id.mood;
                                                                            MoodView moodView = (MoodView) ViewBindings.a(view, R.id.mood);
                                                                            if (moodView != null) {
                                                                                i10 = R.id.nickname;
                                                                                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                                                                if (nicknameView != null) {
                                                                                    i10 = R.id.not_activated;
                                                                                    View viewA3 = ViewBindings.a(view, R.id.not_activated);
                                                                                    if (viewA3 != null) {
                                                                                        i10 = R.id.strike_lost;
                                                                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.strike_lost);
                                                                                        if (textView3 != null) {
                                                                                            return new DrawerAccountInfoLayoutBinding(linearLayout2, textView, pushEffectLayout, imageView, thumbImageView, viewA, checkInStreakBar, viewA2, linearLayout, pushButton, pushButton2, pushButton3, textView2, checkInCircle, frameLayout, nVImageView, autoSizingTextView, linearLayout2, rankingTitleView, moodView, nicknameView, viewA3, textView3);
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
    public static DrawerAccountInfoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_account_info_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
