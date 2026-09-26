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
import com.narvii.widget.AutoScrollHorizontalRecyclerView;

/* JADX INFO: loaded from: classes10.dex */
public final class IncubatorCommunitySuggestedLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout emptySuggested;

    @NonNull
    public final AutoScrollHorizontalRecyclerView gallery;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static IncubatorCommunitySuggestedLayoutBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        AutoScrollHorizontalRecyclerView autoScrollHorizontalRecyclerView = (AutoScrollHorizontalRecyclerView) ViewBindings.a(view, R.id.gallery);
        if (autoScrollHorizontalRecyclerView != null) {
            return new IncubatorCommunitySuggestedLayoutBinding(linearLayout, linearLayout, autoScrollHorizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.gallery)));
    }

    @NonNull
    public static IncubatorCommunitySuggestedLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorCommunitySuggestedLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_community_suggested_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorCommunitySuggestedLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull AutoScrollHorizontalRecyclerView autoScrollHorizontalRecyclerView) {
        this.rootView = linearLayout;
        this.emptySuggested = linearLayout2;
        this.gallery = autoScrollHorizontalRecyclerView;
    }
}
