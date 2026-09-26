package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class UserLiveBadgeLayoutBinding implements ViewBinding {

    @NonNull
    public final NVImageView liveIcon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static UserLiveBadgeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserLiveBadgeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_live_badge_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserLiveBadgeLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView) {
        this.rootView = linearLayout;
        this.liveIcon = nVImageView;
    }

    @NonNull
    public static UserLiveBadgeLayoutBinding bind(@NonNull View view) {
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.live_icon);
        if (nVImageView != null) {
            return new UserLiveBadgeLayoutBinding((LinearLayout) view, nVImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.live_icon)));
    }
}
