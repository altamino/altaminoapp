package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class UserAvatarLayoutMiniBinding implements ViewBinding {

    @NonNull
    private final UserAvatarLayout rootView;

    @NonNull
    public final UserAvatarLayout userAvatarLayout;

    @NonNull
    public static UserAvatarLayoutMiniBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public UserAvatarLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserAvatarLayoutMiniBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view;
        return new UserAvatarLayoutMiniBinding(userAvatarLayout, userAvatarLayout);
    }

    @NonNull
    public static UserAvatarLayoutMiniBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_avatar_layout_mini, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserAvatarLayoutMiniBinding(@NonNull UserAvatarLayout userAvatarLayout, @NonNull UserAvatarLayout userAvatarLayout2) {
        this.rootView = userAvatarLayout;
        this.userAvatarLayout = userAvatarLayout2;
    }
}
