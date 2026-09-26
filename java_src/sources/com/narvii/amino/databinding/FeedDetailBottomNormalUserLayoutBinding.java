package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.BottomVoteIcon;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class FeedDetailBottomNormalUserLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView bottomBookmarkNormalHint;

    @NonNull
    public final LinearLayout bottomGoNextNormal;

    @NonNull
    public final TextView bottomGoNextNormalHint;

    @NonNull
    public final LinearLayout bottomSave;

    @NonNull
    public final LinearLayout bottomShare;

    @NonNull
    public final TextView bottomShareNormalHint;

    @NonNull
    public final LinearLayout bottomTipping;

    @NonNull
    public final TextView bottomTippingNormalHint;

    @NonNull
    public final LinearLayout bottomVote;

    @NonNull
    public final TextView bottomVoteNormalHint;

    @NonNull
    public final TintButton nextIconNormal;

    @NonNull
    public final LinearLayout normalUserContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView voteCount;

    @NonNull
    public final BottomVoteIcon voteIcon;

    @NonNull
    public final SpinningView voteProgress;

    private FeedDetailBottomNormalUserLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull LinearLayout linearLayout5, @NonNull TextView textView4, @NonNull LinearLayout linearLayout6, @NonNull TextView textView5, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout7, @NonNull TextView textView6, @NonNull BottomVoteIcon bottomVoteIcon, @NonNull SpinningView spinningView) {
        this.rootView = linearLayout;
        this.bottomBookmarkNormalHint = textView;
        this.bottomGoNextNormal = linearLayout2;
        this.bottomGoNextNormalHint = textView2;
        this.bottomSave = linearLayout3;
        this.bottomShare = linearLayout4;
        this.bottomShareNormalHint = textView3;
        this.bottomTipping = linearLayout5;
        this.bottomTippingNormalHint = textView4;
        this.bottomVote = linearLayout6;
        this.bottomVoteNormalHint = textView5;
        this.nextIconNormal = tintButton;
        this.normalUserContainer = linearLayout7;
        this.voteCount = textView6;
        this.voteIcon = bottomVoteIcon;
        this.voteProgress = spinningView;
    }

    @NonNull
    public static FeedDetailBottomNormalUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedDetailBottomNormalUserLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.bottom_bookmark_normal_hint;
        TextView textView = (TextView) ViewBindings.a(view, R.id.bottom_bookmark_normal_hint);
        if (textView != null) {
            i10 = R.id.bottom_go_next_normal;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.bottom_go_next_normal);
            if (linearLayout != null) {
                i10 = R.id.bottom_go_next_normal_hint;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.bottom_go_next_normal_hint);
                if (textView2 != null) {
                    i10 = R.id.bottom_save;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.bottom_save);
                    if (linearLayout2 != null) {
                        i10 = R.id.bottom_share;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.bottom_share);
                        if (linearLayout3 != null) {
                            i10 = R.id.bottom_share_normal_hint;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.bottom_share_normal_hint);
                            if (textView3 != null) {
                                i10 = R.id.bottom_tipping;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.bottom_tipping);
                                if (linearLayout4 != null) {
                                    i10 = R.id.bottom_tipping_normal_hint;
                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.bottom_tipping_normal_hint);
                                    if (textView4 != null) {
                                        i10 = R.id.bottom_vote;
                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.bottom_vote);
                                        if (linearLayout5 != null) {
                                            i10 = R.id.bottom_vote_normal_hint;
                                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.bottom_vote_normal_hint);
                                            if (textView5 != null) {
                                                i10 = R.id.next_icon_normal;
                                                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.next_icon_normal);
                                                if (tintButton != null) {
                                                    LinearLayout linearLayout6 = (LinearLayout) view;
                                                    i10 = R.id.vote_count;
                                                    TextView textView6 = (TextView) ViewBindings.a(view, R.id.vote_count);
                                                    if (textView6 != null) {
                                                        i10 = R.id.vote_icon;
                                                        BottomVoteIcon bottomVoteIcon = (BottomVoteIcon) ViewBindings.a(view, R.id.vote_icon);
                                                        if (bottomVoteIcon != null) {
                                                            i10 = R.id.vote_progress;
                                                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.vote_progress);
                                                            if (spinningView != null) {
                                                                return new FeedDetailBottomNormalUserLayoutBinding(linearLayout6, textView, linearLayout, textView2, linearLayout2, linearLayout3, textView3, linearLayout4, textView4, linearLayout5, textView5, tintButton, linearLayout6, textView6, bottomVoteIcon, spinningView);
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
    public static FeedDetailBottomNormalUserLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_detail_bottom_normal_user_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
