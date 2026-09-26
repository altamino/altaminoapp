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
import com.narvii.widget.AutoScaleTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.SmoothProgressBar;

/* JADX INFO: loaded from: classes10.dex */
public final class DrawerMyCommunityItemBinding implements ViewBinding {

    @NonNull
    public final ImageView currentCommunityIndicator;

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    public final AutoScaleTextView notificationCount;

    @NonNull
    public final SmoothProgressBar progress;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static DrawerMyCommunityItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerMyCommunityItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_my_community_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerMyCommunityItemBinding(@NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull CommunityIconView communityIconView, @NonNull AutoScaleTextView autoScaleTextView, @NonNull SmoothProgressBar smoothProgressBar) {
        this.rootView = flexLayout;
        this.currentCommunityIndicator = imageView;
        this.icon = communityIconView;
        this.notificationCount = autoScaleTextView;
        this.progress = smoothProgressBar;
    }

    @NonNull
    public static DrawerMyCommunityItemBinding bind(@NonNull View view) {
        int i10 = R.id.current_community_indicator;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.current_community_indicator);
        if (imageView != null) {
            i10 = R.id.icon;
            CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
            if (communityIconView != null) {
                i10 = R.id.notification_count;
                AutoScaleTextView autoScaleTextView = (AutoScaleTextView) ViewBindings.a(view, R.id.notification_count);
                if (autoScaleTextView != null) {
                    i10 = R.id.progress;
                    SmoothProgressBar smoothProgressBar = (SmoothProgressBar) ViewBindings.a(view, R.id.progress);
                    if (smoothProgressBar != null) {
                        return new DrawerMyCommunityItemBinding((FlexLayout) view, imageView, communityIconView, autoScaleTextView, smoothProgressBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
