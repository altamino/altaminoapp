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
import com.narvii.widget.CircleImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes.dex */
public final class RecommendUserItemBinding implements ViewBinding {

    @NonNull
    public final CircleImageView avatarOverlay;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final ImageView recommendCheck;

    @NonNull
    public final TextView role;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static RecommendUserItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RecommendUserItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.recommend_user_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RecommendUserItemBinding(@NonNull LinearLayout linearLayout, @NonNull CircleImageView circleImageView, @NonNull NicknameView nicknameView, @NonNull SpinningView spinningView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.avatarOverlay = circleImageView;
        this.nickname = nicknameView;
        this.progress = spinningView;
        this.recommendCheck = imageView;
        this.role = textView;
    }

    @NonNull
    public static RecommendUserItemBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_overlay;
        CircleImageView circleImageView = (CircleImageView) ViewBindings.a(view, R.id.avatar_overlay);
        if (circleImageView != null) {
            i10 = R.id.nickname;
            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
            if (nicknameView != null) {
                i10 = R.id.progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
                if (spinningView != null) {
                    i10 = R.id.recommend_check;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.recommend_check);
                    if (imageView != null) {
                        i10 = R.id.role;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.role);
                        if (textView != null) {
                            return new RecommendUserItemBinding((LinearLayout) view, circleImageView, nicknameView, spinningView, imageView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
