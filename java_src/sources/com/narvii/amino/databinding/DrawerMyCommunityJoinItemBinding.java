package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class DrawerMyCommunityJoinItemBinding implements ViewBinding {

    @NonNull
    public final ImageView icon;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static DrawerMyCommunityJoinItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerMyCommunityJoinItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_my_community_join_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerMyCommunityJoinItemBinding(@NonNull FlexLayout flexLayout, @NonNull ImageView imageView) {
        this.rootView = flexLayout;
        this.icon = imageView;
    }

    @NonNull
    public static DrawerMyCommunityJoinItemBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
        if (imageView != null) {
            return new DrawerMyCommunityJoinItemBinding((FlexLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.icon)));
    }
}
