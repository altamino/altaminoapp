package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class UserAvatarLayoutLargeBinding implements ViewBinding {

    @NonNull
    private final UserAvatarLayout rootView;

    @NonNull
    public final UserAvatarLayout userAvatarLayout;

    @NonNull
    public static UserAvatarLayoutLargeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public UserAvatarLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserAvatarLayoutLargeBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view;
        return new UserAvatarLayoutLargeBinding(userAvatarLayout, userAvatarLayout);
    }

    @NonNull
    public static UserAvatarLayoutLargeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_avatar_layout_large, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserAvatarLayoutLargeBinding(@NonNull UserAvatarLayout userAvatarLayout, @NonNull UserAvatarLayout userAvatarLayout2) {
        this.rootView = userAvatarLayout;
        this.userAvatarLayout = userAvatarLayout2;
    }
}
