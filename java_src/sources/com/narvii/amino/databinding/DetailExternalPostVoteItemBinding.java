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
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes11.dex */
public final class DetailExternalPostVoteItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final TextView datetime;

    @NonNull
    public final View divider;

    @NonNull
    public final TextView nickname;

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
    public static DetailExternalPostVoteItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailExternalPostVoteItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_external_post_vote_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailExternalPostVoteItemBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull VoteIcon voteIcon, @NonNull SpinningView spinningView) {
        this.rootView = linearLayout;
        this.avatar = thumbImageView;
        this.datetime = textView;
        this.divider = view;
        this.nickname = textView2;
        this.userLayout = relativeLayout;
        this.voteBtn = linearLayout2;
        this.voteCount = textView3;
        this.voteIcon = voteIcon;
        this.voteProgress = spinningView;
    }

    @NonNull
    public static DetailExternalPostVoteItemBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
        if (thumbImageView != null) {
            i10 = R.id.datetime;
            TextView textView = (TextView) ViewBindings.a(view, R.id.datetime);
            if (textView != null) {
                i10 = R.id.divider;
                View viewA = ViewBindings.a(view, R.id.divider);
                if (viewA != null) {
                    i10 = R.id.nickname;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.nickname);
                    if (textView2 != null) {
                        i10 = R.id.user_layout;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.user_layout);
                        if (relativeLayout != null) {
                            i10 = R.id.vote_btn;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.vote_btn);
                            if (linearLayout != null) {
                                i10 = R.id.vote_count;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.vote_count);
                                if (textView3 != null) {
                                    i10 = R.id.vote_icon;
                                    VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.vote_icon);
                                    if (voteIcon != null) {
                                        i10 = R.id.vote_progress;
                                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.vote_progress);
                                        if (spinningView != null) {
                                            return new DetailExternalPostVoteItemBinding((LinearLayout) view, thumbImageView, textView, viewA, textView2, relativeLayout, linearLayout, textView3, voteIcon, spinningView);
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
}
