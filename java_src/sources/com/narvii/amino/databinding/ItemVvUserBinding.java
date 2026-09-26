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
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemVvUserBinding implements ViewBinding {

    @NonNull
    public final NVImageView avatar;

    @NonNull
    public final UserSpeakingView ripple;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemVvUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemVvUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_vv_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemVvUserBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull UserSpeakingView userSpeakingView) {
        this.rootView = frameLayout;
        this.avatar = nVImageView;
        this.ripple = userSpeakingView;
    }

    @NonNull
    public static ItemVvUserBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.avatar);
        if (nVImageView != null) {
            i10 = R.id.ripple;
            UserSpeakingView userSpeakingView = (UserSpeakingView) ViewBindings.a(view, R.id.ripple);
            if (userSpeakingView != null) {
                return new ItemVvUserBinding((FrameLayout) view, nVImageView, userSpeakingView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
