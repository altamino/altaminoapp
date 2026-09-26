package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class LiveLayerOnlineMemberNewUserFoldBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final UserAvatarLayout userAvatarLayout;

    @NonNull
    public static LiveLayerOnlineMemberNewUserFoldBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerOnlineMemberNewUserFoldBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_online_member_new_user_fold, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerOnlineMemberNewUserFoldBinding(@NonNull FrameLayout frameLayout, @NonNull UserAvatarLayout userAvatarLayout) {
        this.rootView = frameLayout;
        this.userAvatarLayout = userAvatarLayout;
    }

    @NonNull
    public static LiveLayerOnlineMemberNewUserFoldBinding bind(@NonNull View view) {
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) ViewBindings.a(view, R.id.user_avatar_layout);
        if (userAvatarLayout != null) {
            return new LiveLayerOnlineMemberNewUserFoldBinding((FrameLayout) view, userAvatarLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.user_avatar_layout)));
    }
}
