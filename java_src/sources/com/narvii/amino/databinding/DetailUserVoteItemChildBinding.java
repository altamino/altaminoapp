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

/* JADX INFO: loaded from: classes9.dex */
public final class DetailUserVoteItemChildBinding implements ViewBinding {

    @NonNull
    public final TextView datetime;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final RelativeLayout rootView;

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
    public static DetailUserVoteItemChildBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailUserVoteItemChildBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_user_vote_item_child, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailUserVoteItemChildBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull NicknameView nicknameView, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull VoteIcon voteIcon, @NonNull SpinningView spinningView) {
        this.rootView = relativeLayout;
        this.datetime = textView;
        this.nickname = nicknameView;
        this.userLayout = relativeLayout2;
        this.voteBtn = linearLayout;
        this.voteCount = textView2;
        this.voteIcon = voteIcon;
        this.voteProgress = spinningView;
    }

    @NonNull
    public static DetailUserVoteItemChildBinding bind(@NonNull View view) {
        int i10 = R.id.datetime;
        TextView textView = (TextView) ViewBindings.a(view, R.id.datetime);
        if (textView != null) {
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
                                    return new DetailUserVoteItemChildBinding((RelativeLayout) view, textView, nicknameView, relativeLayout, linearLayout, textView2, voteIcon, spinningView);
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
