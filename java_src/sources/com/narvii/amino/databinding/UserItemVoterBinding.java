package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes9.dex */
public final class UserItemVoterBinding implements ViewBinding {

    @NonNull
    public final TextView address;

    @NonNull
    public final VoteIcon icon;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout userFollow;

    @NonNull
    public final ImageView userFollowIcon;

    @NonNull
    public final SpinningView userFollowProgress;

    @NonNull
    public final TextView userFollowText;

    @NonNull
    public final FontAwesomeView userRelationFollowing;

    @NonNull
    public static UserItemVoterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserItemVoterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_item_voter, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserItemVoterBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull VoteIcon voteIcon, @NonNull NicknameView nicknameView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull TextView textView2, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.address = textView;
        this.icon = voteIcon;
        this.nickname = nicknameView;
        this.userFollow = linearLayout2;
        this.userFollowIcon = imageView;
        this.userFollowProgress = spinningView;
        this.userFollowText = textView2;
        this.userRelationFollowing = fontAwesomeView;
    }

    @NonNull
    public static UserItemVoterBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        TextView textView = (TextView) ViewBindings.a(view, R.id.address);
        if (textView != null) {
            i10 = R.id.icon;
            VoteIcon voteIcon = (VoteIcon) ViewBindings.a(view, R.id.icon);
            if (voteIcon != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                if (nicknameView != null) {
                    i10 = R.id.user_follow;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.user_follow);
                    if (linearLayout != null) {
                        i10 = R.id.user_follow_icon;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.user_follow_icon);
                        if (imageView != null) {
                            i10 = R.id.user_follow_progress;
                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.user_follow_progress);
                            if (spinningView != null) {
                                i10 = R.id.user_follow_text;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.user_follow_text);
                                if (textView2 != null) {
                                    i10 = R.id.user_relation_following;
                                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.user_relation_following);
                                    if (fontAwesomeView != null) {
                                        return new UserItemVoterBinding((LinearLayout) view, textView, voteIcon, nicknameView, linearLayout, imageView, spinningView, textView2, fontAwesomeView);
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
