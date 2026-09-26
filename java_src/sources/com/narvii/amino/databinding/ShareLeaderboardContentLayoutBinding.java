package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ShareLeaderboardContentLayoutBinding implements ViewBinding {

    @NonNull
    public final NVImageView realShareLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ShareLeaderboardContentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ShareLeaderboardContentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.share_leaderboard_content_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ShareLeaderboardContentLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull NVImageView nVImageView) {
        this.rootView = flexLayout;
        this.realShareLayout = nVImageView;
    }

    @NonNull
    public static ShareLeaderboardContentLayoutBinding bind(@NonNull View view) {
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.real_share_layout);
        if (nVImageView != null) {
            return new ShareLeaderboardContentLayoutBinding((FlexLayout) view, nVImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.real_share_layout)));
    }
}
