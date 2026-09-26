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
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class IncubatorMyCommunityJoinItemBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView hint;

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    public final NVImageView image;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static IncubatorMyCommunityJoinItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorMyCommunityJoinItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_my_community_join_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorMyCommunityJoinItemBinding(@NonNull FlexLayout flexLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull CommunityIconView communityIconView, @NonNull NVImageView nVImageView) {
        this.rootView = flexLayout;
        this.hint = autoSizingTextView;
        this.icon = communityIconView;
        this.image = nVImageView;
    }

    @NonNull
    public static IncubatorMyCommunityJoinItemBinding bind(@NonNull View view) {
        int i10 = R.id.hint;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.hint);
        if (autoSizingTextView != null) {
            i10 = R.id.icon;
            CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
            if (communityIconView != null) {
                i10 = R.id.image;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
                if (nVImageView != null) {
                    return new IncubatorMyCommunityJoinItemBinding((FlexLayout) view, autoSizingTextView, communityIconView, nVImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
