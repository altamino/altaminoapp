package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class LiveLayerOnlineMemberNewUserBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final UserAvatarLayout userAvatarLayout;

    @NonNull
    public final TextView userCame;

    @NonNull
    public static LiveLayerOnlineMemberNewUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerOnlineMemberNewUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_online_member_new_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerOnlineMemberNewUserBinding(@NonNull FrameLayout frameLayout, @NonNull UserAvatarLayout userAvatarLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.userAvatarLayout = userAvatarLayout;
        this.userCame = textView;
    }

    @NonNull
    public static LiveLayerOnlineMemberNewUserBinding bind(@NonNull View view) {
        int i10 = R.id.user_avatar_layout;
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) ViewBindings.a(view, R.id.user_avatar_layout);
        if (userAvatarLayout != null) {
            i10 = R.id.user_came;
            TextView textView = (TextView) ViewBindings.a(view, R.id.user_came);
            if (textView != null) {
                return new LiveLayerOnlineMemberNewUserBinding((FrameLayout) view, userAvatarLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
