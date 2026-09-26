package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class FollowingListLayoutBinding implements ViewBinding {

    @NonNull
    public final Button followLogin;

    @NonNull
    public final LinearLayout followLoginLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FollowingListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FollowingListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.following_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FollowingListLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull Button button, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.followLogin = button;
        this.followLoginLayout = linearLayout;
    }

    @NonNull
    public static FollowingListLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.follow_login;
        Button button = (Button) ViewBindings.a(view, R.id.follow_login);
        if (button != null) {
            i10 = R.id.follow_login_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.follow_login_layout);
            if (linearLayout != null) {
                return new FollowingListLayoutBinding((FrameLayout) view, button, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
