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
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes8.dex */
public final class RcmdOnboardingUserItemBinding implements ViewBinding {

    @NonNull
    public final TextView bio;

    @NonNull
    public final LinearLayout itemUser;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ImageView select;

    @NonNull
    public static RcmdOnboardingUserItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RcmdOnboardingUserItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.rcmd_onboarding_user_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RcmdOnboardingUserItemBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull NicknameView nicknameView, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.bio = textView;
        this.itemUser = linearLayout;
        this.nickname = nicknameView;
        this.select = imageView;
    }

    @NonNull
    public static RcmdOnboardingUserItemBinding bind(@NonNull View view) {
        int i10 = R.id.bio;
        TextView textView = (TextView) ViewBindings.a(view, R.id.bio);
        if (textView != null) {
            i10 = R.id.item_user;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.item_user);
            if (linearLayout != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                if (nicknameView != null) {
                    i10 = R.id.select;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.select);
                    if (imageView != null) {
                        return new RcmdOnboardingUserItemBinding((FrameLayout) view, textView, linearLayout, nicknameView, imageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
