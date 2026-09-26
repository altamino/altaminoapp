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
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class CommunityDetailIconActionbarLayoutBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView actionbarCommunityIcon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static CommunityDetailIconActionbarLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommunityDetailIconActionbarLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.community_detail_icon_actionbar_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommunityDetailIconActionbarLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView) {
        this.rootView = linearLayout;
        this.actionbarCommunityIcon = thumbImageView;
    }

    @NonNull
    public static CommunityDetailIconActionbarLayoutBinding bind(@NonNull View view) {
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.actionbar_community_icon);
        if (thumbImageView != null) {
            return new CommunityDetailIconActionbarLayoutBinding((LinearLayout) view, thumbImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.actionbar_community_icon)));
    }
}
