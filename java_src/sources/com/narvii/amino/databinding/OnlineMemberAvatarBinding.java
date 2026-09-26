package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class OnlineMemberAvatarBinding implements ViewBinding {

    @NonNull
    public final ImageView more;

    @NonNull
    public final NVImageView overlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final UserAvatarLayout userAvatarLayout;

    @NonNull
    public static OnlineMemberAvatarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static OnlineMemberAvatarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.online_member_avatar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private OnlineMemberAvatarBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull NVImageView nVImageView, @NonNull UserAvatarLayout userAvatarLayout) {
        this.rootView = frameLayout;
        this.more = imageView;
        this.overlay = nVImageView;
        this.userAvatarLayout = userAvatarLayout;
    }

    @NonNull
    public static OnlineMemberAvatarBinding bind(@NonNull View view) {
        int i10 = R.id.more;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.more);
        if (imageView != null) {
            i10 = R.id.overlay;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.overlay);
            if (nVImageView != null) {
                i10 = R.id.user_avatar_layout;
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) ViewBindings.a(view, R.id.user_avatar_layout);
                if (userAvatarLayout != null) {
                    return new OnlineMemberAvatarBinding((FrameLayout) view, imageView, nVImageView, userAvatarLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
