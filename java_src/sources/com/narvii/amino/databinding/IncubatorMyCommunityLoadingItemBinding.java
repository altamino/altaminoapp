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

/* JADX INFO: loaded from: classes10.dex */
public final class IncubatorMyCommunityLoadingItemBinding implements ViewBinding {

    @NonNull
    public final View image;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static IncubatorMyCommunityLoadingItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorMyCommunityLoadingItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_my_community_loading_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorMyCommunityLoadingItemBinding(@NonNull FlexLayout flexLayout, @NonNull View view) {
        this.rootView = flexLayout;
        this.image = view;
    }

    @NonNull
    public static IncubatorMyCommunityLoadingItemBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.image);
        if (viewA != null) {
            return new IncubatorMyCommunityLoadingItemBinding((FlexLayout) view, viewA);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image)));
    }
}
