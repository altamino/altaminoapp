package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes4.dex */
public final class FeedPopupMembersBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar1;

    @NonNull
    public final ThumbImageView avatar2;

    @NonNull
    public final ThumbImageView avatar3;

    @NonNull
    public final ThumbImageView avatar4;

    @NonNull
    public final ThumbImageView avatar5;

    @NonNull
    public final FrameLayout feedMember1;

    @NonNull
    public final FrameLayout feedMember2;

    @NonNull
    public final FrameLayout feedMember3;

    @NonNull
    public final FrameLayout feedMember4;

    @NonNull
    public final FrameLayout feedMember5;

    @NonNull
    public final VoteIcon icon1;

    @NonNull
    public final VoteIcon icon2;

    @NonNull
    public final VoteIcon icon3;

    @NonNull
    public final VoteIcon icon4;

    @NonNull
    public final VoteIcon icon5;

    @NonNull
    public final FontAwesomeView more;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final LinearLayout rootView;

    private FeedPopupMembersBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull ThumbImageView thumbImageView3, @NonNull ThumbImageView thumbImageView4, @NonNull ThumbImageView thumbImageView5, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull FrameLayout frameLayout5, @NonNull VoteIcon voteIcon, @NonNull VoteIcon voteIcon2, @NonNull VoteIcon voteIcon3, @NonNull VoteIcon voteIcon4, @NonNull VoteIcon voteIcon5, @NonNull FontAwesomeView fontAwesomeView, @NonNull SpinningView spinningView) {
        this.rootView = linearLayout;
        this.avatar1 = thumbImageView;
        this.avatar2 = thumbImageView2;
        this.avatar3 = thumbImageView3;
        this.avatar4 = thumbImageView4;
        this.avatar5 = thumbImageView5;
        this.feedMember1 = frameLayout;
        this.feedMember2 = frameLayout2;
        this.feedMember3 = frameLayout3;
        this.feedMember4 = frameLayout4;
        this.feedMember5 = frameLayout5;
        this.icon1 = voteIcon;
        this.icon2 = voteIcon2;
        this.icon3 = voteIcon3;
        this.icon4 = voteIcon4;
        this.icon5 = voteIcon5;
        this.more = fontAwesomeView;
        this.progress = spinningView;
    }

    @NonNull
    public static FeedPopupMembersBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedPopupMembersBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_1;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar_1);
        if (thumbImageView != null) {
            i10 = R.id.avatar_2;
            ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.avatar_2);
            if (thumbImageView2 != null) {
                i10 = R.id.avatar_3;
                ThumbImageView thumbImageView3 = (ThumbImageView) ViewBindings.a(view, R.id.avatar_3);
                if (thumbImageView3 != null) {
                    i10 = R.id.avatar_4;
                    ThumbImageView thumbImageView4 = (ThumbImageView) ViewBindings.a(view, R.id.avatar_4);
                    if (thumbImageView4 != null) {
                        i10 = R.id.avatar_5;
                        ThumbImageView thumbImageView5 = (ThumbImageView) ViewBindings.a(view, R.id.avatar_5);
                        if (thumbImageView5 != null) {
                            i10 = R.id.feed_member1;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.feed_member1);
                            if (frameLayout != null) {
                                i10 = R.id.feed_member2;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.feed_member2);
                                if (frameLayout2 != null) {
                                    i10 = R.id.feed_member3;
                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.feed_member3);
                                    if (frameLayout3 != null) {
                                        i10 = R.id.feed_member4;
                                        FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.feed_member4);
                                        if (frameLayout4 != null) {
                                            i10 = R.id.feed_member5;
                                            FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(view, R.id.feed_member5);
                                            if (frameLayout5 != null) {
                                                i10 = R.id.icon_1;
                                                VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.icon_1);
                                                if (voteIcon != null) {
                                                    i10 = R.id.icon_2;
                                                    VoteIcon voteIcon2 = (VoteIcon) ViewBindings.a(view, R.id.icon_2);
                                                    if (voteIcon2 != null) {
                                                        i10 = R.id.icon_3;
                                                        VoteIcon voteIcon3 = (VoteIcon) ViewBindings.a(view, R.id.icon_3);
                                                        if (voteIcon3 != null) {
                                                            i10 = R.id.icon_4;
                                                            VoteIcon voteIcon4 = (VoteIcon) ViewBindings.a(view, R.id.icon_4);
                                                            if (voteIcon4 != null) {
                                                                i10 = R.id.icon_5;
                                                                VoteIcon voteIcon5 = (VoteIcon) ViewBindings.a(view, R.id.icon_5);
                                                                if (voteIcon5 != null) {
                                                                    i10 = R.id.more;
                                                                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.more);
                                                                    if (fontAwesomeView != null) {
                                                                        i10 = R.id.progress;
                                                                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
                                                                        if (spinningView != null) {
                                                                            return new FeedPopupMembersBinding((LinearLayout) view, thumbImageView, thumbImageView2, thumbImageView3, thumbImageView4, thumbImageView5, frameLayout, frameLayout2, frameLayout3, frameLayout4, frameLayout5, voteIcon, voteIcon2, voteIcon3, voteIcon4, voteIcon5, fontAwesomeView, spinningView);
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
    public static FeedPopupMembersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_popup_members, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
