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
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class UserItemExDarkBinding implements ViewBinding {

    @NonNull
    public final TextView address;

    @NonNull
    public final TextView aminoId;

    @NonNull
    public final TextView disabled;

    @NonNull
    public final TextView extraInfo;

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
    public final ImageView userRelationFollowing;

    @NonNull
    public static UserItemExDarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserItemExDarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_item_ex_dark, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserItemExDarkBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull NicknameView nicknameView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull TextView textView5, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.address = textView;
        this.aminoId = textView2;
        this.disabled = textView3;
        this.extraInfo = textView4;
        this.nickname = nicknameView;
        this.userFollow = linearLayout2;
        this.userFollowIcon = imageView;
        this.userFollowProgress = spinningView;
        this.userFollowText = textView5;
        this.userRelationFollowing = imageView2;
    }

    @NonNull
    public static UserItemExDarkBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        TextView textView = (TextView) ViewBindings.a(view, R.id.address);
        if (textView != null) {
            i10 = R.id.amino_id;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.amino_id);
            if (textView2 != null) {
                i10 = R.id.disabled;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.disabled);
                if (textView3 != null) {
                    i10 = R.id.extra_info;
                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.extra_info);
                    if (textView4 != null) {
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
                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.user_follow_text);
                                        if (textView5 != null) {
                                            i10 = R.id.user_relation_following;
                                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.user_relation_following);
                                            if (imageView2 != null) {
                                                return new UserItemExDarkBinding((LinearLayout) view, textView, textView2, textView3, textView4, nicknameView, linearLayout, imageView, spinningView, textView5, imageView2);
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
}
