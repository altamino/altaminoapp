package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes4.dex */
public final class DetailUserVoteItemBinding implements ViewBinding {

    @NonNull
    public final TextView datetime;

    @NonNull
    public final View divider;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final RelativeLayout userLayout;

    @NonNull
    public final LinearLayout voteBtn;

    @NonNull
    public final TextView voteCount;

    @NonNull
    public final VoteIcon voteIcon;

    @NonNull
    public final SpinningView voteProgress;

    @NonNull
    public static DetailUserVoteItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailUserVoteItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_user_vote_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailUserVoteItemBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull View view, @NonNull NicknameView nicknameView, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull VoteIcon voteIcon, @NonNull SpinningView spinningView) {
        this.rootView = linearLayout;
        this.datetime = textView;
        this.divider = view;
        this.nickname = nicknameView;
        this.userLayout = relativeLayout;
        this.voteBtn = linearLayout2;
        this.voteCount = textView2;
        this.voteIcon = voteIcon;
        this.voteProgress = spinningView;
    }

    @NonNull
    public static DetailUserVoteItemBinding bind(@NonNull View view) {
        int i10 = R.id.datetime;
        TextView textView = (TextView) ViewBindings.a(view, R.id.datetime);
        if (textView != null) {
            i10 = R.id.divider;
            View viewA = ViewBindings.a(view, R.id.divider);
            if (viewA != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                if (nicknameView != null) {
                    i10 = R.id.user_layout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.user_layout);
                    if (relativeLayout != null) {
                        i10 = R.id.vote_btn;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.vote_btn);
                        if (linearLayout != null) {
                            i10 = R.id.vote_count;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.vote_count);
                            if (textView2 != null) {
                                i10 = R.id.vote_icon;
                                VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.vote_icon);
                                if (voteIcon != null) {
                                    i10 = R.id.vote_progress;
                                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.vote_progress);
                                    if (spinningView != null) {
                                        return new DetailUserVoteItemBinding((LinearLayout) view, textView, viewA, nicknameView, relativeLayout, linearLayout, textView2, voteIcon, spinningView);
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
